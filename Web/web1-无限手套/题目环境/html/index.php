<?php
require('./inc/mysqli.php');
?>
<html lang="en" >
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-with, initial-scale=1.0">
		<title>Infinite gloves Background</title>
		<link rel="stylesheet" href="css/style.css">


	</head>

	<body>
		<div id="container"></div>
		<script src='js/three.min.js'></script>
		<script src='js/CopyShader.js'></script>
		<script src='js/EffectComposer.js'></script>
		<script src='js/FilmPass.js'></script>
		<script src='js/FilmShader.js'></script>
		<script src='js/ShaderPass.js'></script>
		<script src='js/RenderPass.js'></script>
		<script src="js/index.js"></script>

		<div id =main>
			<h1 >Infinite gloves</h1>
			<?php
				$NOHO=isset($_GET['NOHO'])?$_GET['NOHO']:die('<p>Parameter NOHO:The Number Of Higher Organisms</p>');
				if ($NOHO<7400000000)
					die('<p>Infinite gloves AI:Obviously,The Number of higher organisms is too small!!<p>');
				else{
					if (@strlen($NOHO)>2)
						die('<p>Infinite gloves AI:The lenth of entered number is too long(>2).<p>');
				}
				if (isset($_POST['password'])) {
					$r = @mysqli_query($con,"SELECT master FROM secret WHERE password = binary '" . md5($_POST['password'], true) . "'");
					echo "<!--SELECT master FROM secret WHERE password = binary '" . md5($_POST['password'], true) . "'"."-->";

					if (@mysqli_num_rows($r) < 1)
						echo "<p>You are not Thanos!!</p>";
					else {
						$row = @mysqli_fetch_assoc($r);

						$login = $row['master'];
						echo "<p>Hi <b>$login</b>!<br/></p>";
						echo "<table border=1 style='margin:auto'><tr><th>suspend code</th></tr>";
						mysqli_free_result($r);
						$r = @mysqli_query($con,"SELECT suspend_code FROM secret");
						while ($row = @mysqli_fetch_assoc($r))
							echo "<tr><td>{$row['suspend_code']}</td></tr>";
						echo "</table>";
						mysqli_free_result($r);
						mysqli_close($con);
					}
				}
				else {
			?>
					<form name=pwdFrom action="" method="post">
						<p>Don't forget your password, Thanos!</p><br/><br/>
						<input type='text' name='password'/>
						<input type='submit' value='go'"/>
					</form>
			<?php
				}
			?>
			<p id=foot><br/><small>by D0g3-Zev3n </small></p>
		</div>
	</body>
</html>
