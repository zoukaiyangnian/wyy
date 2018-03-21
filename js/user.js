$(()=>{
//	加载收藏
    $.get("data/person/selectCollect.php")
		.then(result=>{
		   var {ok,data}=result;
		   if(ok==1){
		   html="";
		   for(var p of data){
		     html+=`
				 <li>
				  <a href="product-details.html?lid=${p.lid}">
				   <img src="${p.pic1}">
				   <span>${p.title}</span>
				   </a>
				 </li>	 
			  `;
		   }
		   $("#scollect").html(html);
	}
	})
//		加载购物车
	$.get("data/shopping-cart/selectCart.php")
		.then(result=>{
		   var {ok,data}=result;
		   html="";
		   for(var p of data){
		     html+=`
				 <li>
				  <a href="product-details.html?lid=${p.lid1}">
				   <img src="${p.pic1}">
				   <span>${p.title}</span>
				  </a>
				 </li>
			  `;
		   }
		   $(".shop-list").html(html);
	})
	$.get("data/person/selectUser.php")
		.then(result=>{
     var {ok,data}=result;
	 $("#portrait").css("background",`url(${data[0].portrait}) no-repeat`)
		 .css("backgroundSize","80px 80px;")
	 })
   //   图片上传
   document.getElementById('file').onchange = function(){
    var imgFile = this.files[0];
	console.log(imgFile);
    var fr = new FileReader();
    fr.onload = function() {
     document.getElementById('p-img').getElementsByTagName('img')[0].src=fr.result;
    };
    fr.readAsDataURL(imgFile);
   };
   //生日
  $(function () {
	     $.ms_DatePicker({
            YearSelector: ".sel_year",
            MonthSelector: ".sel_month",
            DaySelector: ".sel_day"
      });
	     $.ms_DatePicker();
    });
    $("#distpicker3").distpicker({
       province: "浙江省",
       city: "杭州市",
       district: "西湖区"
     });
	 //修改个人资料
	 $("#update").click(function(){
	   
	 
	 })

	/*$(".at").on("mouseenter",function(e){
       $(".rd i").css("visibility","hidden").next();
	   $(".at i").css("visibility","visible");
       $(".qhuan").html("您的收藏空空的，赶快去购物吧！")
	})
	$(".rd").on("mouseenter",function(e){
        $(".at i").css("visibility","hidden");
		$(".rd i").css("visibility","visible");
		console.log($("#qhuan"))
		$(".qhuan").html("您的店铺收藏空空的，赶快去收藏店铺吧！")
	})*/
})