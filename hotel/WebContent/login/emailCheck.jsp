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
			out.println("�� �̹� �����ϴ� email�Դϴ�.<p/>");
		}else{
			out.println("�� ��� �����մϴ�.<p/>");
		}
%>
<a href="#" onclick="self.close()">�ݱ�</a>
</div>
</body>
