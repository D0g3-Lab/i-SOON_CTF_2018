打开主页，提示`Parameter NOHO:The Number Of Higher Organisms`，尝试在url中添加NOHO参数，提示`Infinite gloves AI:Obviously,The Number of higher organisms is too small!!` 
尝试输入较大的数字，如`9999999999999999`、`9e9`等,提示`Infinite gloves AI:The lenth of entered number is too long(>2).`
了解或尝试可以发现php中数组恒大于整数，传入`?NOHO[]=`即可绕过验证。
输入框提示验证密码，尝试输入1，发现在注释中输出了sql语句`<!--SELECT master FROM secret WHERE password = binary '��B8��#�
�P�ou��'-->`,末尾为hex数据，抓包后发现数据为`c4ca4238a0b923820dcc509a6f75849b`恰好是`MD5('1')`的值，可猜测后台语句为`SELECT master FROM secret WHERE password = binary`**`MD5(password)`**
看似好像无法注入，但*password*可控，所以*MD5(password)* 可控，相当于`WHERE password =`后面可控，明显是可以注入的。
写个php脚本爆破，使MD5后的hex数据刚好含有`'='`的hex值(`273D27`),即可使查询返回true。
分析：此时语句变成了`SELECT master FROM secret WHERE password = 'BBB'='CCC'`，假设password='AAA'，那么在执行sql查询的时候，语句的优先级是这样的：`('AAA'='BBB')='CCC'`
很明显`'AAA'`不等于`'BBB'`，所以`'AAA'='BBB'`返回`0`，语句变成了`0='CCC'`,当这里的数字和字符串比较的时候，Mysql会将字符串转换为数字，这里的`'CCC'`被转换为`0`,`0=0`为真返回1，最后成功构造闭合sql语句，使查询返回true，进入后台拿到suspend code，即flag