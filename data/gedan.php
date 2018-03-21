<?php
header("Content-Type:application/json");
require("init.php");
@$m_genre=$_REQUEST["m_genre"];

if($m_genre==null||$m_genre=="全部"){
    $sql="select * from table_music";
}else{
    $sql="select * from table_music where m_genre='$m_genre'";
}

$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
$count=count($data);

@$pageNo=$_REQUEST["pageNo"];
if($pageNo==null) $pageNo=1;
@$pageSize=$_REQUEST["pageSize"];
if($pageSize==null) $pageSize=20;
$sql.=" limit ".($pageNo-1)*$pageSize.",$pageSize ";
$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
$pageCount=ceil(($count/$pageSize));
#echo $pageCount;
$output=[
	"pageNo"=>$pageNo,
	"pageSize"=>$pageSize,
	"count"=>$count,
	"pageCount"=>$pageCount,
	"data"=>$data
];
echo json_encode($output);