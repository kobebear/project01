//按医生查看
//加载尾部
(()=>{
    $.get("indexFooter.html").then(html=>{
        document.getElementById("footer").innerHTML=html;
    });
})();

//加载条目和分页
$(function() {
    function loadProductByPage(pno, pageSize) {
        $.get("data/diary/diary_info.php").then(result => {
            var data=result.data;
            let fhtml="";
            for(let i of data){
                fhtml+=`
                   <li>
                    <div class="doc-pic-name">
                        <img src="${}" alt="">
                        <a href="" class="doc-name">田晓晨</a>
                    </div>
                    <p><span>资质:</span><span>暂无</span></p>
                    <p><span>机构:</span><span>上海复旦大学附属华东医院</span></p>
                    <div>
                    </div>
                </li>
                    `;
            }
            $("#diary-InfoC").html(fhtml);
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

                    html += `
                        <li class="active"><a href="#">${data.pno}</a></li>
                    `;
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
            loadProductByPage(1,8);

});