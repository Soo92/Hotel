<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//������ ��ȿȭ ��Ŵ(��������)
		session.invalidate();
%>
<script>
	alert("�α׾ƿ�");
	location.href = "../index.jsp";
</script>