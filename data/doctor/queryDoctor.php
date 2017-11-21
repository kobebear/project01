<?php
header("Content-Type:application/json");
require_once("../init.php");
$pageSize=10;
@$pno = $_REQUEST["pno"];
if(!$pno) $pno=1;

$where=[];

@$country=$_REQUEST["country"];
if(!$country) $country=["大陆"];
$where[]=" country in ('".implode("','",$country)."') ";

@$title=$_REQUEST["title"];
if(!$title) $title=[];
else
  $where[]=" title in ('".implode("','",$title)."') ";

@$qualify=$_REQUEST["qualify"];
if(!$qualify) $qualify=[];
else
  $where[]=" qualify in ('".implode("','",$qualify)."') ";

@$years=$_REQUEST["years"];
if(!$years) $years=[];
else{
  $arr=[];
  for($i=0;$i<count($years);$i++){
     if($years[$i]=="10年以上"){
       $arr[]=" years>=10 ";
     }else if($years[$i]=="4~9年"){
       $arr[]=" years>=4 and years<=9 ";
     }else if($years[$i]=="2~3年"){
       $arr[]=" years>=2 and years<=3 ";
     }else if($years[$i]=="1年以内"){
       $arr[]=" years>=0 and years<=1 ";
     }
  }
  $where[]=" (".implode(" || ",$arr).") ";
}

@$edu_level=$_REQUEST["edu_level"];
if(!$edu_level) $edu_level=[];
else
  $where[]=" edu_level in ('".implode("','",$edu_level)."') ";

if(count($where)>0)
  $where=" where ".implode(" and ",$where);
else
  $where="";

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
  "title"=>$title,
  "qualify"=>$qualify,
  "years"=>$years,
  "edu_level"=>$edu_level,
  "data"=>$rows
];

echo json_encode($output);