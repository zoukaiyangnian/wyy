<?php
//data/products/getProductsByKw
header("Content-Type:application/json");
require("init.php");
@$sort=$_REQUEST["sort"];
$sql="select * from table_singer where sort='$sort'";
$data=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($data,1));