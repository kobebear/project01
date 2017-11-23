<?php
header("Content-Type:application/json;charset=utf-8");

require_once("../init.php");

$sql="select * from case_pic";
$result=sql_execute($sql);

echo json_encode($result);