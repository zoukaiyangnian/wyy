<?php
header("Content-Type:application/json");
require("../init.php");
session_start();
@$uid=$_SESSION["uid"];
$u=$_REQUEST["uname"];
$r=$_REQUEST["rname"];
$g=$_REQUEST["gander"];
$picname=$_FILES["mypic"]["name"];
$picsize=$_FILES["mypic"]["size"]/1000;
if($picsize>1000000000000){
   echo '{"code":-1,"msg":"图片大小不能超过2M"}';
   exit;}
$pictmp=$_FILES["mypic"]["tmp_name"];
$type=strstr($picname,".");
$fileName=time().rand(1,9999).$type;
$src=$_FILES["mypic"]["tmp_name"];
$des="uploads/".$fileName;
$p="data/person/".$des;
$sql="update jf_user set uname='$u',rname='$r',gander='$g',portrait='$p' where uid=$uid";
$rs=move_uploaded_file($src,$des);
$result=mysqli_query($conn,$sql);
$count = mysqli_affected_rows($conn);
if($rs&&$count==1){
  echo '{"code":1}';
}else{
  echo '{"code":-1}';
}