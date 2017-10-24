<?php

header("Content-Type:text/plain");
require_once("./init.php");

@$u=$_REQUEST["uname"];
@$p=$_REQUEST["upwd"];
@$v=$_REQUEST["vcode"];
@$code=$_REQUEST["code"];

$uParttern="/[a-z0-9]{3,12}/";
$pParttern="/[a-z0-9]{3,12}/";
$vParttern="/[a-z0-9]{4}/";

if(!preg_match($uPattern,$u)){
	echo '{"code":-2,"msg":"用户名格式不对，必须是3-12位的字母或数字!"}';
	exit;
}
if(!preg_match($pPattern,$p)){
	echo '{"code":-2,"msg":"密码格式不对,必须是3-12位的字母或数字!"}';
	exit;
}
if(!preg_match($pPattern,$p)){
	if(!$preg_match($pPattern,$p)){
		echo '{"code":-2,"msg":"密码格式不对，必须是3-12 位的数字或字母!"}';
		exit;
	};
	if($v>4){
	@$sessionfailcount=$_SESSION["failcount"];
		if($sessionfailcount!=$code){
			echo '{"code":-3,"msg":"验证码错误"}';
			exit;
		}
	}
}

$sql="select * from xz_p_user";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($row!=null){
	$uid=$row[uid];
	echo '{"code":1,"msg":"欢迎登录"}';
	exit;
}else{
	echo '{"code":-2,"msg":"用户名密码错误"}';
};
