<?php
header("Content-Type:application/json");
require_once("init.php");
$sql="SELECT title,content FROM detailsinfo";
echo json_encode(sql_execute($sql));















?>