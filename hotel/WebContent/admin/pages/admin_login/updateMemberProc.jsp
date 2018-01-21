<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.MemberBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String[] array = request.getParameter("index").split(",");
		boolean result=false;

 		for(int i=0;i<array.length/3;i++){
	 		MemberBean bean=new MemberBean();
	 		bean.setId(array[i]);
	 		bean.setPass(array[i+array.length/3]);
	 		bean.setGrade(array[i+2*array.length/3]);
	 		result = mgr.updateMember(bean);
 		}
		String msg = "실패";
 		if(result){
 			msg = "성공";
		}
%>			
<script>
	location.href="../admin_link/client.jsp"; 
	alert("<%=msg%>");
</script>