<?php
define('D0g3',1);
require "../class/config.class.php";

if($_SESSION['is_admin']!=1){
    die("<script>alert('请先登录！');location.href='../index.php'</script>");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>最最诚实的魔镜</title>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<br><br>
		<center><img src="../static/images/logo.jpg" width="250" height="250"></center>
		<br><br><br>
		<div class="col-md-3 column"></div>
		<div class="col-md-6 column">
			<form role="form" id="welcome" name="information">
				<div class="form-group">
					 <label for="handsomeboy">看着我的眼睛，D0g3谁最帅?</label><input type="text" class="form-control" ="handsomeboy" name="username"/>
				</div>
				<button id="post" class="btn btn-default">我来猜猜</button>
			</form>
			<center><div id="res"></div></center>
		</div>
		<div class="col-md-3 column"></div>
	</div>
</div>
	
</body>
</html>

<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<script>
function form2XML(obj){
	let iForm = document.getElementById(obj);
	let tmp = '';
	//获取所有type为'text'的input
	let aInput = Array.from(iForm.getElementsByTagName('input')).filter(x => x.type == 'text');
	for(v of aInput){
		let tagName = tagValue = '';
		tagName = v.name;
		tagValue = v.value;
		let tTag = `<${tagName}>${tagValue}</${tagName}>`;
		tmp += tTag;
	}
	let outXML = '<' +iForm.name + '>' + tmp + '</' + iForm.name + '>';
	return outXML;
}
</script>

<script>
//发送XML请求
const post_btn = document.getElementById('post');
post_btn.onclick = function(){
	$.ajax({
		url: "/admin/server.php",
		data: form2XML('welcome'),
		type: 'POST',
		contentType: "text/xml",
		dataType: "text",
		success : function(data){
			document.getElementById("res").innerHTML=data;
		},
		error : function(xhr, ajaxOptions, thrownError){
			console.log(xhr.status);
			console.log(thrownError);
		}
	});
	return false;
}


</script>

