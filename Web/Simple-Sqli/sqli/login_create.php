<html>
<head>
</head>
<body bgcolor="#33CCCC">
<?PHP
session_start();
?>
<div align="right">
<a style="color:#FFFFFF" href='index.php'><img src="./imge/home.png" height='45'; width='45'></br>HOME</a>
</div>
<?php

//including the Mysql connect parameters.
include("../sdqxld-anxunctf/sql-connect.php");



if (isset($_POST['submit']))
{
	
# Validating the user input........

	//$username=  $_POST['username'] ;
	$username=  mysqli_real_escape_string($con, $_POST['username']);
	$pass= mysqli_real_escape_string($con, $_POST['password']);
	$re_pass= mysqli_real_escape_string($con, $_POST['re_password']);
	
	echo "<font size='3' color='#FFFFFF'>";
	$sql = "select count(*) from users where username='$username'";
	$res = mysqli_query($con, $sql) or die('You tried to be smart, Try harder!!!! :( ');
	
  	$row = $res-> fetch_row();
	
	//print_r($row);
	if (!$row[0]== 0) 
	{
	?>
	<script>alert("The username Already exists, Please choose a different username ")</script>
	<?php
	header('refresh:1, url=new_user.php');
	} 
	else 
	{
		if ($pass === $re_pass)
		{
			# Building up the query........
			
			$sql = "insert into users ( username, password) values('$username', '$pass')";
			mysqli_query($con, $sql) or die('Error Creating your user account,  : '.mysql_error());
				echo "</br>";
				echo "<center><font size='3' color='#FFFFFF'>";   				
				echo "<h1>User Created Successfully</h1>";
				echo "</br>";
				echo "</br>";
				echo "</br>";					
				header('refresh:2, url=index.php');
		}
		else
		{
		?>
		<script>alert('Please make sure that password field and retype password match correctly')</script>
		<?php
		header('refresh:1, url=new_user.php');
		}
	}
}



?>

</body>
</html>
