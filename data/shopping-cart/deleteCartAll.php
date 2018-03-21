<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
$sql="delete from jf_shopping_item  where uid='$uid'";
mysqli_query($conn,$sql);