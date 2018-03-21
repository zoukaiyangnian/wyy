/******手机邮箱切换********/
$(()=>{
  $("[data-toggle=tab]").click(e=>{
    var $tar=$(e.target);
	if(!$tar.is(".active"))
       $tar.addClass("active").siblings().removeClass("active");
      var id=$tar.attr("id");	 
	  $(id).removeClass("sjyx").siblings().addClass("sjyx");
  })
});
/**********用户注册***************/
$(()=>{
	 var dlName=document.getElementById("uname");
	 var dlEmail=document.getElementById("email");
     var dlPwd=document.getElementById("upwd");
	 var dlPwd1=document.getElementById("upwd1");
     var yPwd=document.getElementById("ypwd");
	 var yPwd1=document.getElementById("ypwd1")
     var yName=document.getElementById("yname");
	 var dlPwdc=document.getElementById("upwdc");
	 var dlPwdc1=document.getElementById("upwdc1");
	 var form=document.forms[0];
	 var reg1=/^\d{11}$/;
	 var reg2=/^\w{6,}$/;
	 var reg3=/^\d{6,10}$/;
	 var reg4=/^\w{6,16}$/;
	 var reg5=/(^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$)|(^\d{11}$)/;
     /**手机用户名***/
	dlName.onblur=function(){
	 if(dlName.value===""){
		 $("#yname").removeClass();
		 yName.innerHTML="-手机号不能为空";
	 }else{
         if(reg1.test(dlName.value)){
              var uname=dlName.value;
				ajax({
					type:"get",
					url:"data/users/check_uname.php",
					data:"uname="+uname,
					dataType:"json"
			    }).then(resData=>{
					 isRegister="true";
					 $(yName).addClass("ys");
					if(resData==0){
                      yName.innerHTML="*可以注册";
					  isRegister="true";
					}else{
                      yName.innerHTML="*用户名存在";
					  isRegister="false";
					}
				})
	     }else{
            yName.innerHTML="-手机号格式错误";
		 }
	 }
     }
	/**邮箱用户名***/
    dlEmail.onblur=function(){
	 if(dlEmail.value===""){
         $("#show-email").removeClass();
		 $("#show-email").html("-邮箱不能为空");
	  }else{		  
         if(reg5.test(dlEmail.value)){
		  var email=dlEmail.value;
				ajax({
					type:"get",
					url:"data/users/check_email.php",
					data:"email="+email,
					dataType:"json"
			    }).then(resData=>{
					 isRegister1="true";
					 $("#show-email").addClass("ys");
					if(resData==0){
                     $("#show-email").html("*可以注册");
					  isRegister1="true";
					}else{
                      $("#show-email").html("*邮箱号存在");
					  isRegister1="false";
					}
				})
		   $("#show-email").addClass("ys");
	     } else{
            $("#show-email").html("-邮箱格式不正确");;
		 }
	  }
     }
    /**密码1失去焦点***/
    dlPwd.onblur=function(){
		 if(dlPwd.value===""){
		   yPwd.innerHTML="-密码不能为空";
           $(yPwd).removeClass().prev().removeClass();
		   $(yPwd).addClass("sjyx1").prev().addClass("sjyx");
	     }else{
            if(reg2.test(dlPwd.value)){
				$(yPwd).addClass("sjyx").prev().addClass("sjyx1");
			  if(reg3.test(dlPwd.value)){
				$("#ruo").addClass("ys1");
			  }else if(reg4.test(dlPwd.value)){
                $("#ruo").addClass("ys1").next().addClass("ys1");
			  }else{
                $("#ruo").addClass("ys1").siblings().addClass("ys1");
			   }
			  dlPwdc.onblur=function(){
	            if(!(dlPwdc.value==dlPwd.value)){
		          $("#yupwdc").html("-两次密码不一致");	 
	            }else{
                  $("#yupwdc").html("* 通过");
		          $("#yupwdc").addClass("ys");
	            } 
              }
		    }else{
              $(yPwd).html("密码至少6位数字或字母");
		       $(yPwd).prev().addClass("sjyx");
		    }
	     }
     }
    /**密码2失去焦点***/
	dlPwd1.onblur=function(){
		 if(dlPwd1.value===""){
		   yPwd1.innerHTML="-密码不能为空";
		   $(yPwd1).removeClass().prev().removeClass();
		   $(yPwd1).prev().addClass("sjyx");
	     }else{
            if(reg2.test(dlPwd1.value)){
				$(yPwd1).addClass("sjyx").prev().addClass("sjyx1");
			  if(reg3.test(dlPwd1.value)){
				$("#ruo1").addClass("ys1");
			  }else if(reg4.test(dlPwd.value)){
                $("#ruo1").addClass("ys1").next().addClass("ys1");
			  }else{
                $("#ruo1").addClass("ys1").siblings().addClass("ys1");
			   }
			  dlPwdc1.onblur=function(){
	            if(!(dlPwdc1.value==dlPwd1.value)){
		          $("#yupwdc1").html("-两次密码不一致");	 
	            }else{
                  $("#yupwdc1").html("* 通过");
		          $("#yupwdc1").addClass("ys");
	            } 
              }
		    }else{
              $(yPwd1).html("密码至少6位数字或字母");
		       $(yPwd1).prev().addClass("sjyx");
		    }
	     }
      }
	/***手机登入按钮***/
	$("#zcnn").click(e=>{
		var aPwd=reg2.test(dlPwd.value);
		var aName=reg1.test(dlName.value);
		var code=document.getElementById("phone-m").value;
		if(!((aName&&aPwd)&&(dlPwd.value==dlPwdc.value))){
			e.preventDefault();	  
		 }else if(isRegister="true"){
			var uname=dlName.value;
			var upwd=dlPwd.value;
			 ajax({
				type:"post",
				url:"data/users/register.php",
				data:"uname="+uname+"&upwd="+upwd+"&code="+code,
				dataType:"json"
			  }).then(resData1=>{
				  if(resData1=="0"){
				   alert("验证码错误");
				   $("#phone-tp").attr("src","data/users/code.php").prev().val("");
				  }else if(resData1=="false"){
					alert("注册失败!")
				  }else{
					alert("注册成功!");
					location="denglu.html";
				}
			  })		
		   }
	   })
	/***手机登入按钮***/
	$("#yxan").click(e=>{
		var aPwd1=reg2.test(dlPwd1.value);
		var aEmail=reg5.test(dlEmail.value);
		var code=document.getElementById("email-m").value;
		if(!((aEmail&&aPwd1)&&(dlPwd1.value==dlPwdc1.value))){
			e.preventDefault();	  
		 }else if(isRegister1="true"){
			var email=dlEmail.value;
			var upwd1=dlPwd1.value;
			 ajax({
				type:"post",
				url:"data/users/register1.php",
				data:"email="+email+"&upwd1="+upwd1+"$code="+code,
				dataType:"json"
			  }).then(resData1=>{
				  if(resData1=="0"){
				   alert("验证码错误");
				   $("#email-tp").attr("src","data/users/code.php").prev().val("");
				  }else if(resData1=="false"){
					alert("注册失败!")
				  }else{
					alert("注册成功!");
					 location="denglu.html";
				}
			  })		
		   }
	})
	/***回车键注册****/
	$(window).keyup(e=>{
		if(e.keyCode==13){ 
			$("#yxan").click();
			$("#zcnn").click();
		}
    })
    /***邮箱验证码图片的切换**/
    $("#email-tp").click(e=>{
	  var $tar=$(e.target);
	  $tar.attr("src","data/users/code.php");	
    });
	/***手机验证码图片的切换**/
	$("#phone-tp").click(e=>{
	  var $tar=$(e.target);
	  $tar.attr("src","data/users/code.php");	
    });
})