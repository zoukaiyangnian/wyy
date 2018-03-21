<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid==null)
    echo json_encode(["ok"=>0]);
  else{
	  $sql="select title,pic1,price,is_checked,counts,lid1 from jf_shopping_item x,jf_exercise_equipment y,jf_pic z where x.lid=y.lid and z.lid1=y.lid and uid=$uid";
	  $result=mysqli_query($conn,$sql);
	  $row=mysqli_fetch_all($result,1);
	  $output=[
		  "ok"=>1,
		  "data"=>$row
	  ];
	  echo json_encode($output);
  }