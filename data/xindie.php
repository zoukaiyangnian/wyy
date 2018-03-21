<?php
header("Content-Type:application/json");
require("init.php");
@$t_genre=$_REQUEST["t_genre"];
if($t_genre==null||$t_genre=="全部"){
    $sql="select * from table_tray";
}else{
    $sql="select * from table_tray where t_genre='$t_genre'";
}
#echo $sql;
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