<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="mgr" class="hotel.FileloadMgr"/>
<%
		String a = null;
		boolean result = mgr.fileUpload(request);
		if(result){
		}else{
			a="오류";
			response.sendRedirect("fupload.jsp");
		}
%>
<script>
	alert(<%=a%>)
</script>