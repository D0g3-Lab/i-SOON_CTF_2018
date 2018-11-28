<?php
define('D0g3',1);
require "../class/config.class.php";
if($_SESSION['is_admin']!=1){
    die("<script>alert('请先登录！');location.href='../index.php'</script>");
}

$xml = file_get_contents("php://input"); //接收POST数据

libxml_disable_entity_loader(false); //开启xml外部实体解析
$data = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOENT);
if($data){
	echo "D0g3最帅的人是：" . $data->username . "<br>";
}else{
	echo "<script>location.href='./'</script>";
}
?>


