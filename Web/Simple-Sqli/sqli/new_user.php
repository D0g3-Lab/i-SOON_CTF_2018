
<?php
include '../sql-connections/sql-connect.php' ;
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<title><?php echo $feedback_title_ns; ?> </title>
</head>

<body bgcolor="#33CCCC">
<div align="right">
<a style="color:#FFFFFF" href='index.php'><img src="./imge/home.png" height='45'; width='45'></br>HOME</a>
</div>
<font size="3" color="#FFFF00">
<div style="text-align:center">

<form name="mylogin" method="POST" action="login_create.php">

<div align="center">
<div class="padding-top: 3.5rem;">
		<div class="container">
			<h1 style="color:#FFFFFF;">Sign up</h1>
		</div>
	</div>
<table style="margin-top:50px;">
<tr>
<td style="text-align:right">
<font size="3" color="#FFFFFF">
<strong>Desired Username:</strong></font>
</td>
	<td style="text-align:left">
		<input name="username" id="username" type="text" value="" /> 
	</td>
</tr>
<tr>
<td style="text-align:right">
<font size="3" color="#FFFFFF">
	<strong>Password:</strong>
</font>
</td>
<td style="text-align:left">
	<input name="password" id="password" type="password" value="" />
</td>
</tr>

<tr>
<td style="text-align:right">
<font size="3" color="#FFFFFF">
<strong>Retype Password:</strong>
</font>
</td>
<td style="text-align:left">
<input name="re_password" id="re_password" type="password" value="" />
</td>
</tr>




<tr>
<td colspan="2" style="text-align:right">
<input name="submit" id="submit" type="submit" value="Register" /><br/><br/>
</td>
</tr>

</table>
</div>
</form>
</div>
</body>
</html>
