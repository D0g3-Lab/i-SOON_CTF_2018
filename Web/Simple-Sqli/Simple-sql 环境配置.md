# Simple-sql 环境配置

---

# 搭建要求
PHP版本 > 5.6  

Mysql版本 > 5.4

**数据库配置**   

创建库anxun：
```
CREATE database 'anxun'
```

创建数据表users:
```
CREATE TABLE users (id int(3) NOT NULL AUTO_INCREMENT, username varchar(20) NOT NULL, password varchar(20) NOT NULL, PRIMARY KEY (id))
```

修改sdqxld-anxunctf的配置文件：
```
<?php

//give your mysql connection username n password
$dbuser ='root';
$dbpass =''; # 数据库密码
$host = 'localhost';
$dbname = "anxun";

?>

```