function inputCheck(){
	if(document.regFrm.email.value==""){
		alert("�̸����� �Է��� �ּ���.");
		document.regFrm.email.focus();
		return;
	}
	if(document.regFrm.id.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.name.focus();
		return;
	}
	if(document.regFrm.pass.value==""){
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.regFrm.pass.focus();
		return;
	}
	if(document.regFrm.repass.value==""){
		alert("��й�ȣ�� Ȯ���� �ּ���");
		document.regFrm.repass.focus();
		return;
	}
	if(document.regFrm.pass.value != document.regFrm.repass.value){
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.regFrm.repass.value="";
		document.regFrm.repass.focus();
		return;
	}
	document.regFrm.submit();
}

function win_close(){
	self.close();
}
