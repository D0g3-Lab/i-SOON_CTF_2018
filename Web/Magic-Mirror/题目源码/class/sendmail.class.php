<?php
if(!defined('D0g3')){header("Location: ../index.php");}

function curl_post($data, $timeout){
    $host=$_SERVER['HTTP_HOST'];
    $file = 'resetpassword.php';
    $refer = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    //echo 'http://' . $host . '/' . $file;
    if(get_extension_funcs('curl')&&function_exists('curl_init')&&function_exists('curl_setopt')&&function_exists('curl_exec')&&function_exists('curl_close')) {
        $curlHandle = curl_init();
        curl_setopt($curlHandle, CURLOPT_URL, 'http://' . $host . '/' . $file.'?sign='.$data);
        curl_setopt($curlHandle, CURLOPT_REFERER, $refer);
        curl_setopt($curlHandle, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curlHandle, CURLOPT_CONNECTTIMEOUT, $timeout);
        curl_setopt($curlHandle, CURLOPT_TIMEOUT, $timeout);
//        curl_setopt($curlHandle, CURLOPT_POST, 1);
//        curl_setopt($curlHandle, CURLOPT_POSTFIELDS, $post);
        $result = curl_exec($curlHandle);
        curl_close($curlHandle);
    }
}