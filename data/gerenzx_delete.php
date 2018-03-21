<?php
//个人中心删除收藏
header("Content-Type:text/json");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];   //用户id
@$mid=$_REQUEST["mid"];
if(!$uid){
       echo '{"code":-1,"msg":"请登录"}';
       exit; //停止php执行
         }
$sql="UPDATE table_collect SET v1=1 WHERE uid=$uid  AND mid=$mid";
$result=mysqli_query($conn,$sql);
if($result){
    echo '{"code":1,"msg":"删除成功"}';
}else{
    echo '{"code":-1,"msg":"删除失败"}';
}