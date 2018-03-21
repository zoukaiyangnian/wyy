<?php
	header("Content-Type:application/json");
	require("init.php");
	$sql = "SELECT * FROM table_singer";
	$result=mysqli_query($conn,$sql);
	$data=mysqli_fetch_all($result,1);
	echo json_encode($data);
?>