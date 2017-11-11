$(function(){
    function loadProductByPage(pno,pageSize){
        $.ajax({
            type:"GET",
            url:"data/diary/diaryinfo.php",
            success:function(data){
                var html="";
                for(var i of data ){
                    html+=`
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
                $("#diary-InfoC").html(html);

                var html = "";
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
                $("#pagination").html(html);
            },
            error:function(){
                alert("网络故障，请检查");
            }
        });
        //7:拼接计算
        loadProductByPage(1,8);
    }
})