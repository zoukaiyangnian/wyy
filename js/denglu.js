$(()=>{
	var dlName=document.getElementById("email");
	var dlPwd=document.getElementById("upwd");
	var yPwd=document.getElementById("ypwd");
	var yName=document.getElementById("yname");
	var form=document.getElementById("form1");
	var reg1=/^\w{6,}$/;
	var reg2=/(^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$)|(^\d{11}$)/;
/**密码失去焦点***/	
dlPwd.onblur=function(){
		if(dlPwd.value===""){
		  yPwd.innerHTML="";
		  dlPwd.setAttribute("placeholder","密码不能为空");
		  dlPwd.className="kong";
		}else{
		  if(reg1.test(dlPwd.value))
			yPwd.innerHTML="";
		  else
			yPwd.innerHTML="密码至少6位数字或字母";  
		}
	 }
	
/**用户名失去焦点***/	
dlName.onblur=function(){
		if(dlName.value===""){
		  yName.innerHTML="";
		  dlName.setAttribute("placeholder","邮箱或手机号不能为空");
		  dlName.className="kong";
		}else{
		  if(reg2.test(dlName.value))
			yName.innerHTML="";
		  else
			yName.innerHTML="邮箱或手机格式错误";
		}
	}
/***点击登录按钮提交**/
$("#anniu").click(e=>{
	   var aPwd=reg1.test(dlPwd.value);
	   var aName=reg2.test(dlName.value);
	   if(!(aName&&aPwd)){
			e.preventDefault();
	   }else{
            var uname=document.getElementById("email").value;
			var upwd=document.getElementById("upwd").value;	
			var code=document.getElementById("code").value;
		  ajax({
			type:"post",
			url:"data/users/login.php",
			data:"uname="+uname+"&upwd="+upwd+"&code="+code,
			dataType:"json"
		  }).then(resData=>{
			  console.log(location.search!=="")
			 if(resData=="0"){
			     alert("验证码错误");
				 $("#yztp").attr("src","data/users/code.php").prev().val("");
			 }else if(resData=="2"){
				alert("用户名或密码不正确!")
			}else{
				alert("登录成功!");
				if(location.search!==""){			
					var back=location.search.slice(6);
					location=back;
				}else{
					location="index.html";
				}
			}
		  })
		
	   }
   })
/***回车键提交**/
$(window).keyup(e=>{
		if(e.keyCode==13) $("#anniu").click();
  })
/****改变验证码***/
  $("#yztp").click(e=>{
	  var $tar=$(e.target);
	  $tar.attr("src","data/users/code.php");	
  });
})