<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		//세션을 무효화 시킴(세션제거)
		session.invalidate();
%>
<script>
	alert("로그아웃");
	location.href = "../index.jsp";
</script>