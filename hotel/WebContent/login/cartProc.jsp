<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<jsp:useBean id="caBean" class="hotel.CartBean"/>
<jsp:setProperty property="*" name="caBean"/>
<%
		request.setCharacterEncoding("utf-8");
		String email = (String)session.getAttribute("emailKey");
		boolean result = mgr.insertCart(caBean);
		if(result) mgr.updateMemberCart(email, mgr.getCartNum(caBean));
%>
<script>
	if(<%=result%>) parent.document.location.reload();
	else history.back();
</script>