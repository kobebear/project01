//按医生查看
//加载尾部
$("#footer").load("indexFooter.html");

//加载条目和分页
$(()=> {
  function loadProductByPage(pno,countrys,titles,qualifys,years,edu_levels) {
    var search="pno="+pno;
    if(countrys.length!=0){
      for(var i=0;i<countrys.length;i++){
        search+="&country[]="+countrys[i];
      }
    }
    if(titles.length!=0){
      for(var i=0;i<titles.length;i++){
        search+="&title[]="+titles[i];
      }
    }
    if(qualifys.length!=0){
      for(var i=0;i<qualifys.length;i++){
        search+="&qualify[]="+qualifys[i];
      }
    }
    if(years.length!=0){
      for(var i=0;i<years.length;i++){
        search+="&years[]="+years[i];
      }
    }
    if(edu_levels.length!=0){
      for(var i=0;i<edu_levels.length;i++){
        search+="&edu_level[]="+edu_levels[i];
      }
    }
    $.get("data/doctor/queryDoctor.php",search).then(result => {
      let data = result.data;
      console.log(data);
      let fhtml = "";
      for (let d of data) {
        fhtml += `
                   <li class="docDel">
                    <div class="doc-pic-name">
                        <img src="${d.pic}" alt="">
                    </div>
                    <div class="rightText">
                        <a href="#" class="doc-name">${d.doctor_name}</a>
                        <p class="fp"><span>所在机构: ${d.hospital}</span></p>  
                        <p><span>当前职务: ${d.title}</span></p>
                        <p ><span>擅长项目: <a href="#" class="skills">${d.skills}</a></span></p>
                        <p>${d.qualify} | ${d.years} | ${d.country} | ${d.edu_level}</p>
                    </div>
                    <div></div>
                </li>
                    `;
      }
      $("ul.btmul").html(fhtml);
          let html = "";
          html+="<li><a href=\"#\">上一页</a></li>";
          if(data.pno-2>0){
              html += `
                      <li><a href="#">${data.pno-2}</a></li>
                      `;
          }
          if(data.pno-1>0){
              html += `
                      <li><a href="#">${data.pno-1}</a></li>
                      `;
          }
          html += `<li class="active"><a href="#">${data.pno}</a></li>`;
          if(data.pno+1<=data.pageCount){
              html += `
                      <li><a href="#">${data.pno+1}</a></li>
                      `;
          }
          if(data.pno+2<=data.pageCount){
              html += `
                      <li><a href="#">${data.pno+2}</a></li>
                      `;

          }
          html+="<li><a href=\"#\">下一页</a></li>";
          $("#pagination").html(html);
      })
      }
      //7:拼接计算
  loadProductByPage(1,["大陆"],[],[],[],[],[]);
  $(".optul").click(function(e){
    if($(e.target).is("a")){
      var $a=$(e.target);
      if($a.parent().prev().is(":contains(所在国家)")){
        $a.toggleClass("on");
        if(!$a.parent().is(":has(.on)")) $a.parent().children().first().addClass("on");
      }else{
        if($a.is(":first-child")) $a.addClass("on").siblings().removeClass("on");
        else{
          $a.toggleClass("on");
          if($a.parent().is(":has(:not(:first-child).on)"))
            $a.siblings(":first-child").removeClass("on");
          else
            $a.siblings(":first-child").addClass("on");
        }
      }
    }
    e.preventDefault();
    var $ul=$(this);
    var countrys=[],titles=[],qualifys=[],years=[],edu_levels=[];
    var $as=$ul.find("span:contains(所在国家)+p>a.on");
    $as.each((i,elem)=>{
      countrys.push(elem.innerHTML);
    });
    var $as=$ul.find("span:contains(医生职务)+p>a:not(:first-child).on");
    $as.each((i,elem)=>{
      titles.push(elem.innerHTML);
    });
    var $as=$ul.find("span:contains(医生资质)+p>a:not(:first-child).on");
    $as.each((i,elem)=>{
      qualifys.push(elem.innerHTML);
    });
    var $as=$ul.find("span:contains(从医年限)+p>a:not(:first-child).on");
    $as.each((i,elem)=>{
      years.push(elem.innerHTML);
    });
    var $as=$ul.find("span:contains(最高学历)+p>a:not(:first-child).on");
    $as.each((i,elem)=>{
      edu_levels.push(elem.innerHTML);
    });
    loadProductByPage(1,countrys,titles,qualifys,years,edu_levels);
  })
});