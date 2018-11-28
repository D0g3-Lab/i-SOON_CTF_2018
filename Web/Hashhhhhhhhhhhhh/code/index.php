<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hash!!!!!!!!!!!!!!</title>

    <link rel="stylesheet" type="text/css" href="login.css"/>
    <script type="text/javascript" src="login.js"></script>
</head>

<body>
<div id="login_frame">

    <p id="image_logo"><img src="./5b9378631cc0c.png" width="200"></p>

    <form name="form1" method="post" action="index.php">
        用户登录<br>
        Username:
        <input name="username" type="text" id="username"><br>
        Password:
        <input name="password" type="password" id="password"><br>
        <input name="submit" type="submit" value="submit">
    </form>
</div>

</body>

<?php
/**
 * Created by PhpStorm.
 * User: Patrilic
 * Date: 2018/10/29
 * Time: 10:03
 */

@error_reporting(0);

$flag = "AXCTF{h4sh_1s_s0_diffic1ut_t0_me}";
$secret_key = "patrilic_is_good"; // the key is safe! no one can know except me

$username = $_POST["username"];
$password = $_POST["password"];

if (!isset($username) || !isset($password)) {
    die("请输入用户名和密码");
}

if (!empty($_COOKIE["getflag"])) {
    if (urldecode($username) === "D0g3" && urldecode($password) != "D0g3") {
        if ($_COOKIE["getflag"] === md5($secret_key . urldecode($username . $password))) {
            echo "Great! You're in!\n";
            die ("<!-- The flag is ". $flag . "-->");
        }
        else {
            die ("Go out! Hacker!");
        }
    }
    else {
        die ("LEAVE! You're not one of us!");
    }
}

setcookie("hash_key", md5($secret_key . urldecode("D0g3" . "D0g3")), time() + (60 * 60 * 24 * 7));

if (empty($_COOKIE["source"])) {
    setcookie("source", 0, time() + (60 * 60 * 24 * 7));
}
else {
    if ($_COOKIE["source"] != 0) {
        readfile("./source_code.txt");
    }
}

if ($username !== md5('D0g3') || $password !== sha1('D0g3')) {
    header('locaton:./index.php');
} else {
    header('locaton:./index.php');
}



