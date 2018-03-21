<?php
  header("Content-Type:application/json");
  require_once("../init.php");
  session_start();
  @$uname=$_REQUEST["uname"];
  @$upwd=$_REQUEST["upwd"];
  $code = $_REQUEST["code"];
  if($code != $_SESSION['code']){
    echo json_encode("0");
    exit;
}
  if($uname&&$upwd){
	  $sql="select * from jf_user where uname='$uname' and binary upwd='$upwd'";
	  $result=mysqli_query($conn,$sql);
	  $row=mysqli_fetch_row($result);
	  if($row){
		  $_SESSION['uid']=$row[0];
		  echo json_encode("1");
	  }else{
		  echo json_encode("2");
	  }
	  
  }
?>