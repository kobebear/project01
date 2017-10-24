(()=>{
//	SESSOIN_START();
//	var vcode_fail_count=sessionStorage.getItem("vcode_fail_count");
//	if(vcode_fail_count==null)
//		vcode_fail_count=1;
//
//	function validatorVcode(){
//		sessionStorage.setItem("vcode_fail_count",vcode_fail_count);
//		if(vcode_fail_count>4){
//			$("#code").display=block;
//		}
//	};
//	validatorVcode();

	$("[name=submit]").click(function(e){
		e.preventDefault();
		var u=$("[name=uname]").value;
		var p=$("[name=upwd]").value;
//		var v=$("[name=vcode]").value;
		
		var ureg=/^[a-z0-9]{3,12}$/i;
		var preg=/^[a-z0-9]{3,12}$/i;
		var vreg=/^[0-9]{4}$/i;

		if(!ureg.test(u)){
			$("#msgu").html("密码格式不正确!");
			exit;
		}
		if(!preg.test(p)){
			$("#msgp").html("用户名格式不正确!");
			exit;
		}
//		if(!vreg.test(v)&&vcode_fail_count>4){
//			alert("验证码错误!");
//			exit;
//		}
		
		$.ajax(
			url:
			data:{uname:u,upwd:p},
			success:function(){
		
		}
			error:function(){
		
		}
		
		)
	});
})();
	
