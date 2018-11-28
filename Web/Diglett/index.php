<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Search Something</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Simple Signin Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
	<?php
	include_once "config.php";
	if (isset($_POST['url'])&&!empty($_POST['url']))
	{
		$url = $_POST['url'];
		if(preg_match('/file/',$url))
		{
		     echo "No hacker!";
		     echo "</br>";
		}
		$url2 = preg_replace('/file/','',$url);
		$content_url = getUrlContent($url2);
	}
	else
	{
		$content_url = "";
	}
	if(isset($_GET['hu3debug']))
	{
		show_source(__FILE__);
	}
	?>

	<!--header-->
	<div class="header-w3l">
		<h1>
			He<span>l</span>llo Ha<span>c</span>ker <span>!</span>!
		</h1>
	</div>

	<!--//header-->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<h2>Search Something</h2>
			<form action="index.php" method="post">
				<div class="pom-agile">
					<span class="fa fa-user-o" aria-hidden="true"></span>
					<input placeholder="Search Something" name="url" class="user" type="text" required="">
				</div>
				<div class="sub-w3l">
					<div class="sub-agile">
					</div>
					<div class="clear"></div>
				</div>
				<div class="right-w3l">
					<input type="submit" value="CURL">
				</div>
			</form>
		</div>
	</div>

	<?php 
	echo $content_url;
	?>
	<!--//main-->
	<!--footer-->

	<div class="footer">
		<p>&copy; 2018 All rights reserved | Design by Hu3sky</a>
		</p>
	</div>
	<!--//footer-->
</body>

</html>









































































































































































































































<!-- index.php?hu3debug=1-->
</body>
