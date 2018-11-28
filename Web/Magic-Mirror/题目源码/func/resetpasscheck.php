<?php

define('D0g3', 1);
require "../class/config.class.php";


$sign_usr=$_GET['sign'];
$sign = md5(md5($_SESSION['username']).$_SESSION['timestamp']);

if(isset($sign_usr)) {
    if ($sign != $sign_usr) {
        echo "<script>alert('校验失败！');location.href='../index.php';</script>";
    } else {
        $username=$_SESSION['username'];
        if(isset($_POST['password'])){
            $password=$_POST['password'];
            if(strlen($password)<6){die("<script>alert('密码长度不小于6！');history.go(-1);</script>");}
        }else{
            die("<script>alert('密码不能为空！');history.go(-1);</script>");
        }
        resetuser($username, $password);
        echo "<script>alert('密码已重置！');location.href='../index.php';</script>";
    }
}else{
    echo "<script>alert('校验失败！');location.href='../index.php';</script>";
}

function resetuser($username, $password){
    global $db;
    $con = mysqli_connect($db['host'],$db['username'],$db['password']);
    if (!$con)
    {
        die('Could not connect');
    }
    mysqli_select_db($con, $db['dbname']);
    $sql = "select * from d0g3_users where username='".$username."'";
    $obj = mysqli_query($con, $sql);
    $res = mysqli_fetch_assoc($obj);
    if($res){
        $sql="update d0g3_users set password='".encrypt($password)."' where username='".$username."'";
    }else{
        $sql="insert into d0g3_users (username, password) values ('".$username."','".encrypt($password)."')";
    }
    mysqli_query($con, $sql);
    mysqli_close($con);
}

?>
