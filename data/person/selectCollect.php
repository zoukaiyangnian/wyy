<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid==null)
    echo json_encode(["ok"=>0]);
  else{
	  $sql="select title,pic1,lid from jf_exercise_equipment x,jf_pic y where  y.lid1=x.lid and lid in (select lid from jf_collect where uid='$uid')";
	  $result=mysqli_query($conn,$sql);
	  $row=mysqli_fetch_all($result,1);
	  if($row==null)
		  echo json_encode(["ok"=>2]);
	  else{
	      echo json_encode(["ok"=>1,"data"=>$row]);
      }
  }