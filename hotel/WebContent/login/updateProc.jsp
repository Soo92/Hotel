<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<jsp:useBean id="bean" class="hotel.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>
<% 
		mgr.updateProfile(bean);
		response.sendRedirect("mypage.jsp");
%>
