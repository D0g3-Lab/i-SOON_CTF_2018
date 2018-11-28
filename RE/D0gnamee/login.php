<?php  
/*
*用户登录，服务器进行的处理
*/error_reporting(E_ALL^E_NOTICE^E_WARNING);
	$getid=$_POST['uid'];//客户端post过来的用户名
	$getpwd=$_POST['pwd'];//客户端post过来的密码
	$getisvip=$_POST['isvip'];
  
	if($getid==='D0gnamee'){
		//存在该用户
		if($getpwd==='L8ofiemm'){
			//用户名密码匹配正确

			$back['status']="1";
			if($getisvip==0)
			{
			$back['info']="login success but not vip";
			$back['talbe']="aXN2aXA9MCBvciBpc3ZpcD03MTMz";
			}
			else if($getisvip==7133)
			{
			$back['info']="JqCC3gLvSgGhHa0MwqTby83NmvkkrTKtULGMonWRKOnnRvBnGfaF8hKea6BkZOnnwi7C1hUXKFu4gSh3xs9E9IMN7W0WmZayxqfzSuo90egGgcutZQ7RkRHT9F9X0ovdIsH+OlA2tjBMh4ulPcwGFsEjeO+HpgVGXSWWjxbycAc=";
			}
			else
			{
				$back['info']="login success but vipkey not ture";
			}
			echo(json_encode($back)); 
		}else{/*密码错误*/
			$back['status']="-2";
			$back['info']="password error";
			echo(json_encode($back)); 
		}
 
	}else{
		//不存在该用户
		$back['status']="-1";
		$back['info']="user not exist";
		echo(json_encode($back)); 
	}
         
?> 