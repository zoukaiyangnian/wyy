<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$lid=$_REQUEST["lid"];
$sql="delete from jf_shopping_item  where uid='$uid' and lid='$lid';";
mysqli_query($conn,$sql);