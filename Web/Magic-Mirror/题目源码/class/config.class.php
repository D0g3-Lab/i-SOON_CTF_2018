<?php
error_reporting(0);
session_start();
header("Content-Type: text/html;charset=utf-8");
if(!defined('D0g3')){header("Location: ./index.php");}


$db = array(
    'host' => 'localhost',
    'username' => 'root',
    'password' => 'd0g3root123',
    'dbname' => 'd0g3',
);

function encrypt($str){
    $salt="D0g3w1mpsandtimes0nghhh";
    $str=md5(md5($str).$salt);
    return $str;
}


