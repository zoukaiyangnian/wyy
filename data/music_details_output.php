<?php
	header("Content-Type:application/json");
	require("init.php");
	@$mid=$_REQUEST["mid"];
	$midPattern = '/^[0-9]{1,7}$/';
        if(!preg_match($midPattern,$mid)){    //判断歌曲uid
           echo '{"code":-1,"msg":"歌曲编号参数不正确"}';
           exit; //停止php执行
        }
    $sql="SELECT x.did,x.d_content,x.mtime,y.uname FROM table_discuss x,table_user y WHERE x.uid=y.uid AND mid=$mid  ORDER BY x.did DESC";
    $result=mysqli_query($conn,$sql);
    $data=mysqli_fetch_all($result,1);
    $count=count($data);
    @$pageNo=$_REQUEST["pageNo"];
    if($pageNo==null) $pageNo=1;
    @$pageSize=$_REQUEST["pageSize"];
    if($pageSize==null) $pageSize=10;
    $sql.=" limit ".($pageNo-1)*$pageSize.",$pageSize ";
    $result=mysqli_query($conn,$sql);
    $data=mysqli_fetch_all($result,1);
    $pageCount=ceil(($count/$pageSize));
    #echo $pageCount;
    $output=[
    	"pageNo"=>$pageNo,
    	"pageSize"=>$pageSize,
    	"count"=>$count,
    	"pageCount"=>$pageCount,
    	"data"=>$data
    ];
    echo json_encode($output);