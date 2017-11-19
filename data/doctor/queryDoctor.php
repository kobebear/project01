<?php
header("Content-Type:application/json");
require_once("../init.php");

@$pno = $_REQUEST["pno"];
if(!$pno){
 $pno = 1;
}else{
 $pno = intval($pno);
}

@$pageSize = $_REQUIRE["pageSize"];
if(!$pageSize){
 $pageSize = 8;
}else{
 $pageSize = intval($pageSize);
}

$offset = ($pno-1)*$pageSize;


$sql="SELECT * FROM dairy_info";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);


$sql = "SELECT count(*) FROM dairy_info";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
$count = intval($row[0]);


$pageCount = ceil($count/$pageSize);


$output = [
  "recordCount"=>$count,
  "pageSize"=>$pageSize,
  "pageCount"=>$pageCount,
  "pno"=>$pno,
  "data"=>$rows
];

echo json_encode($output);