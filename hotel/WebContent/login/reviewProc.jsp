<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="mgr" class="hotel.FileloadMgr"/>
<%
		boolean result = mgr.fileUpload(request);
%>
<script>
	if(<%=result%>){
		parent.location.reload();
		parent.location.href="../index.jsp#testimonial";
	}
</script>