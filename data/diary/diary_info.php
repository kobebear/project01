<?php
 header("Content-Type:application/json");
 require_once("../init.php");
 $pageSize=8;

 @$pno = $_REQUEST["pno"];
 if(!$pno) $pno=1;

$sql = "SELECT count(*) FROM dairy_info";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);//??
$count = intval($row[0]);
$pageCount=ceil($count/$pageSize);

$offset=($pno-1)*$pageSize;

$sql="SELECT days,after_pic,before_pic,detailsInfo.title as project, hospital, doctor_name FROM dairy_info inner join detailsInfo on detail_id=iid inner join doctors using(doctor_id) limit $offset,$pageSize";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,1);

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