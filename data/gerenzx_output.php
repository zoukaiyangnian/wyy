<?php
header("Content-Type:text/json");
require_once("init.php");
session_start();
@$uid=$_SESSION["uid"];   //用户id
if(!$uid){
       echo '{"code":-1,"msg":"请登录"}';
       exit; //停止php执行
         }
$sql="SELECT y.m_name,y.singer_name,y.p_avatar,y.m_avatar,x.mid ";
$sql.=" FROM table_collect x,table_music y WHERE x.v1=0 AND x.mid=y.mid AND x.uid=$uid";
$result=mysqli_query($conn,$sql);
$data=mysqli_fetch_all($result,1);
echo json_encode($data);