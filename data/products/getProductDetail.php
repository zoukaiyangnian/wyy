<?php
header("Content-Type:application/json");
require("../init.php");
$lid=$_REQUEST["lid"];
$reg="/^[0-9]{1,10}$/";
if(!preg_match($reg,$lid)){
  echo '{"code":-1,"msg":"产品参数错误"}';
  exit;
}
$sql="select * from jf_exercise_equipment x,jf_exercise_equipment_family y,jf_pic z where x.fid=y.fid and x.lid=z.lid1 and lid=$lid";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
echo json_encode($row);

