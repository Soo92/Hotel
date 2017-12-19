function inputCheck(){
	if(document.regFrm.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regFrm.email.focus();
		return;
	}
	if(document.regFrm.id.value==""){
		alert("이름을 입력해 주세요.");
		document.regFrm.name.focus();
		return;
	}
	if(document.regFrm.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regFrm.pass.focus();
		return;
	}
	if(document.regFrm.repass.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.pass.value != document.regFrm.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regFrm.repass.value="";
		document.regFrm.repass.focus();
		return;
	}
	document.regFrm.submit();
}

function win_close(){
	self.close();
}
