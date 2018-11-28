<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<title>eazy-sql</title>
</head>
<body bgcolor="#33CCCC">

<?php


//including the Mysql connect parameters.
include("../sdqxld-anxunctf/sql-connect.php");
error_reporting(0);
if(!isset($_COOKIE['uname']))
{
	?>
	<div align="right">
	<a style="color:#FFFFFF" href='index.php'><img src="./imge/home.png" height='45'; width='45'></br>HOME</a>
	</div>
	<div style="text-align:center">
	<form name="login" method="POST" action="index.php">
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top"></nav>
	<div class="padding-top: 3.5rem;">
		<div class="container">
			<h1 style="color:#FFFFFF;">Sign in</h1>
		</div>
	</div>

	<div align="center">
	<table style="margin-top:50px;">
	<tr>
	<td style="text-align:right">
	<font size="3" color="#FFFFFF">
	<strong>Username:</strong>
	</td>
	<td style="text-align:left">
	<input name="uname" id="login_user" type="text" value="" />
	</td>
	</tr>
	<tr>
	<td style="text-align:right">
	<font size="3" color="#FFFFFF">
	<strong>Password:</strong>
	</td>
	<td style="text-align:left">
	<input name="passwd" id="login_password" type="password" value="" />
	</td>
	</tr>
	<tr>
	<td colspan="2" style="text-align:right">
	<input name="mysubmit" id="mysubmit" type="submit" value="Login" /><br/><br/>
	<a style="font-size:.8em;color:#FFFFFF" href="hint.php">Hint</a><font size="3" color="#FFFFFF">
||</font>
	<a style="font-size:.8em;color:#FFFFFF" href="new_user.php">New User</a>
	</td>
	</tr>

	</table>
	</div>
	</form>
	</div>
	<?php
	function check_input($value)
	{
	if(!empty($value))
		{
		$value = substr($value,0,20); // truncation (see comments)
		}
		if (get_magic_quotes_gpc())  // Stripslashes if magic quotes enabled
			{
				echo 1;
			$value = stripslashes($value);
			}
		if (!ctype_digit($value))   	// Quote if not a number
			{
				echo 2;
			$value = "'" . mysqli_real_escape_string($value) . "'";
			}
	else
	{
		$value = intval($value);
	}
	return $value;
	}


	
	echo "<br>";
	echo "<br>";
	
	if(isset($_POST['uname']) && isset($_POST['passwd']))
	{
	
		$uname = mysqli_real_escape_string($con, $_POST['uname']);
		$passwd = mysqli_real_escape_string($con, $_POST['passwd']);
		
	

		
		$sql="SELECT  username, password FROM users WHERE username='$uname' and password='$passwd'";
		$result1 = mysqli_query($con, $sql);
		$row1 = $result1->fetch_row();
		$cookee = $row1[0];
		echo $cookee;
			if($row1[0])
			{
				
				echo '<font color= "#FFFF00" font size = 3 >';
				setcookie('uname', base64_encode($cookee), time()+3600);	
				header ('Location: index.php');
				echo "</font>";	
				echo "</font>";
				echo "<br>";
				print_r(mysqli_error()); // 报错	
			}
			else
			{
				print_r(mysqli_error()); // 报错
				?>
				<center>
				<h1 style="color:#FFFFFF;">GET OUT <br> SILLY MAN</h1>
				</center>
				<?php
			}
		}

			echo "</font>";  
	echo '</font>';
	echo '</div>';

}
else
{

	if(!isset($_POST['clean']))
	{
			
			$cookee = base64_decode($_COOKIE['uname']);
			//$cookee = $_COOKIE['uname'];
			$format = 'D d M Y - H:i:s';
			$timestamp = time() + 3600;
			echo "<center>";
			echo '<br><br><br>';
			echo "<br><br><b>";
			echo '<br>';
			echo "<br>";			
			echo "<br>";
			
			$Blacklist=array("select","union");
			foreach ($Blacklist as $banword)
			{
				$cookee = str_replace($banword,"/**/",$cookee);
			}
			//echo $cookee.'<br>';
			$sql="SELECT * FROM users WHERE username='$cookee'";
			$result=mysqli_query($con, $sql);
			if (!$result)
  			{
				
				print_r(mysqli_error($con))."<br>";
				?>
				<center>
				<h1 style="color:#FFFFFF;">Bad <br> Request</h1>
				</center>
				<?php
				echo '<center>';
				echo '<form action="" method="post">';
				echo '<input  type="submit" name="clean" value="Return" />';
				echo '</form>';
				echo '</center>';
  				die();
  			}
			$row = $result->fetch_row();
			if($row)
			{
			  	echo '<font color= "#FFFFFF" font size="7">';	
			  	echo 'Welcome '.$cookee;
			}
			else	
			{
				print_r(mysqli_error())."<br>";
				?>
				<center>
				<h1 style="color:#FFFFFF;">GET OUT <br> SILLY MAN</h1>
				</center>
				<?php
			}
			echo '<center>';
			echo '<form action="" method="post">';
			echo '<input  type="submit" name="clean" value="Quit login" />';
			echo '</form>';
			echo '</center>';
		}	
	else
	{
		echo '<center>';
		echo "<br>";
		echo "<br>";
		echo "<br>";
		echo "<br>";
		echo "<br>";
		echo "<br>";
		echo '<font color= "#FFFF00" font size = 6 >';
		echo " Your Cookie is deleted";
				setcookie('uname', $row1['username'], time()-3600);
				header ('Location: index.php');
		echo '</font></center></br>';
		
	}			
}
?>

</body>
</html>
