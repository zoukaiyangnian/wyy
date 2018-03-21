/***** 页面加载********/
$(()=> {
    var lid = location.search.split("=")[1];
    $.ajax({
        type: "get",
        url: "data/products/getProductDetail.php",
        data: {lid: lid}
    }).then(data => {
        var html = "";
        html += `
           <div class="details-main">
             <div class="details-first">
                 <i></i>
                 <a href="index.html">首页 &gt;</a>
                 <a href="product.html?pname=${data.fname}">${data.fname}</a>
                 <b>&gt; ${data.title}</b>
            </div>
             <div class="details-second">
               <div class="main-pic">
                  <div  class="bg-pic" >
                           <img src="${data.pic1}" alt="">
                  </div>
                  <div id="main-pic">
                  </div>
                  <ul class="small-pic">
                     <li></li>
                     <li><img src="${data.pic1}"></li>
                     <li><img src="${data.pic2}"></li>
                     <li><img src="${data.pic3}"></li>
                     <li></li>
                 </ul>
                  <div class="fd-pic" id="show-pic">
                  </div>
                  <div class="asf" id="jq">
                  </div>
               </div>
               <div class="Com-details">
                   <h2>${data.title}</h2>
                   <div class="Com-pirce">
                         <p>
                            <span class="">售价:</span>
                            <b id="sprice">${parseFloat(data.price).toFixed(1)}</b>
                            <i id="onsale"><a>降价通知</a></i> 
                         </p>
                         <div class="scj">
                    <span>市场价:</span>
                   <b>${parseFloat(data.price*1.2).toFixed(1)}</b>
                   <ul class="member-price price-b" >
                     <li id="mpr">会员等级价格<b class="jiantou"></b></li>
                     <li data-hui="1">铜牌会员:<i>${parseFloat(data.price*0.95).toFixed(1)}</i></li>
                     <li data-hui="1">金牌会员:<i>${parseFloat(data.price*0.9).toFixed(1)}</i></li>
                     <li data-hui="1">钻石会员:<i>${parseFloat(data.price*0.85).toFixed(1)}</i></li>
                   </ul>
                 </div>
                   </div>
                   <div  class="Com-code">
                      <div class="code1">
                         <span class="">商品货号:</span>
                         <b>${data.product_code}</b> 
                      </div>
                      <div  class="code2">
                         <span >商品品牌:</span>
                         <b>JONFIT</b>
                      </div>
                   </div>
                   <div class="evaluate">
                      <div>
                        <span>累积评价:</span>
                        <b>${data.evaluate}人评价</b>
                      </div>
                      <div>
                        <span>累计销量:</span>
                        <b>${data.sales}</b>
                      </div>
                      <div>
                        <span>赠送积分:</span>
                        <b  id="integral">${parseInt(data.price)}</b>
                      </div>        
                   </div>
                   <div class="andard">
                     <div class="first">
                        <span>自提:</span>
                        <b>自提点列表</b>
                        <i>所在区域</i>
                         <div></div>
                        <div class="">
                        </div>
                 </div>
              <div class="second">
                    <span>规格:</span>
                    <a id="norms">${data.norms1}</a>
                    <a id="norms">${data.norms2}黄色</a>
                    <a id="norms">${data.norms3}褐色</a>
                    <a id="norms">${data.norms4}红色</a>
                </div>
                       <div class="Com-counts">
              <i>数量:</i>
             <span class="lf" id="btn-lf"></span>
             <input type="text" value="1" id="buy-count">
             <span class="rt" id="btn-rt"></span>
             <i>(库存${data.count})</i>
                       </div>
                 </div>
                   <div class="buy-button">
                      <i id="end"></i>
                      <input type="button" value="立即购买" class="gm">
                      <input type="button" value="加入购物车" class="jr" id="addCart">
                      <div id="shouC">
                         <i class="pp"></i>
                         <span>收藏</span>
                      </div>
                   </div>
              </div>
               <div class="shop-list">
                  <h2>
                   <span>卖家：</span>
                   <b>平台自营</b>
                  </h2>
                  <ul>
                   <li>
                     <span>商家名称:</span>
                     <b>JIONFIT官网商城</b>
                   </li>
                   <li>
                     <span>客服	QQ:</span>
                     <b class="qqtu"></b>
                   </li>
                   <li>
                     <span>客服旺旺:</span>
                     <b class="ww"></b>
                   </li>
                   <li>
                     <span>客服邮件:</span>
                     <b>oinfit@qq.com</b>
                   </li>
                   <li>
                     <span>客服电话:</span>
                     <b>0512-69383325</b>
                   </li>
                   <li>
                     <span>所在地区:</span>
                     <b>吴中区越溪镇前珠路16-8号</b>
                   </li>
                 </ul>
               </div>
             </div>
         </div>
        <!--降价通知-->
        <div class="pp1">
          <div class="p-title">
            <span>降价通知</span>
            <a id="p-close">关闭</a>
          </div>
          <div class="p-main">
            <div>
              <h3>${data.title}</h3>
              <p>
                  当商品价格低于您设定的价格我们将通知您，通知短信最多发送一次，
                  <br>不会对您造成干扰。
              </p>
            </div>
            <ul>
                 <li>
                   <span class="">现价 :</span>
                   <b class="jgd">${data.price}</b> 
                 </li>
                 <li>
                   <span class="">价格低于 :</span>
                   <input type="text" name="low-price" id="p-price">
                   <b>元时通知我！</b> 
                 </li>
                 <li>
                   <span>手机号码 :</span>
                   <input type="text" name="p-phone" id="p-phone">
                   <b> *手机号码方便我们以短信通知您</b> 
                 </li>
                 <li>
                   <span>邮箱 :</span>
                   <input type="text" name="p-email" id="p-email">
                   <b>您还可以通过邮件接收</b> 
                 </li>
                 <li>
                    <input type="button" value="发送" class="btn-fs">
                 </li>
            </ul>
          </div>
        </div>
       `
        $("#detail-main").html(html);

            /***换图片**/
            $(".small-pic").on("mouseenter","img",function(e){
                var $tar=$(e.target).attr("src");
                $(".bg-pic>img").attr("src",$tar);

            })
            /****放大镜****/
            $("#main-pic").on("mouseover",function(e){
                $("#jq").show();
                $("#show-pic").show();
            })
            $("#main-pic").on("mouseleave",function(e){
                $("#jq").hide();
                $("#show-pic").hide();
            })
            $("#main-pic").on("mousemove",function(e){
                var m="url("+$(".bg-pic>img").attr("src")+")";    
                var offsetX=e.offsetX,
                    offsetY=e.offsetY;
                var top=offsetY-200/2;
                var left=offsetX-200/2;
                top=top<0?0:top>200?200:top;
                left=left<0?0:left>200?200:left;
                $("#jq").css("top",top);
                $("#jq").css("left",left);
                var p=-left*2+"px "+(-top*2)+"px";
                $("#show-pic").css("backgroundImage",m);
                $("#show-pic").css("backgroundPosition",p);


            });
            /***小图片****/
            var $tp=$(".small-pic>li>img");
            $tp.each(function(e){
               if(this.src.slice(-3)!='jpg'){
                $(this).parent().css("display","none");
               }
             });

             /******订单详情*****/
            $("#onsale").click(e=>{
                $(".pp1").css("display","block");
            })
            $("#p-close").click(e=>{
                $(".pp1").css("display","none");
            })
            $(".btn-fs").click(e=>{
                var $pr=$("#p-price").val();
                var $ph=$("#p-phone").val();
                var $em=$("#p-email").val();
                if($pr!=""&&$ph!=""&&$em!="")
                    $(".pp1").css("display","none");
                else
                    alert("价格、手机号或邮箱号内容不能为空！")
            })
            $("#mpr").mouseenter(function(e){
                $tar=$(this).parent();
                $tar.removeClass("member-price").addClass("member-price1").children().show();
            })
            $("#mpr").mouseleave(function(e){
                $tar=$(this).parent();
                $tar.removeClass("member-price1").addClass("member-price");
                $("[data-hui=1]").hide();
            });
            $("div.second").on("click","a",function(e){
                if($(e.target).hasClass("guige")){
                    $(e.target).removeClass("guige");
                    console.log(1);
                }else{
                    $(e.target).addClass("guige").siblings().removeClass("guige");
                }
                if($(e.target).hasClass("guige"))
                    $(".andard").removeClass("andard1");
            });
           /* $("#norms").click(e=>{
                $(e.target).toggleClass("guige");
                if($(e.target).hasClass("guige"))
                    $(".andard").removeClass("andard1");
            })*/
            // 调整购买数量
            var price=parseInt($("#sprice").html())
            var integral=parseInt($("#integral").html());
            var sum=parseInt($("#btn-rt").next().html().slice(3));
            $("#btn-lf").mouseenter(e=>{
                if($("#buy-count").val()>1){
                    $("#btn-lf").css("background","url(img/goods_act.png) no-repeat  -44px -40px");
                }else{
                    $("#btn-lf").css("background","url(img/goods_act.png) no-repeat -44px -25px");
                }
            })
            $("#btn-lf").mouseleave(e=>{
                $("#btn-lf").css("background","url(img/goods_act.png) no-repeat -44px -25px");
            })
            $("#btn-rt").mouseenter(e=>{
                if($("#buy-count").val()<sum){
                    $("#btn-rt").css("background","url(img/goods_act.png) no-repeat  -60px -40px");
                }else{
                    $("#btn-rt").css("background","url(img/goods_act.png) no-repeat -60px -25px");
                }
            })
            $("#btn-rt").mouseleave(e=>{
                $("#btn-rt").css("background","url(img/goods_act.png) no-repeat -60px -25px");
            })
            $("#btn-lf").click(e=>{
                var p=$("#buy-count").val();
                if(p>1){
                    p--;
                    $("#buy-count").val(p);
                    $("#sprice").html(price*p+".0");
                    $("#integral").html(integral*p);
                }
            })
            $("#btn-rt").click(e=>{
                var p=$("#buy-count").val();
                if(p<sum){
                    p++;
                    $("#buy-count").val(p);
                    $("#sprice").html(price*p+".0");
                    $("#integral").html(integral*p);
                }
            })
            //立即购买
            function Fs() {
				var p=$("#buy-count").val()
                var guiges = $("div.second>a");
                for (var i = 0,n=0; i < guiges.length; i++) {
                    if (guiges[i].className == "guige")
                        n++;
                }
                if(n==0){
                    $(".andard").addClass("andard1");
                    alert("必须选一种规格");
                }else{
                    $(".andard").removeClass("andard1");
                    $.ajax({
					   type:"get",
					   url:"data/shopping-cart/insertCart.php",
                       data:{lid:lid,count:p}
					}).then(data=>{			
						  if(data.ok==0){
							alert("请登录您的账号");
							location="denglu.html?back="+location.href;
						  }else if(data.ok==1) {
						     var num=parseInt(document.getElementById('end').innerHTML)
                                  num++;
                              document.getElementById('end').innerHTML=num;
                              addProduct()
						  }
					  })
					}
                }         

            /******立即购买**********/
         //   $(".gm").click(e=>{Fs()});
			/*******加入购物车*******/
            $(".jr").click(e=>{Fs()});
            // 收藏按钮
            $("#shouC").click(function(e){
               $.ajax({
					   type:"get",
					   url:"data/person/insertCollect.php",
                       data:{lid:lid}
					}).then(data=>{			
						  if(data.ok==0){
							alert("请登录您的账号");
							location="denglu.html?back="+location.href;
						  }else{
							 if($(this).children("i").hasClass("pp")&&data.ok==1){
                               $(this).children("i").removeClass("pp").addClass("pped");
                             }else{
                               $(this).children("i").removeClass("pped").addClass("pp");
				             }		
						  }
					  })
               
            })
           //飞行效果
          function addProduct() {
              var offset = $('#end').offset()
              var offset1=$('#addCart').offset()
                var flyer = $('<img class="u-flyer" src="img/icon_cart1.png"/>');
               flyer.fly({
                start: {
                    left: offset1.left+60,
                    top: (offset1.top-window.scrollY)
                },
                end: {
                    left:offset.left+5,
                    top: (offset.top-window.scrollY+5),
                    width: 5,
                    height: 5
                }
            });
             }
           })

});
/*****js文件***/

