<?php
//用户收藏
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
$sql1="SELECT v1 FROM table_collect WHERE uid=$uid AND mid=$mid";
$result=mysqli_query($conn,$sql1);
$row=mysqli_fetch_row($result)[0];
if($row===null){
        @$sid=$_REQUEST["sid"];   //歌手id
        if(!$sid) $sid=0;
        @$tid=$_REQUEST["tid"];   //新碟id
        if(!$tid) $tid=0;
        $sql2="INSERT INTO table_collect(uid,mid,sid,tid) VALUES($uid,$mid,$sid,$tid)";
        $result=mysqli_query($conn,$sql2);
        if($result==true){
            echo '{"code":1,"msg":"收藏成功!"}';//收藏成功
         }else{
            echo '{"code":-1,"msg":"收藏失败!"}';//收藏失败
        }
}else{
        $sql3="UPDATE table_collect SET v1=0 WHERE uid=$uid  AND mid=$mid";
        $result=mysqli_query($conn,$sql3);
        if($result){
            echo '{"code":1,"msg":"收藏成功"}';
        }else{
            echo '{"code":-1,"msg":"收藏失败"}';
        }
}