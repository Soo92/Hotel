<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="regMgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String message = request.getParameter("message");

		regMgr.sendAccount(email,name,message);
		response.sendRedirect("../index.jsp");
%>