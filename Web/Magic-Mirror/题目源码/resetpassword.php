<?php
session_start();
?>
<html>
<head>
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
                <form class="form-horizontal" role="form" action="func/resetpasscheck.php?sign=<?php if(isset($_GET['sign'])){echo htmlentities($_GET['sign']);}else{echo '';};?>" method="POST">
                    <div class="form-group">
                        <label for="Password">&nbsp; &nbsp; Set your new password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="Password" name="password" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-0 col-sm-10">
                            <button type="submit" class="btn btn-default">提    交</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-3 column"></div>
        </div>
    </div>
</body>
</html>



