$(()=>{
	//加载购物车
   $.get("data/shopping-cart/selectCart.php")
	   .then(result=>{
	   var {ok,data}=result;
        html="";
		for(var p of data){
		html+=`<div data-lid="${p.lid1}">
				<div>
				   <input type="checkbox" data-check="1" ${p.is_checked==0 ?null: "checked"}>
				   <img src="${p.pic1}">
				   <a class="cname" href="product-details.html?lid=${p.lid1}">${p.title}</a>
				</div>
				 <p>
					<i class="lf1 btn-lf1">-</i>
					<input type="text" value="${p.counts}" class="counts">
					<i class="lf1 btn-rt1">+</i>
				</p>
				<span class="price1">${parseFloat(p.price).toFixed(2)}</span>
				<span class="prices">${parseFloat(p.price*p.counts).toFixed(2)}</span>
				<a class="delete">删除</a>
             </div>`;
		}
		$("#list-cart").html(html);
		if($("#list-cart").children().length!=0){         //隐藏网站自营
	     $("#lists").show();
	  }
		checkedAll();
   })
    /******复选框全选安扭***********/
	function checkedAll(){
		$("[data-check=1]").each(function(e){
			   var n=0
			   if(!$(this).is(":checked"))
				   n++;
			   if(n==0)
				   $("#checkAll").prop("checked",true);
			   else
				  $("#checkAll").prop("checked",false);
		})	
    }
    /******判断购物车中复选框是否选中，计算总额函数********/
    function Sumcount(){
        var sumct=0;  //总额
        var ckecks=$("#list-cart").find(":checked")
        if(ckecks.length!=0){
            for (var i = 0; i < ckecks.length; i++) {
                var b = parseInt(ckecks[i].parentElement.parentElement.querySelector(".prices").innerHTML);
                sumct += b;
                $("#costs").html(sumct + ".00");
            }
        }else{
            $("#costs").html("0.00");
        }
    }
	 /****单个购物车商品数量减少*****/
   $("#list-cart").on("click",".btn-lf1",function(e){
       var n=parseInt($(this).next().val());
       var $sum1=$(this).parent().next();
       var price=parseInt($sum1.html());
	   var lid=$(this).parent().parent().data("lid");
	   console.log(lid);
	   if(n>=2){
		   n--;
           $(this).next().val(n);
           $sum1.next().html(price*n+".00");
           if($(this).parent().prev().children("input").is(":checked")){
               Sumcount();
           }
		   console.log(n);
		   console.log(lid);
		   $.ajax({
				   type:"post",
				   url:"data/shopping-cart/updateCart.php",
				   data:{count:n,lid:lid}
			   })
       }
   })
    // 单个购物车商品数量增加
	$("#list-cart").on("click",".btn-rt1",function(e){
        var n=parseInt($(this).prev().val());
        var $sum1=$(this).parent().next();
        var price=parseInt($sum1.html());
		var lid=$(this).parent().parent().data("lid")
	   if(n>=1){
		   n++;
           $(this).prev().val(n);
           $sum1.next().html(price*n+".00");
           if($(this).parent().prev().children("input").is(":checked")){
               Sumcount();
           }
		   $.ajax({
				   type:"post",
				   url:"data/shopping-cart/updateCart.php",
				   data:{count:n,lid:lid}
			   })
	   }
   })
   /***购物车中单个商品删除***/
   $("#list-cart").on("click",".delete",function(e){
	   var r=confirm("您确实要把该商品移出购物车吗？");
	   var lid=$(this).parent().data("lid");
	   if(r==true){		 
	      $.ajax({
				   type:"post",
				   url:"data/shopping-cart/deleteCart.php",
				   data:{lid:lid}
			   })
          $(this).parent().remove();
          Sumcount();
	   }
      if($("#list-cart").children().length==0){         //隐藏网站自营
	     $("#lists").hide();
	  }
   })
    /*******清除购物车*******/
    $("#removeCart").click(function (e){
        $("#list-cart").children().remove();
        $("#lists").hide();
        $("#costs").html("0.00");
        $("#checkAll").prop("checked",false);
		$.ajax({
				   type:"post",
				   url:"data/shopping-cart/deleteCartAll.php",
			   })
    })
   /******将推荐栏商品添加到购物车中***/
   $("#re-list").on("click","b",function(e){
		   var i=$(this).parent().parent();
		   var lid=i.data("lid1");
           var count=1;
		    $.ajax({
				   type:"post",
				   url:"data/shopping-cart/insertCart.php",
				   data:{count:count,lid:lid}
			   })
		   var price=$(this).prev().html();
		   var img=i.find("img").attr("src");
		   var name=i.find("a").html();
	       var html="";
		     html+=`
                   <div data-lid="${lid}">
                       <div>
                           <input type="checkbox" data-check="1">
                           <img src="${img}">
                           <a class="cname">${name}</a>
                       </div>
                       <p>
                           <i class="lf1 btn-lf1">-</i>
                           <input type="text" value="1" class="counts">
                           <i class="lf1 btn-rt1">+</i>
                       </p>
                       <span class="price1">${price}</span>
                       <span class="prices">${price}</span>
                       <a class="delete">删除</a>              
               </div>`;
		     var $names=$("#list-cart").find("a.cname")   //判断购物车是否有相同的商品
	            var s=0;                                   //给一个变量来判断是否添加div
	           $names.each(function (e) {
				   if($(this).html()==name){
                       var $pr=$(this).parent().parent();
                       var p=parseInt($pr.find(".counts").val());
                       p++;
                       $pr.find(".counts").val(p);
                       $pr.find(".prices").html(p*price+".00")
                       if($(this).prevAll("input").is(":checked")){
                           Sumcount();
                       }
                       s=1;
                   }
               })
	           if(s==0)
                   $("#list-cart").append(html);
				   checkedAll();
		   if($("#list-cart").children().length!=0){         //隐藏网站自营
	           $("#lists").show();
	        }
   })
 /****购物车选择商品结账******/
  //全选按钮
   $("#checkAll").on("click",function () {          
	   var check=0;
      if($("#checkAll").is(":checked")){
      	$("[data-check=1]").prop("checked",true);
		  var sumct=0;  //总额
          $("#list-cart").find(".prices").each(function () {
			  var xj=parseInt($(this).html())
              sumct+=xj;
			  $("#costs").html(sumct+".00");
          })
          check=1;
	  }else{
          $("[data-check=1]").prop("checked",false);
          $("#costs").html("0.00");
	  }
       $.ajax({
			   type:"post",
			   url:"data/shopping-cart/updateCartChecks.php",
			   data:{check:check}
			   })
     })
  //单选			   
   $("#list-cart").on("click","[data-check=1]",function () {
	   var lid=$(this).parent().parent().data("lid");
	   checkedAll();
	   var check=0;
	   if($(this).is(":checked"))
		   check=1
	   $.ajax({
			   type:"post",
			   url:"data/shopping-cart/updateCartCheck.php",
			   data:{check:check,lid:lid}
			   })
        Sumcount();
      })   	 
})