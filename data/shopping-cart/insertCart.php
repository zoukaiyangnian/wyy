<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$lid=$_REQUEST["lid"];
@$count=$_REQUEST["count"];
$sql="select counts from jf_shopping_item where uid='$uid' and lid='$lid'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);
if($uid==null){
    echo json_encode(["ok"=>0]);
}else if($row==null){
	  $sql1="insert into jf_shopping_item values(null,$uid,$lid,$count,0);";
	  mysqli_query($conn,$sql1);
	  echo json_encode(["ok"=>1]);
}else{
	$sql2="update jf_shopping_item set counts=counts+$count where uid='$uid' and lid='$lid';";
	  mysqli_query($conn,$sql2);
	 echo json_encode(["ok"=>1]);
}