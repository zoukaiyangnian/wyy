<?php
//判断用户是否收藏
//data/table_collect.php
header("Content-Type:text/json");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];   //用户id
@$mid=$_REQUEST["mid"];
if(!$uid){
       echo '{"code":-1,"msg":"请登录后再收藏"}';
       exit; //停止php执行
         }
$sql="SELECT v1 FROM table_collect WHERE uid=$uid AND mid=$mid";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result)[0];
if($row===null||$row==="1"){
      echo '{"code":-1,"msg":"没有收藏"}';
}else{
      echo '{"code":1,"msg":"收藏!"}';
}
