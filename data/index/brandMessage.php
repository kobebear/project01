<?php
header("Content-Type:application/json;charset=utf-8");
require("init.php");
@$pid=$_REQUEST["pid"];

mysqli_query($conn,"SET NAMES UTF8");

//图片
$sql="SELECT img FROM device_pic WHERE href=$pid";
$result=mysqli_query($conn,$sql);
$image=mysqli_fetch_all($result,MYSQLI_ASSOC);

//文字
$sql="SELECT title,brandMessage FROM brand_message WHERE id=$pid";
$result=mysqli_query($conn,$sql);
$text=mysqli_fetch_all($result,MYSQLI_ASSOC);

$output=[
    "title"=>$text[0]["title"],
    "msg"=>$text[0]["brandMessage"],
    "img1"=>$image[0]["img"],
    "img2"=>$image[1]["img"]
];
echo json_encode($output);
?>