<?php
header("Content-Type:application/json");
require_once("../init.php");
$pageSize=10;
@$pno = $_REQUEST["pno"];
if(!$pno) $pno=1;

$sql = "SELECT count(*) FROM doctors";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
$count = intval($row[0]);

$offset=($pno-1)*$pageSize;

$sql="SELECT * FROM doctors limit $offset,$pageSize";
$result = mysqli_query($conn,$sql);
$rows = mysqli_fetch_all($result,1);
for($i=0;$i<count($rows);$i++){
  $doctor_id=$rows[$i]["doctor_id"];
  $sql="select skill_name from doctor_skill_rel inner join skills using(skill_id) where doctor_id=$doctor_id";
  $result=mysqli_query($conn,$sql);
  $skills=mysqli_fetch_all($result,1);
  for($j=0;$j<count($skills);$j++){
    $skills[$j]=$skills[$j]["skill_name"];
  }
  $rows[$i]["skills"]=$skills;
}
$output = [
  "recordCount"=>$count,
  "pageSize"=>$pageSize,
  "pageCount"=>ceil($count/$pageSize),
  "pno"=>1,
  "data"=>$rows
];

echo json_encode($output);