<?php
header("Content-Type:application/json");
require("../init.php");
@$pname=$_REQUEST["pname"];
if($pname==null){
	$sql="select title,lid,product_code,fname from jf_exercise_equipment x,jf_exercise_equipment_family y where x.fid=y.fid;";
	$result=mysqli_query($conn,$sql);
    $data=mysqli_fetch_all($result,1);
    $count=count($data);
    @$pageNo=$_REQUEST["pageNo"];
    if($pageNo==null) $pageNo=1;
    @$pageSize=$_REQUEST["pageSize"];
    if($pageSize==null) $pageSize=16;
    $sql="select * from jf_exercise_equipment x,jf_exercise_equipment_family y,jf_pic z where x.fid=y.fid and x.lid=z.lid1 limit ".($pageNo-1)*$pageSize.",$pageSize;";
}else{
  $sql="select title,lid,product_code from jf_exercise_equipment where fid=(select fid from jf_exercise_equipment_family where fname='$pname');";
$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
$count=count($data);
@$pageNo=$_REQUEST["pageNo"];
if($pageNo==null) $pageNo=1;
@$pageSize=$_REQUEST["pageSize"];
if($pageSize==null) $pageSize=16;
$sql="select * from jf_exercise_equipment x,jf_exercise_equipment_family y,jf_pic z where x.fid=y.fid and x.lid=z.lid1 and fname='$pname' limit ".($pageNo-1)*$pageSize.",$pageSize ;";}
$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
$pageCount=ceil(($count/$pageSize));
$output=[
	"pageNo"=>$pageNo,
	"pageSize"=>$pageSize,
	"count"=>$count,
	"pageCount"=>$pageCount,
	"data"=>$data
];
echo json_encode($output);
?>