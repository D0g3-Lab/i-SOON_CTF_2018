<?php
define('D0g3', 1);
require '../class/config.class.php';

$username=$_SESSION['username'];
if(strlen($_POST['password'])!=0 && strlen($_POST['username'])!=0 ){
    if($_POST['username'] != 'admin'){die("<script>alert('用户名或密码错误！');history.go(-1);</script>");}
    $password=$_POST['password'];
    $res = querycheck($username, $password);
    //var_dump($res);
    if($res){
        //echo "Login ok";
        $_SESSION['is_admin'] = 1;
        die("<script>location.href='../admin/'</script>");
    }else{
        die("<script>alert('用户名或密码错误！');history.go(-1);</script>");
    }
}else{
    die("<script>alert('用户名或密码不能为空！');history.go(-1);</script>");
}

//var_dump(encrypt($username.'D0g3adminpasswordhhhhhhyeah')); //初始密码

function querycheck($username, $password){
    global $db;
    $con = mysqli_connect($db['host'],$db['username'],$db['password']);
    if (!$con)
    {
        die('Could not connect');
    }
    mysqli_select_db($con, $db['dbname']);
    $sql = "select * from d0g3_users where username='".$username."' and password='".encrypt($password)."'";
    $obj = mysqli_query($con, $sql);
    $res = mysqli_fetch_assoc($obj);
    mysqli_close($con);
    return $res;
}

?>