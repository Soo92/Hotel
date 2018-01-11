<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	if(session.getAttribute("remem")!=null)
		session.setAttribute("remem", session.getAttribute("admin"));
	else
		session.setAttribute("remem", null);
	session.setAttribute("admin", null);
%>			
<script>
	location.href="/hotel/admin/index.jsp"; 
</script>