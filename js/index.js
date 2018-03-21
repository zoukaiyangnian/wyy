
/**************轮播图***********/
	$(()=>{
	   var n=1;
	   var imgs=document.querySelector(".zhutu");
	   function task(){
		   n++;
		  if(n<=4){
			  imgs.style.backgroundImage=`url('img/${n}.jpg')`
		  }else{
			  imgs.style.backgroundImage=`url('img/${1}.jpg')`
			  n=1;
		  }
		}
		var timer=setInterval(task,3000);
		$(".rd").click(e=>{
            clearInterval(timer);
			var $img=$(e.target);
            $(".zhutu").removeAttr("style");
			$(".zhutu").attr("style",`background-image:`+$img.data("target"));
            n=parseInt((imgs.getAttribute("style")).slice(-8));
		})
		$(".zhutu").mouseover(()=>{
			 clearInterval(timer);
		  })
		$(".zhutu").mouseout(()=>{
			 timer=setInterval(task,3000);
		  })
		$(".lt-a").click(e=>{
              clearInterval(timer);
           if((imgs.getAttribute("style")))
               n=parseInt((imgs.getAttribute("style")).slice(-8))
			    n--;
		       if(n==0){n=4}
               imgs.style.backgroundImage=`url('img/${n}.jpg')`
		  })
        $(".rt-a").click(e=>{
            clearInterval(timer);
            if((imgs.getAttribute("style")))
                n=parseInt((imgs.getAttribute("style")).slice(-8))
            n++;
            if(n==5){n=1}
            imgs.style.backgroundImage=`url('img/${n}.jpg')`
        })
	})
/*************图片展示左右移动***************/
 $(()=>{
 	"use strict";
 	var width=192;
 	var num=parseInt(parseInt($('#tulists').css("width"))/width);
 	var n=0;
 	$('.zslt').click(()=>{
 		n--;
 		$('#tulists').css('left',n*width)
        if(n==1-num) n=-6
	});
     $('.zsrt').click(()=>{
     	if(n<0) {
            n++;
            $('#tulists').css('left', n * width)
        }
     })
 })
 /************视频旋转********/
$(()=>{
    var arr=["aa1","aa2","aa3","aa4","aa5","aa6","aa7","aa8"];
	//循环遍历数组的类名
	function forList(){
			"use strict";
			$("#showpic li").each((i,e)=>{$(e).removeClass().addClass(arr[i])})
		}
	//下一张图片
	function nextImg() {
			arr.push(arr[0])
			arr.shift();
			forList()
		}
	//上一张图片
	function lastImg(){
			"use strict";
			arr.unshift(arr[arr.length-1])
			arr.pop()
			forList()
		}
	//下两张图片
	function nextTwoImg(){
			"use strict";
			arr.push(arr[0],arr[1])
			arr.shift();
			arr.shift();
			forList()
		}
	//上两张图片
	function lastTwoImg(){
			"use strict";
			arr.unshift(arr[arr.length-2],arr[arr.length-1])
			arr.pop();
			arr.pop();
			forList()
		}
		$('.xztp').on("click",".aa2", (e) => {
			"use strict";
			nextImg()
		})
		$('.xztp').on("click",".aa3",(e)=>{
			"use strict";
			nextTwoImg()
		})
		$('.xztp').on("click",".aa8", (e) => {
			"use strict";
			lastImg()
		})
		$('.xztp').on("click",".aa7", (e) => {
			"use strict";
			lastTwoImg()
		})
})