	(()=>{
		ajax("get","indexHead.html","","text").then(html=>{
			document.getElementById("header").innerHTML=html;
		});
	})();
