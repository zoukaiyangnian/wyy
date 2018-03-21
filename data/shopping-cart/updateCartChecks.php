<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$check=$_REQUEST["check"];
$sql="update jf_shopping_item set is_checked=$check where uid='$uid';";
mysqli_query($conn,$sql);