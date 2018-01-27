<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="regMgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String title = request.getParameter("title");
		String message = request.getParameter("message");
		String email = request.getParameter("email");

		regMgr.Mailing(title, message, email);
		String url=request.getHeader("Referer");
		url = url.contains("compose")?"./mail.jsp":"/hotel/admin/index.jsp";
		response.sendRedirect(url);
%>