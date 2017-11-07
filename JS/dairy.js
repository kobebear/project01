$(function(){
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
        }
    })








})