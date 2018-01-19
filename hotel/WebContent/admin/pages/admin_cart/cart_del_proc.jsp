<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String idx = request.getParameter("index");
		int num=Integer.parseInt(idx);
		boolean result = mgr.deleteCart(num);
		String msg = "Failed";
		if(result){
			msg = "Success";
		}
%>			
<script>
	location.href="/hotel/admin/index.jsp";
</script>