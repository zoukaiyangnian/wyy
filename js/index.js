//轮播函数
//(()=>{
//	function task(){
//		var show=document.querySelector(".main .main-1 .show")
//		show.className="";
//		if(show.parentNode.nextElementSibling!=null){
//			show.parentNode.nextElementSibling.children[0].className="show"
//		}else{
//			show.parentNode.parentNode.children[0].children[0].className="show"
//		}
//	}
//	var timer=setInterval(task,3000)
//	lunbo.onmouseover=function(){
//		clearInterval(timer);
//		this.timer=null;
//	}
//	lunbo.onmouseout=function(){
//		timer=setInterval(task,3000)
//	}
//})();
//轮播按钮
//$(()=>{
//	$(".btns-left").click(()=>{
//		var $show=$(".main-1 .show");
//			$show.removeClass("show");
//		if($show.parent().next()!=null)
//			$show.parent().next().children("img").addClass("show");
//		else
//			$show.parent().parent().children().first().children().first().addClass("show");
//	})
//	$(".btns-right").click(()=>{
//		var $show=$(" .main-1 .show");
//			$show.removeClass("show");
//		if($show.parent().prev()!=null)
//			$show.parent().prev().children("img").addClass("show");
//		else
//			$show.parent().parent().children().last().children().last().addClass("show");
//	})
//});
//轮播点击函数
//(()=>{
//	var spans=document.querySelectorAll("[data-toggle=tab]");
//	for(var span of spans){
//		span.onclick=function(){
//		var show=document.querySelector(".main .main-1 .show");
//		if(show!=null)
//			show.removeAttribute("class");
//		var	id=this.dataset.target;
//		var imgs=document.querySelectorAll(".main-1 a img")
//		imgs[id].className="show";
//	}
//}
//})();
//新碟点击按钮
(()=>{
	var i=0;
	$(".main-5-left").click(e=>{
			i--;
			if(i>=-5){
		$(".main-5-d-u").css("left",i*130)
		}else if(i<-5){
			i=-5; 
		$(".main-5-d-u").css("left",-650)
		}
	 })
	$(".main-5-right").click(e=>{
		i++;
		if(i<=0){
		$(".main-5-d-u").css("left",i*130)
		}else if(i>0){
			i=0;
		$(".main-5-d-u").css("left",0)
		}
	 })
})();
//登录框弹出事件
$(()=>{
	$(".flex-right-a").click(e=>{
		if($(".flex-right-a").html()=="登录")
			$(".login").css("right",600)
			})
	
	$(".login-p-span").click(e=>{
		$(".login").css("right",-700)
	})
});
/****登录失去焦点验证*****/
$(()=>{
			$(".uname").mouseleave(()=>{  
			if($(".uname").val()==""){
				$(".uname-show").text("用户名不能为空").css("color","red");
			}
			 });
			$(".uname").mouseenter(()=>{ 
			 $(".uname-show").text("请输入6-18位用户名");
			});
			$(".upwd").mouseleave(()=>{
				if($(".upwd").val()==""){
					$(".upwd-show").text("密码不能为空").css("color","red");
				}
			});
			$(".upwd").mouseenter(()=>{
			  $(".upwd-show").text("请输入6-18位密码");
			 }
			);		
});
/*****登录状态**********/
$(()=>{
			//登录状态判断
			function isLogin(){
				$.get("data/users/islogin.php")
					.then(data=>{
				if(data.ok==1){
					$(".flex-right-a2").html("欢迎,"+data.uname);
					$(".flex-right-a").hide();
					$(".flex-right-aa").show();
				}else{
							$(".flex-right-aa").hide();
							$(".flex-right-a2").hide();
				}
			})
		}
			isLogin();
			$(document.body).on(
				"click",
				".flex-right-aa",
				e=>{
					$.get("data/users/logout.php").then(()=>{
						location.reload(true);
					})
				}
			);
});
//登录界面反馈
$(()=>{
	var $form=$(".login>.login-d1>form");
	$(".login>.login-d1>form [type=button]").click(()=>{
		$.post("data/users/login.php",$form.serialize())
			.then(text=>{
			if(text=="false"){
				$form[0].reset();
				alert("用户名或密码不正确!")
			}else{
				alert("登录成功!");
					location="index.html";
			}
		})
	});
	$(window).keyup(e=>{
		if(e.keyCode==13) $(".login>.login-d1>form>[type=button]").click();
	})
});
//楼层滚动
$(()=>{
	$(window).scroll(()=>{
		var scrollTop=$(window).scrollTop();
		var offsetTop=$(".floor:first").offset().top;
		if(offsetTop<=scrollTop+innerHeight/2){
			$(".lift").show();
		}else{
			$(".lift").hide();
		}
		var $floors=$(".floor");
		for(var i=0;i<$floors.length;i++){
			var $f=$($floors[i]);
			if($f.offset().top>scrollTop+innerHeight/2){
				break;
			}
		}
		console.log(i);
		$(`.lift>ul>li:eq(${i-1})`)
			.addClass("lift_item_on")
			.siblings().removeClass("lift_item_on")
	})
	$(".lift>ul").on("click","a.lift_btn",function(){
		var $a=$(this);
		var i=$a.parent().index();
		var offsetTop=$(`.floor:eq(${i})`).offset().top;
		$("html").stop(true).animate({
			scrollTop:offsetTop-30
		},500)
	})
});
//下载框点击事件
$(".header-a").click(function(e){
	e.preventDefault();
	$(".btns-1").css("right",0);
})
$(".btns-1-a1").click(function(e){
	e.preventDefault();
	$(".btns-1").css("right",-500);
})