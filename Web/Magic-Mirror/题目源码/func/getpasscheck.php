<?php
define('D0g3', 1);
require '../class/config.class.php';
require "../class/sendmail.class.php";

$_SESSION['timestamp'] = date('Ymdhis', time());
$sign = md5(md5($_SESSION['username']).$_SESSION['timestamp']);

if(strlen($_POST['username']) == 0){
    echo "<script>alert('用户名不能为空！');history.go(-1);</script>";
}else{
    $username=$_POST['username'];
    if($username!='admin'){
        echo "<script>alert('哼哼，除了admin哪有那么多用户！');history.go(-1);</script>";
    }else{
        curl_post($sign,255);
        echo "<script>alert('重置链接已发往您的邮箱...');location.href='../index.php';</script>";
        //header("Location: ./resetpassword.php?sign=".$sign."");
    }
}
?>