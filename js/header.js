
/******页面加载*****/
$(()=>{
	$("#header").load("header.html",
		()=>{
 /**********下拉框**********/
	$("#wodzd").mouseenter(e=>{
		$tar=$(e.target).parent();
		   $tar.next().show();
	   
		});
    $("#lkai").mouseleave(e=>{
	   $(".xlk").hide();
	 })

/***登入按钮**/
 function isLogin(){
	$.get("data/users/islogin.php")
	 .then(data=>{
		if(data.ok==0){
			$("[data-toggle=loginList]").show()
			.next().hide();
		}else{
			$("[data-toggle=loginList]").hide()
				.next().show()
				.find("[data-name=uname]")
				.html(data.uname);
		}
	})
   }
	isLogin();
	$(document.body).on(//为登录按钮绑定事件
		"click",
		"[data-toggle=loginList]>li:last-child>a",
		e=>{
			var $tar=$(e.target);
			location="denglu.html?back="+location.href;
		});
	$(document.body).on(
		"click",
		"[data-toggle=welcomeList]>li:last-child>a",
		e=>{
			$.get("data/users/logout.php").then(isLogin)
		});
//		购物车图标
	$("[data-cart=1]").on("click",e=>{
		e.preventDefault(); 
       $.get("data/shopping-cart/selectCart.php")
		   .then(data=>{
		   if(data.ok==0){			   
			location="denglu.html";
		  }else{
			 location="shopping-cart.html";					  
		   }
	   })
	})
	}
	)
});