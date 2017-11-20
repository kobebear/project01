//加载头部和尾部
$(()=>{
    $("#header").load("indexHead.html");
    $("#footer").load("indexFooter.html");
})

//加载广告轮播
$(()=>{
  $.get("data/index/banner.php")
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
});
 $(()=>{
	$("#sidebar").hover(
	e=>$("#desc").show(),
	e=>$("#desc").hide()
)});
//导航详细页
$(()=>{
		var title="";
	//$title为所有的span的内容 需要获得当前的span的text然后拼url 添加mouseenter 和mouseout
	$("#sidebar>ul").on("mouseenter","span",function(){
		title=$(this).text();
		var url="data/index/details.php?title="+title;
	    $.get(url).then(data=>{
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

});
//医生图片加载  php端输出false
$(()=>{
    $.get("data/index/floor1.php")
        .then(data=>{
              for(var i in data){
              $("#doctors.sql>ul>li>a").eq(i).css("background","url('"+data[i].img+"')");
            }
        })
});
//真实案例图片加载
$(()=>{
    $.get("data/index/realcase.php")
        .then(data=>{
              for(let i in data){
             $("#right-details>li").children("a").eq(i).css("background","url('"+data[i].sm+"')");
             $("#floor2>div").css("background","url('"+data[i].bm+"')");
         }})
});

$(()=>{
      $.get("data/index/realcase.php")
          .then(data=>{
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
         })
});
//品牌信息
$(()=>{
  $("#floor3 #brandD>div:not(.box)").css("top",i=>i*50);
  $("#floor3 #brandD>a").css("top",i=>i*50);
  var TOP=50;
  $.get("data/index/brandMessage.php")
    .then(data=>{
      var html = "";
      for (var d of data) {
        html+=`
         <div class="device fade" style="background-image:url(${d.bg})">
            <div class="d-right" id="d-right">
              <div id="brandc">
                <span id="brand-title">${d.title}</span>
                <p id="brand-message">${d.msg}</p>
              </div>
              <div class="smpic1" style="background-image:url(${d.img1})"></div>
              <div class="smpic2" style="background-image:url(${d.img2})"></div>
            </div>
        </div> 
       `;
      }
      $("#container").html(html).children().first().addClass("in");
      $("#brandD").on("mouseenter","a",function(){
        //获得当前li
        var $a=$(this);
        var i=$("#brandD a").index($a);
        $("#brandD .box").css("top",i*50);
        $a.addClass("hover").siblings("a").removeClass("hover");
        $("#container>div:eq("+i+")").addClass("in").siblings().removeClass("in");
      })
    });
});