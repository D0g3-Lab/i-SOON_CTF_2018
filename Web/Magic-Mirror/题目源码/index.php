<?php
session_start();

if(!isset($_SESSION['username'])){
    $_SESSION['username'] = randomname();
}

function randomname(){
    $len=6;
    $dic='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    mt_srand((double)microtime()*1000000*getmypid());
    $rname='';
    while (strlen($rname)<$len)
    {
        $rname .= substr($dic,(mt_rand()%strlen($dic)),1);
    }
    return $rname;
}

?>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <title>Hi D0g3</title>
        <link href="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="static/js/jquery_for_login.js"></script>
        <script src="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>
<style>
 body{
  background-image: url("./static/images/bg.png");
  background-position: center 0;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  -webkit-background-size: cover;
  -o-background-size: cover;
  -moz-background-size: cover;
  -ms-background-size: cover;
}
</style>
</head>
<body>

<div class="container">
        <div class="view">
                <!-- Button to trigger modal -->
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
              	 <div align="center">
			 <a id="loginLink" href="#usrlogin" data-toggle="modal"><img src="./static/images/click.png" height="250" width="400"></a>
		</div>
                <!-- Modal -->
                <div class="modal fade" id="usrlogin" tabindex="-1" role="dialog" aria-labelledby="loginlabel" aria-hidden="true">
                        <div class="modal-dialog">
                                <div class="modal-content">
                                        <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                                                <h4 class="modal-title" id="myModalLabel" contenteditable="true">D0g3 login</h4>
                                        </div>
                                        <div class="modal-body" contenteditable="false">
                                                <form role="form" action="func/logincheck.php" method="POST">
                                                        <div class="form-group">
                                                            <label for="Username">Username</label><input type="text" class="form-control" id="Username" name="username" value=""/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Password">Password</label><input type="password" class="form-control" id="Password" name="password" value=""/>
                                                        </div>
                                                        <div align="right"><a href="./getpassword.php">忘记密码</a></div>
                                                        <button type="submit" class="btn btn-default">登    陆</button>
                                                </form>
                                        </div>
                                </div>
                                <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

        </div>
</div>

</body></html>
