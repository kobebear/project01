<?php
header("Content-Type:application/json");
require_once("../init.php");
$pageSize=10;
@$pno = $_REQUEST["pno"];
if(!$pno) $pno=1;

$where=[];

@$country=$_REQUEST["country"];
if(!$country) $country="大陆";
$where[]=" country in ['".implode("','",$country)."'] ";

@$title=$_REQUEST["title"];
if(!$title) $title=0;
else
  $where[]=" title in ['".implode("','",$title)."'] ";

@$qualify=$_REQUEST["qualify"];
if(!$qualify) $qualify=0;
else
  $where[]=" qualify in ['".implode("','",$qualify)."'] ";

@$year=$_REQUEST["year"];
if(!$year) $year=0;
else if($year=="10年以上")
  $where[]=" year>=10 ";
else if($year=="4~9年")
  $where[]=" year>=4 and year<=9 ";
else if($year=="2~3年")
  $where[]=" year>=2 and year<=3 ";
else if($year=="1年以内")
  $where[]=" year<=1 ";

@$edu_level=$_REQUEST["edu_level"];
if(!$edu_level) $edu_level=0;
else
  $where[]=" edu_level in ['".implode("','",$edu_level)."'] ";

if(count($where)>0)
  $where=" where ".implode(" and ",$where);
else
  $where="";

var_dump($where);
$sql = "SELECT count(*) FROM doctors $where";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
$count = intval($row[0]);

$offset=($pno-1)*$pageSize;

$sql="SELECT * FROM doctors $where limit $offset,$pageSize";
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
  "country"=>$country,
  "title"=>0,
  "qualify"=>0,
  "year"=>0,
  "edu_level"=>0,
  "data"=>$rows
];

echo json_encode($output);