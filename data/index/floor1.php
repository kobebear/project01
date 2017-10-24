<?php
header("Content-Type:application/json;charset=utf-8");

require_once("./init.php");

mysqli_query($conn,"SET NAMES UTF8");
$sql="select img from doctors";
$result=sql_execute($sql);

echo json_encode($result);
// $row=mysqli_fetch_assoc($result);

// echo json_encode($row);






