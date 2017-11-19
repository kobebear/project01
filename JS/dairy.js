//按项目查看
//加载尾部
$("#footer").load("indexFooter.html");

//加载条目和分页
$(function(){
    function loadProductByPage(pno){
        $.get("data/diary/diary_info.php",{pno})
          .then(output=>{
            // console.log(data.pno);
            let fhtml="";
            for(let d of output.data){
                fhtml+=`
                    <li>
                        <p class="diary-t">
                            <a href="#">${d.title}</a>
                        </p>
                        <p class="diary-content">${d.content}</p>
                        <div>
                            <span></span>
                            <a href="#"></a>
                        </div>
                    </li>
                    `;
            }
            $("#diary-InfoC").html(fhtml);
            // let html = "";
            // html+="<li><a href=\"#\">上一页</a></li>";
            // if(data.pno-2>0){
            //     html += `
            // <li><a href="#">${data.pno-2}</a></li>
            // `;
            // }
            // if(data.pno-1>0){
            //     html += `
            // <li><a href="#">${data.pno-1}</a></li>
            // `;
            // }
            //
            // html += `
            // <li class="active"><a href="#">${data.pno}</a></li>
            // `;
            // if(data.pno+1<=data.pageCount){
            //     html += `
            // <li><a href="#">${data.pno+1}</a></li>
            // `;
            // }
            // if(data.pno+2<=data.pageCount){
            //     html += `
            // <li><a href="#">${data.pno+2}</a></li>
            // `;
            //
            // }
            // html+="<li><a href=\"#\">下一页</a></li>";
            // $("#pagination").html(html);
        })
    }
    //7:拼接计算
    loadProductByPage(1,8);
});
