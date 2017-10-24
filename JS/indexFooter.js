(()=>{
		ajax("get","indexFooter.html","","text").then(html=>{
			document.getElementById("footer").innerHTML=html;
		});
	
	})();
