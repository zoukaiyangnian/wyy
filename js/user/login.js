$(()=>{
  $(".login>div").on("focus","input",getFocus);
  $(".login>div").on("blur","input",getBlur);
});
$(()=>{
  $("form").validate({
    submitHandler(form){
      $.post("../data/users/login.php",//提交登录信息给数据库
        $(form).serialize()
      ).then(text=>{
        if(text=="false"){
          $(form)[0].reset();
          alert("用户名或密码不正确!")
        }else{
          alert("登录成功,正在跳转跳转回原来页面!");
          if(location.search!==""){
            var back=location.search.slice(6);
            location=back;
          }else{
            location="../index.html";
          }
        }
      })
    },
    rules:{
      uname:{
        required:true
        //remote:()=$.post("../data/users/verify.php",//验证用户名
        //$(form).serialize()
        //).then(text=>{
        //  if(text=="false"){//查到有该用户存在
        //    return true
        //  }else{
        //    return false
        //  }
        //})
      },
      upwd:{
        required:true
      }
    },
    messages:{
      uname:{
        required:"请输入用户名!",
        remote:"没有该用户存在!"
      },
      upwd:{
        required:"请输入密码!"
      }
    }
  })
});
