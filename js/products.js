/***********选择内容************/
$(()=>{ $(".pd-left>ul").on("click","li",function(e){
          var $tar=$(this).children(); 
          var pname=$tar.text();
          $("#species").text(pname);
		    loadPage(pageNo=1,pname);		  
        })
});
function loadPage(pageNo=1,pname){
	var pageSize=16;
    var pname=pname==null?"":pname;	
	var query={pageNo,pageSize,pname};
	var search=location.search;
	if(search!==""){
		query.kw=decodeURI(search.split("=")[1]);
	}
	$.get("data/products/getProducts.php",query)
		.then(result=>{
		var {pageNo,pageCount,data}=result;
		var html="";
		for(var p of data){
			html+=`<li>
                   <div class="item">
                    <a href="product-details.html?lid=${p.lid}">
                     <div class="product-mian">
                       <img src="${p.pic1}">
                     </div>
                     <div class="products">
                        <ul class="xiaotu">
                         <li><img 
                         src="${p.pic1}"></li>
                         <li><img 
                         src="${p.pic2}"></li>
                         <li><img 
                         src="${p.pic3}"></li>
                        </ul>
                     </div>
                     <div class="text">
                        <h3> ${p.title}</h3>
                        <b>${p.product_code}</b>
                        <span class="leixin">${p.fname}</span>
                     </div>
                    </a>
                   </div>
                 </li>`       
		}
		document.getElementById("show")
			.innerHTML=html;
		//$(".leixin").html(pname);
		html=`<a href="javascript:;" class='${pageNo==1?"previous disabled":"previous"}'>上一页</a>`;
		for(var i=1;i<=pageCount;i++){
			html+=`<a href="javascript:;" class=${pageNo==i?"current":""}>${i}</a>`
		}
		html+=`<a href="javascript:;" class='${pageNo==pageCount?"next disabled":"next"}'>下一页</a> `;
		document.getElementById("pages").innerHTML=html;
		var $tp=$(".xiaotu>li>img");
		   $tp.each(function(e){
			   if(this.src.slice(-3)!='jpg'){
				   $(this).parent().css("display","none");
			   }
		   });
		$(".xiaotu").on("mouseenter","li",function(e){
		   var $tar=$(this);
		       var p=$tar.children().attr("src");
			   $tar.parent().parent().prev().children().attr("src",p);
	    })
	})
};
loadPage();
(()=>{
	var divPages=document.getElementById("pages");
	divPages.onclick=e=>{
		var tar=e.target;
		if(tar.nodeName=="A"
			&&!/disabled|current/.test(tar.className)){
			var i=1;
			if(/previous/.test(tar.className)){
				var a=divPages.querySelector(".current");
				i=parseInt(a.innerHTML)-1;
			}else if(/next/.test(tar.className)){
			
				var a=divPages.querySelector(".current");
				i=parseInt(a.innerHTML)+1;
			}else{
				i=parseInt(tar.innerHTML);
				console.log(3);
			}
			loadPage(pageNo=i);
		}
	};
})();