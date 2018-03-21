<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$lid=$_REQUEST["lid"];
$sql="select * from jf_collect where uid='$uid' and lid='$lid'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($uid==null){
    echo json_encode(["ok"=>0]);
}else if($row==null){
	  $sql1="insert into jf_collect values(null,$uid,$lid);";
	  mysqli_query($conn,$sql1);
	  echo json_encode(["ok"=>1]);
}else{
	$sql2="delete from jf_collect where uid='$uid' and lid='$lid';";
	  mysqli_query($conn,$sql2);
	 echo json_encode(["ok"=>2]);
}