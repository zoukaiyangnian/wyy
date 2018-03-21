$(()=>{
	//console.log($(".main-span"))
	$(".main-span").mouseenter(
			e=>{
			$(".main-u").css({"border":"1px solid gray","height":380})
		})
	$(".main-d1").mouseleave(
			e=>{
			$(".main-u").css({"border":"1px solid transparent","height":0})
		}
	)
});
//加载全部歌曲
var k='';
$(()=>{
	$(".main-u").on("click","a",e=>{
		console.log($(".main-u"))
		e.preventDefault();
		var $a=$(e.target);   //当前元素
		k=$a.text();
		console.log(k);
		$(".main-u").find("a").css("color","#313031");
		$a.css("color","blue");
		$.ajax({
			type:"get",
			url:"data/gedan.php",
			data:{m_genre:k},
			dataType:"json"
		}).then(result=>{
			var html = "";
			var {data,pageCount,pageNo}=result;
			for(var p of data){
				html+=`<div>
					<a href="music_details.html?mid=${p.mid}"><img src="${p.p_avatar}" /></a>
					<audio src="${p.m_avatar}" controls="controls"></audio>
					<p>${p.m_name}</p>
					<p><span>by</span>${p.singer_name} </p>
				</div>`;
			}
			$(".main-d2").html(html);
			html=`<a href="javascript:;" class='${pageNo==1?"previous disabled":"previous"}'>上一页</a>`;
			for(var i=1;i<=pageCount;i++){
				html+=`<a href="javascript:;" class=${pageNo==i?"current":""}>${i}</a>`
			}
			html+=`<a href="javascript:;" class='${pageNo==pageCount?"next disabled":"next"}'>下一页</a> `;
			$(".pages").html(html);
		})
	})
});
function loadPage(k,pageNo=1){
	var pageSize=20;
	//拼查询字符串
	m_genre=k
	var query={pageNo,pageSize,m_genre};
	$.get("data/gedan.php",query)
		.then(result=>{
			var {pageNo, pageCount, data}=result;
			var html="";
			//console.log(pageCount);
			for(var p of data){
				html+=`<div>
					<a href="music_details.html?mid=${p.mid}"><img src="${p.p_avatar}" /></a>
					<audio src="${p.m_avatar}" controls="controls"></audio>
					<p>${p.m_name}</p>
					<p><span>by</span>${p.singer_name} </p>
				</div>`;
			}
			$(".main-d2").html(html);
			html=`<a href="javascript:;" class='${pageNo==1?"previous disabled":"previous"}'>上一页</a>`;
			for(var i=1;i<=pageCount;i++){
				html+=`<a href="javascript:;" class=${pageNo==i?"current":""}>${i}</a>`
			}
			html+=`<a href="javascript:;" class='${pageNo==pageCount?"next disabled":"next"}'>下一页</a> `;
			$(".pages").html(html);
		})
};
$(()=>{
	loadPage();
});
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
			loadPage(k,i);
		}
	})
});