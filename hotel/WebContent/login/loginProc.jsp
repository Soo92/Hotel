<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		boolean result = mgr.loginMember(email, pass);
		String msg = "�α��� ����";
		
		if(result){
			session.setAttribute("emailKey", email);
			msg = "�α��� ����";
			}
%>			
<script>
	if(<%=result%>==true) parent.document.location.reload();
	else history.back();
	alert("<%=msg%>");
</script>