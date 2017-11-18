//加载头部和尾部
(()=>{
    ajax("get","indexFooter.html","","text").then(html=>{
        document.getElementById("footer").innerHTML=html;
    });

})();
(()=>{
    ajax("get","indexHead.html","","text").then(html=>{
        document.getElementById("header").innerHTML=html;
    });
})();

//加载广告轮播
(()=>{
  ajax("get","data/index/banner.php","")
    .then(data=>{
    const LIWIDTH=1920;
    var htmlImgs="";//保存图片li的HTML片段
    //for(var i=0;i<data.length;i++){
      //var p=data[i];
    data.push(data[0]);
    for(var p of data){
      htmlImgs+=`<li>
              <a href="${p.href}" title="${p.title}">
                <img src="${p.img}">
              </a>
            </li> `;
    }
    var bannerImg=
      document.getElementById("banner-img");
    bannerImg.style.width=
      LIWIDTH*data.length+"px";
    bannerImg.innerHTML=htmlImgs;
    document.getElementById("indicators")
            .innerHTML=
              "<li></li>".repeat(data.length-1);
    $("#indicators>li:first").addClass("hover");

    var i=0,wait=3000,timer=null;
        $banner=$(bannerImg);
    function move(){
      timer=setTimeout(()=>{
        if(i<data.length-1){
          i++;
          $banner.css("left",-LIWIDTH*i);
          if(i<data.length-1)
            $("#indicators>li:eq("+i+")")
              .addClass("hover")
              .siblings().removeClass("hover");
          else
            $("#indicators>li:eq("+0+")")
            .addClass("hover")
            .siblings().removeClass("hover");
          move();
        }else{
          $(bannerImg).css("transition","")
          $banner.css("left",0);
          setTimeout(()=>{
            $(bannerImg)
              .css(
              "transition","all .3s linear");
            i=1;
            $banner.css("left",-LIWIDTH*i);
            $("#indicators>li:eq("+i+")")
            .addClass("hover")
            .siblings().removeClass("hover");
          },50);
          $("#indicators>li:eq("+i+")")
            .addClass("hover")
            .siblings().removeClass("hover");
          move();
        }

      },3000);
    }
    move();
    $("#banner").hover(
      ()=>clearTimeout(timer),
      ()=>move()
    );
    $("#indicators")
      .on("mouseover","li",function(){
      var $this=$(this);
      if(!$this.hasClass("hover")){
        i=$this.index();
        $banner.css("left",-LIWIDTH*i);
        $("#indicators>li:eq("+i+")")
              .addClass("hover")
              .siblings().removeClass("hover");
      }
    })
  })
})();
 $(()=>{
	$("#sidebar").hover(
	e=>$("#desc").show(),
	e=>$("#desc").hide()
)});
//导航详细页
(()=>{
		var title="";
	//$title为所有的span的内容 需要获得当前的span的text然后拼url 添加mouseenter 和mouseout
	$("#sidebar>ul").on("mouseenter","span",function(){
		title=$(this).text();
		var url="data/index/details.php?title="+title;
	    ajax("get",url,"").then(data=>{
		//返回一个json 数组 需要用split切割成数组
		var arr=data[0].content.split(",");
		//`<h3>title</h3><hr><p><a>content</a><a>content</a><p>` 然后插入到id=desc中
		var html="";
		for(var i=1;i<arr.length;i++){
			html+=`<a class="content" href="#">${arr[i]}</a>`;
		}
		$("#desc").html(`<h3 class="title">${data[0].title}<\/h3><hr><p>${html}<p>`);
		})
	});

})();
//医生图片加载  php端输出false
(()=>{
    $.ajax({
        type:"GET",
        url:" data/index/floor1.php",
        data:"",
        success:function(data){
              for(var i in data){
              $("#doctors.sql>ul>li>a").eq(i).css("background","url('"+data[i].img+"')");
            }
        },
        error:function(){
            alert("网络连接故障");
        }
   });
  })();
//真实案例图片加载
(()=>{
    $.ajax({
        type:"GET",
        url:" data/index/realcase.php",
        data:"",
        success:function(data){
              for(let i in data){
             $("#right-details>li").children("a").eq(i).css("background","url('"+data[i].sm+"')");
             $("#floor2>div").css("background","url('"+data[i].bm+"')");
         }},
        error:function(){
            alert("网络连接故障");
        }
   });
  })();

(()=>{
      $.ajax({
        type:"GET",
        url:" data/index/realcase.php",
        data:"",
        success:function(data){
              $("#leftdiv").css("background","url('"+data[0].bm+"')");
              $("#rightdiv").css("background","url('"+data[1].bm+"')");
             $("#right-details").on("mouseover","a",function(e){
                  e.preventDefault();
                  var i=$(this).parent().index();
                  if(i%2==1){
                    var l=i-1;
                    var r=i;
                  }else{
                    var l=i; var r=i+1;
                  }
                    $("#leftdiv").css("background","url('"+data[l].bm+"')");
                    $("#rightdiv").css("background","url('"+data[r].bm+"')");
                     // console.log(data[l].bm,data[r].bm);
               })
         },
        error:function(){
            alert("网络连接故障");
        }
   });
  })();
//品牌信息
$(()=>{
    function loadPic(){
        //获取$("#brandD")中class为.hover的li
        var $li=$("#brandD>.hover");
        //发送ajax请求
        $.ajax({
            type:"GET",
            url:"data/index/brandMessage.php",
            data:{"pid":$li.index()+1},
            success:function(data){
                var html="";
                $("#smpic1").css("background-image","url("+data.img1+")");
                $("#smpic2").css("background-image","url("+data.img2+")");
                $(".device").css("background-image","url("+data.bg+")");
                html=`<span id="brand-title">${data.title}</span><p id="brand-message">${data.msg}</p>`;
                $("#brandc").html(html);
            },
            error:function(){
                alert("网络连接有误！");
            }
        })
    }
    loadPic();
    $("#brandD").on("mouseenter","li",function(){
        //获得当前li
        var $li=$(this);
        if(!$li.is(".hover")) {
            $li.addClass("hover").siblings().removeClass("hover");
            loadPic();
        }

    });
});