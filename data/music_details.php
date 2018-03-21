<?php
	header("Content-Type:application/json");
	require("init.php");
	@$mid=$_REQUEST["mid"];
	$sql = "SELECT * FROM table_music WHERE mid=$mid";
	$result=mysqli_query($conn,$sql);
	$data=mysqli_fetch_all($result,1);
	echo json_encode($data);
?>