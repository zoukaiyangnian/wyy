<?php
  header("Content-Type:application/json");
  require_once("../init.php");
  $uname=$_REQUEST["email"];
  $sql="select * from jf_user where uname='$uname'";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_row($result);
  if($row==null){
	 echo json_encode("0");
  }else{
	 echo json_encode("1");
  }
?>