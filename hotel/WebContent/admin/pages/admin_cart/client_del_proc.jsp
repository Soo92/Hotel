<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	boolean result = mgr.deleteClient(id);
%>			
<script>
	location.href="../admin_link/client.jsp";
</script>