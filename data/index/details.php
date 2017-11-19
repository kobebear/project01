<?php
header("Content-Type:application/json");
require_once("../init.php");
@$title=$_REQUEST["title"];
$sql="SELECT title,content FROM be_product_details where title='$title'";
$result=json_encode(sql_execute($sql));
echo $result;