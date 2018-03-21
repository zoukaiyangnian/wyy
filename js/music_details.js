//动态加载歌曲内容
$(()=>{
    var mid=location.search.split("=")[1];
        $.ajax({
            type:"POST",
            url:"data/music_details.php",
            data:{mid:mid},
            success:function(data){
                var html="";
                html+=`<div class="box-1">
        <div class="box-1-1" ><img src="${data[0].p_avatar}" /></div>
        <div class="box-1-2" >
            <p class="box-2-p1">${data[0].m_name}</p>
            <p class="box-2-p2"><img src="img/tb-8.png" />${data[0].singer_name}</p>
            <p class="box-2-p3">
                <span class="box-2-span1">
                    <a href="javascript:;">播放</a>
                    (<span>5856</span>)
                </span>
                <span class="box-2-span2">
                    <a href="javascript:;">点赞</a>
                    (<span>586</span>)
                </span>
                <span class="box-2-span3">
                    <a href="javascript:;">浏览</a>
                    (<span>1288</span>)
                </span>
                <span class="box-2-span4">
                    <a href="javascript:;" class="box-2-span-2">收藏</a>
                    <span class="box-2-span-3">已收藏</span>
                </span>
            </p>
        </div>
    </div>
    <div class="box-2">
        <div class="box-2-d">
            <img src="img/dongtu.gif"/>
        </div>
        <div class="box-2-d2">
            <audio src="${data[0].m_avatar}" controls="controls"></audio>
        </div>
    </div>`
                //加载的元素添加进去DOM树
                $(".box-3").before(html);
                //点赞 执行一次,自动释放
             $(".box-2-span2").one("click","a",function(e){
                    e.preventDefault();
                    var $a=$(e.target);
                    var i=parseInt($a.parent().children("span").text());
                    i++;
                 $a.parent().children("span").html(i);
                });
           //页面刷新 自动查询是否已收藏,收藏就显示,没收藏不用管
                function  gg(){
                $.ajax({
                        type:"POST",
                        url:"data/table_celect.php",
                        data:{mid:mid},
                        success:function(data){
                             if(data.code>0){
                                $(".box-2-span-3").show();
                                $(".box-2-span-2").hide();
                            }else{
                                 $(".box-2-span-3").hide();
                                 $(".box-2-span-2").show();
                             }
                        },
                        error:function(){
                            alert("网络故障请检查")
                        }
                    })
            }
                gg()
            //绑定单击事件,收藏功能
             $(".box-2-span4").on("click","a",function(e){
                 e.preventDefault();
                     $.ajax({
                         type:"POST",
                         url:"data/table_collect.php",
                         data:{mid:mid},
                         success:function(data){
                            if(data.code==-1){
                                alert(data.msg)
                            }else if(data.code>0){
                                gg();
                            }
                               //调用函数实时刷新页面
                         },
                         error:function(){
                             alert("网络故障请检查")
                         }
                     })
             });
    },
            error:function(){
                alert("网络故障请检查")
            }
    })
});
//添加评论
$(()=>{
    $(".box-3-d1-a").click(function(e){
        e.preventDefault();
        var mid=location.search.split("=")[1];
        var d_content=$(".box-3-d1-t").val();
        var codeReg = /^[\u4e00-\u9fa5a-z0-9]{1,512}$/;
        if(!codeReg.test(d_content)){
            alert("内容字数最多256个字，请检查");
            return;
        }
        $.ajax({
            type:"POST",
            url:"data/music_details_discuss.php",
            data:{mid:mid,d_content:d_content},
            success:function(data){
                if(data.code>0){
                    $(".box-4").show();
                    var timer=setTimeout(function(){
                        $(".box-4").hide();
                        clearTimeout(timer);
                    },1500)
                    aa();
                    $(".box-3-d1-t").val("");
                }else{
                    alert(data.msg);
                }
            },
            error:function(){
                alert("网络故障请检查")
            }
        })
    })
});
//封装评论函数
function aa(pageNo=1){
    var mid=location.search.split("=")[1];
    $.ajax({
        type: "POST",
        url: "data/music_details_output.php",
        data: {mid: mid,pageNo:pageNo,pageSize:10},
        success: function (data) {
            var {data,pageCount,pageNo}=data;
            var html = "";
            for (var p of data) {
                html += `<li>
                <img src="img/icon.png"/>
                <span>${p.uname}:</span>
                <span>${p.d_content}</span>
                <p>${p.mtime}</p>
                </li>`
            }
            $(".box-3-d3>ul").html(html);
            html=`<a href="javascript:;" class='${pageNo==1?"previous disabled":"previous"}'>上一页</a>`;
            for(var i=1;i<=pageCount;i++){
                html+=`<a href="javascript:;" class=${pageNo==i?"current":""}>${i}</a>`
            }
            html+=`<a href="javascript:;" class='${pageNo==pageCount?"next disabled":"next"}'>下一页</a> `;
            $(".pages").html(html);
        }
        //error: function () {
        //    alert("网络故障请检查")
        //}
    })
};
aa(pageNo=1);
//评论预加载
$(()=>{//分页
        var divPages=$(".pages");
        divPages.on("click","a",e=>{
            var $tar=$(e.target);
            if(!$tar.is(".disabled")||!$tar.is(".current")){
                var i=1;
                if($tar.is(".previous")){
                    //获得divPages下class为current的a的内容转为整数保存在i中
                    var a=$(".current");
                    i=parseInt(a.html())-1;//i-1
                }else if($tar.is(".next")){
                    //获得divPages下class为current的a的内容转为整数保存在i中
                    var a=$(".current");
                    i=parseInt(a.html())+1;//i+1
                }else{//获得tar的内容转为整数保存在i中
                    i=parseInt($tar.html());
                }//用i为pageNo重新加载当前页面
                aa(i);
            }
        })
 });


