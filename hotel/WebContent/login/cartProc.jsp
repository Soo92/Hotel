<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<jsp:useBean id="caBean" class="hotel.CartBean"/>
<jsp:setProperty property="*" name="caBean"/>
<%
		request.setCharacterEncoding("utf-8");
		String email = (String)session.getAttribute("emailKey");
		boolean result = mgr.insertCart(caBean);
%>
<script>
	if(<%=result%>==true) parent.document.location.reload();
	else history.back();
	alert(<%=caBean.getNum()%>);
	alert(<%=caBean.getRoomname()%>);
	alert(<%=caBean.getCheckin()%>);
	alert(<%=caBean.getCheckout()%>);
</script>