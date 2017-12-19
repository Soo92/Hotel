<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String email = request.getParameter("email");
		boolean result = mgr.checkId(email);
%>
<link href="style.css" rel="stylesheet" type="text/css">
<body bgcolor="#FFFFCC">
<div align="center">
<br/><b><%=email%></b>
<%
		if(result){
			out.println("는 이미 존재하는 email입니다.<p/>");
		}else{
			out.println("는 사용 가능합니다.<p/>");
		}
%>
<a href="#" onclick="self.close()">닫기</a>
</div>
</body>
