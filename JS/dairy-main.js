$(()=>{
    $.get("data/diary/diary_info.php")
        .then(result=>{
          console.log(result);
            var data=result.data;
            var html="";
            for(var d of data){
                html+=`
                <div class="i masonry-block">
                    <span class="span1">${d.days}</span>
                    <img src="${d.after_pic}" class="img1"/>
                    <img src="${d.before_pic}" />
                    <ul>
                        <li><span></span><a href="#"></a><span></span><a href="#"></a><span></span><a href="#"></a></li>
                        <li><span>满意 :</span><span class="star-f"></span></li>
                        <li><span>项目 :</span><a href="#">${d.project}</a></li>
                        <li><span>医生 :</span><a href="#">${d.doctor_name}</a></li>
                        <li><span>医院 :</span><a href="#">${d.hospital}</a></li>
                    </ul>
                </div>
                `
            }
            $("#container").html(html)
            setTimeout(()=>{
                $("#container").masonry({
                    itemSelector: '.masonry-block',
                    columnWidth: 240
                });
            },50);
        })
})