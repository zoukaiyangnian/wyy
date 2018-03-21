$(()=>{
    $.ajax({
        type:"POST",
        url:"data/gerenzx.php",
        //data:{uid:uid},
        success:function(data){
            if(data.ok>0){
                    var html="";
                html+=`
        <div class="main-d1">
            <div class="main-d1-m">
                <img src="img/tb-4.png"/>
            </div>
            <div class="main-d1-d1">
                <div>
                    <span>${data.uname}</span>
                    <span>用户等级</span>
                    <a href="javascript:;">编辑个人资料</a>
                </div>
            </div>
        </div>
        <!-- 创建的歌单-->
        <div class="main-d2">我创建的歌单</div>
        <div class="main-d3">
        </div>`;
         $(".box").html(html);
            }else{
                alert("请登录!")
            }
        },
        error:function(){
            console.log(3);
            alert("网络故障请检查")
        }
    });
    //加载歌曲
    $.ajax({
        type:"POST",
        url:"data/gerenzx_output.php",
        //data:{uid:uid},
        success:function(data){
            if(data.code<0){
                alert(data.msg);
            }else{
                var html = "";
                for(var item of data){
                html+=`<div>
                    <img src="${item.p_avatar}"/>
                    <span>${item.m_name}</span>
                    <audio src="${item.m_avatar}" controls="controls"></audio>
                    <a href="javascript:;" data-target="${item.mid}">删除</a>
                </div>`;
                }
                $(".main-d3").html(html);
                //删除框显示绑定单击事件
                $(".main-d3").on("click","a",function(){
                    $(".main-d4").css("display","block");
                    })
                //给弹出框绑定单击事件,确定是否删除
                $(".main-d4").on("click","a",(e)=>{
                       var  $a=$(e.target);
                        var text=$a.text();
                    //确定删除
                        if(text=="确定"){
                            //获取歌曲mid  在自定义属性
                            $(".main-d4").css("display","none");
                            var mid=parseInt($(".main-d3").children().children("a").attr("data-target"));
                           //执行PHP操作
                            $.ajax({
                                type:"POST",
                                url:"data/gerenzx_delete.php",
                                data:{mid:mid},
                                success:function(data) {
                                   if(data.code>0){
                                       //页面重新加载
                                    $.ajax({
                                        type: "POST",
                                        url: "data/gerenzx_output.php",
                                        success: function (data) {
                                            var html = "";
                                            for (var item of data) {
                                                html += `<div>
                                        <img src="${item.p_avatar}"/>
                                        <span>${item.m_name}</span>
                                        <audio src="${item.m_avatar}" controls="controls"></audio>
                                        <a href="javascript:;" data-target="${item.mid}">删除</a>
                                    </div>`;
                                            }
                                            $(".main-d3").html(html);
                                        }
                                    })
                                   }
                                }
                                })
                            //点击取消 弹出框隐藏
                        }else if(text=="取消"){
                            $(".main-d4").css("display","none");
                        }
                    })
            }
        },
        error:function(){
            alert("网络故障请检查")
        }
    })
})