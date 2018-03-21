<?php
	header("Content-Type:application/json");
	require("init.php");
	@$mid=$_REQUEST["mid"];
	@$d_content=$_REQUEST["d_content"];
	session_start();
	@$uid=$_SESSION["uid"];
	//正则判断用户录入的信息
	$midPattern = '/^[0-9]{1,7}$/';
    if(!preg_match($midPattern,$mid)){    //判断歌曲uid
       echo '{"code":-1,"msg":"歌曲编号参数不正确"}';
       exit; //停止php执行
    }
    $uidPattern = '/^[0-9]{1,7}$/';
        if(!preg_match($uidPattern,$uid)){    //判断用户uid
           echo '{"code":-1,"msg":"请登录"}';
           exit; //停止php执行
        }
//    $dPattern = '/^.{1,512}$/';
//        if(!preg_match($dPattern,$d_content)){    //判断用户评论
//           echo '{"code":-1,"msg":"用户评论字数过多,请重新输入"}';
//           exit; //停止php执行
//        }
$sql="INSERT INTO table_discuss(d_content,mid,uid,mtime) VALUES('$d_content',$mid,$uid,now())";
//var_dump($sql);
$result=mysqli_query($conn,$sql);
if($result){
    echo  '{"code":1,"msg":"评论成功"}';
}else{
    echo  '{"code":-1,"msg":"评论失败,请重新输入"}';
}