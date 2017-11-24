<?php
header("Content-Type:application/json;charset=utf-8");

require_once("../init.php");

mysqli_query($conn,"SET NAMES UTF8");
$sql="select * from case_pic";
$result=sql_execute($sql);

echo json_encode($result);