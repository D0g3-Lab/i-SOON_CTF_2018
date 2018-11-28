<?php
session_start();
header("Content-Type:text/html;charset=utf-8");
$user="admin";
$pass="00547";
if (!isset($_POST['submit'])) {
    echo "<script>alert('hello hacker')</script>";
    exit();
}
if(isset($_POST['verifycode'])&&$_POST['verifycode'] == $_SESSION['img_number']){ 
    if(isset($_POST['username'])&&isset($_POST['password']))
    {
    	$username = $_POST['username'];
    	$password = $_POST['password'];
    	if($user==$username&&$pass==$password) {
    		echo "<script>alert('登录成功')</script>";

    		echo "<script>alert('给你flag：70e052657cb40cf142883abaff266fee')</script>";
    	}
    	else {
    		echo "<script>alert('用户名或密码错误');window.location.href='login.html'</script>";
    	}
    }
}else{
    echo "<script>alert('验证码错误');window.location.href='login.html'</script>";
}