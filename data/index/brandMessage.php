<?php
header("Content-Type:application/json;charset=utf-8");
require("../init.php");

$sql="SELECT title,brandMessage as msg,bg, (SELECT img FROM device_pic WHERE href=id limit 1) as img1, (SELECT img FROM device_pic WHERE href=id limit 1,1) as img2 FROM brand_message
";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));