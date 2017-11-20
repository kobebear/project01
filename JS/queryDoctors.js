//按医生查看
//加载尾部
$("#footer").load("indexFooter.html");

//加载条目和分页
$(()=> {
  function loadProductByPage(pno) {
    $.get("data/doctor/queryDoctor.php", {pno}).then(result => {
      let data = result.data;
      // console.log(data);
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
                        <p><span>当前职务: ${d.qualify}</span></p>
                        <p ><span>擅长项目: <a href="#" class="skills">${d.skills}</a></span></p>
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
  loadProductByPage(1);
});