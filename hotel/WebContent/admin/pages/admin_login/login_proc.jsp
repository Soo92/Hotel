<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		boolean result = mgr.Checkgrade(email, pass);
		String msg = "�α��� ����";
		
		if(result){
			session.setAttribute("admin", email);
			session.setAttribute("remem", request.getParameter("remem"));
			msg = "�α��� ����";
			}
%>			
<script>
	location.href="/hotel/admin/index.jsp"; 
	alert("<%=msg%>");
</script>