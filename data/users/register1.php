<?php
  header("Content-Type:application/json");
  require_once("../init.php");
  session_start();
  $uname=$_REQUEST["email"];
  $upwd=$_REQUEST["upwd1"];$code = $_REQUEST["code"];
  if($code != $_SESSION['code']){
    echo json_encode("0");
    exit;
    }
  $sql="insert into jf_user(uname,upwd) values('$uname','$upwd')";
  $result=mysqli_query($conn,$sql);
	 if($result==true){
	   echo json_encode("true");
	 }else{
	   echo json_encode("false");
	 }
?>