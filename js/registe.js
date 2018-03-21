$(()=>{
	var $form=$(".form1");
	$(".form1 .btn-n").click(()=>{
		$.post("data/registe.php",$form.serialize())
			.then(text=>{
			if(text=="false"){
				alert("注册失败,请重新注册!");
				location="registe.html";
			}else{
				alert("注册成功!");
				location="index.html";
			}
		})
	});
	$(window).keyup(e=>{
		if(e.keyCode==13) $(".form>.btn-n").click();
	})
})