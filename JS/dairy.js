//加载尾部
(()=>{
    ajax("get","indexFooter.html","","text").then(html=>{
        document.getElementById("footer").innerHTML=html;
    });

})();

//加载条目和分页
$(function(){
    function loadProductByPage(pno,pageSize){
        $.ajax({
            type:"GET",
            url:"../data/diary/diaryInfo.php",
            success:function(data){
                // let fhtml="";
                console.log(data);
                for(let i of data){
                    fhtml+=`
                    <li>
                        <p class="diary-t">
                            <a href="#">${i.title}</a>
                        </p>
                        <p class="diary-content">${i.content}</p>
                        <div>
                            <span></span>
                            <a href="#"></a>
                        </div>
                    </li>
                    `;
                }
                $("#diary-InfoC").html(fhtml);
     //
     //            let html = "";
     //            if(data.pno-2>0){
     //                html += `
     // <li><a href="#">${data.pno-2}</a></li>
     // `;
     //            }
     //            if(data.pno-1>0){
     //                html += `
     // <li><a href="#">${data.pno-1}</a></li>
     // `;
     //            }
     //
     //            html += `
     // <li class="active"><a href="#">${data.pno}</a></li>
     // `;
     //            if(data.pno+1<=data.pageCount){
     //                html += `
     // <li><a href="#">${data.pno+1}</a></li>
     // `;
     //            }
     //            if(data.pno+2<=data.pageCount){
     //                html += `
     // <li><a href="#">${data.pno+2}</a></li>
     // `;
     //            }
     //            $("#pagination").html(html);
            },
            error:function(){
                alert("网络故障，请检查");
            }
        }).then(data=>{
            console.log(data);
        })
    }
    //7:拼接计算
    loadProductByPage(1,8);
});