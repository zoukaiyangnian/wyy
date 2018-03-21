//动态加载歌手信息
(()=>{
	ajax({
		type:"get",
		url:"data/geshow.php",
		//data:query,
		dataType:"json"
	}).then(data=>{
		var html = "";
		for(var p of data){
			html+=`<div>
						<a href="#"><img src="${p.avatar}" alt=""></a>
						<p>${p.singer_name}</p>
					</div>`;
		}
		$(".main-right .main-right-d2").html(html);
	})
})();
//点击歌手分类
(()=>{
	$(".main>.main-left").on("click","a",e=>{
		e.preventDefault();
		var $a=$(e.target);   //当前元素
		var i=$a.html();
		$(".main>.main-left").find("a").css("color","#313031");
		$a.css("color","blue");
		$(".main-right-d1").html(i);
	ajax({
		type:"get",
		url:"data/gesghou-sort.php",
		data:"sort="+i,
		dataType:"json"
	}).then(data=>{
		var html = "";
		for(var p of data){
			html+=`<div>
						<a href="#"><img src="${p.avatar}" alt=""></a>
						<p>${p.singer_name}</p>
					</div>`;
		}
		$(".main-right .main-right-d2").html(html);
	})
})
})();
//点击入驻歌手  重新加载全部
(()=>{
	$(".main>.main-left").on("click",".main-left-u-a",e=>{
		e.preventDefault();
		var $a=$(e.target);   //当前元素
		var i=$a.html();
		$(".main>.main-left").find("a").css("color","#313031");
		$a.css("color","blue");
		$(".main-right-d1").html(i);
	ajax({
		type:"get",
		url:"data/geshow.php",
		dataType:"json"
	}).then(data=>{
		var html = "";
		for(var p of data){
			html+=`<div>
						<a href="#"><img src="${p.avatar}" alt=""></a>
						<p>${p.singer_name}</p>
					</div>`;
		}
		$(".main-right .main-right-d2").html(html);
	})
})
})();