<?php
	//data/users/register.php
	header("Content-Type:text/json");
	require_once("init.php");
	@$uname=$_REQUEST["uname"];
	@$upwd=$_REQUEST["upwd"];
	@$email=$_REQUEST["email"];
	@$phone=$_REQUEST["phone"];
	@$gender=$_REQUEST["gender"];
	$sql="INSERT INTO table_user(uname,upwd,email,phone,gender) VALUES('$uname','$upwd','$email','$phone','$gender')";
	$result=mysqli_query($conn,$sql);
	//$url="../html/index.html";
	if($result==true){
		echo "true";//注册成功
	//	header("location:$url");
	}else{
		echo "false";//注册失败
	};