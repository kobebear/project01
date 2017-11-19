//按医生查看
//加载尾部
$("#footer").load("indexFooter.html");

//加载条目和分页
$(()=>{
    function loadProductByPage(pno) {
        $.get("data/doctor/queryDoctor.php",{pno}).then(result => {
            var data=result.data;
            let fhtml="";
            for(let d of data){
                console.log(d);
                fhtml+=`
                   <li>
                    <div class="doc-pic-name">
                        <img src="${d.pic}" alt="">
                        <a href="" class="doc-name">${d.doctor_name}</a>
                    </div>
                    <p><span>机构:</span><span>${d.hospital}</span></p>
                    <p><span>技能: </span>${d.skills}</p>
                    <div>
                    </div>
                </li>
                    `;
            }
            $("UL.btmul").html(fhtml);
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