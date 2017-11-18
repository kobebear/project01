<?php
header("Content-Type:application/json");
require_once("init.php");

@$pno = $_REQUEST["pno"];
if(!$pno){
 $pno = 1;//???????
}else{
 $pno = intval($pno);
}

@$pageSize = $_REQUIRE["pageSize"];
if(!$pageSize){
 $pageSize = 8; //??????8???
}else{
 $pageSize = intval($pageSize);
}

//1.2 ???????????? $offset
$offset = ($pno-1)*$pageSize;
//2:???????

$sql="SELECT title,content FROM detailsinfo";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,MYSQLI_ASSOC);

//8??????????
$sql = "SELECT count(*) FROM detailsinfo";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);//??
$count = intval($row[0]);

//9: ???????????
$pageCount = ceil($count/$pageSize);


$output = [
  "recordCount"=>$count,   //????
  "pageSize"=>$pageSize,   //???
  "pageCount"=>$pageCount, //???
  "pno"=>$pno,             //????
  "data"=>$rows            //?????
];
//11:??
echo json_encode($output);