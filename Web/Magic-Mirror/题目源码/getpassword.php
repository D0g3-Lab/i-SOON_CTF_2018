<?php
session_start();
?>
<html>
<head>
    <title>找回密码</title>
    <link href="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="utf-8">
</head>
<body>
<div class="container">
    <br><br><br><br><br><br><br><br>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-3 column"></div>
            <div class="col-md-6 column">
                <form class="form-horizontal" role="form" action="func/getpasscheck.php" method="POST">
                    <div class="form-group">
                        <label for="Username" class="col-sm-2 control-label">Username</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="Username" name="username"  onfocus="this.value=''" value="Input your name like admin..." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                            <button type="submit" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-3 column"></div>
        </div>
    </div>
</body>
</html>
