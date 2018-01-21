<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String idx[] = request.getParameter("index").split(",");
		for(int i=0;i<idx.length;i++){
			if(!idx[i].equals("NaN")){
				int num=Integer.parseInt(idx[i]);
				boolean result = mgr.deleteCart(num);
			}
		}
%>			
<script>
	location.href="/hotel/admin/index.jsp#todo";
</script>