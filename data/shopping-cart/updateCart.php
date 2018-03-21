<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$lid=$_REQUEST["lid"];
@$count=$_REQUEST["count"];
$sql="update jf_shopping_item set counts='$count' where uid='$uid' and lid='$lid';";
mysqli_query($conn,$sql);