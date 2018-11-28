<style>
#test1{
 color:white;
font-family:'微软不雅黑','微软雅黑','黑体',sans-serif;
}
</style>

<?php
$hosts = "localhost";
$dbusername = "test";
$dbpasswd = "";
$dbname = "test";
$dbport = 3306;
$conn = mysqli_connect($hosts,$dbusername,$dbpasswd,$dbname,$dbport);
function initdb($conn)
{
	$dbinit = "create table if not exists flag(secret varchar(100));";
	if(mysqli_query($conn,$dbinit)) return 1;
	else return 0;
}
function safe($url)
{
	$tmpurl = parse_url($url, PHP_URL_HOST);
	if($tmpurl != "localhost" and $tmpurl != "127.0.0.1")
	{
		var_dump($tmpurl);
		die("<h1><p id='test1'>You are not the local!</p></h1>");
	}
	return $url;
}
function getUrlContent($url){
	$url = safe($url);
	$url = escapeshellarg($url);
	$pl = "curl ".$url;
	echo $pl;
	$content = shell_exec($pl);
	return $content;
}
initdb($conn);
?>
