(()=>{
	ajax("get","header.html","","text").then(
		html=>{
		document.getElementById("header").innerHTML=html;
	})
})();