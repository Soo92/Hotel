<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<jsp:useBean id="bean" class="hotel.MemberBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%
	  boolean result = mgr.insertMember(bean);
	  if(result){
%>
<script type="text/javascript">
		alert("ȸ�������� �Ͽ����ϴ�.");
		location.href="login.jsp";
</script>
<% }else{%>
<script type="text/javascript">
		alert("ȸ�����Կ� ���� �Ͽ����ϴ�.");
		history.back();
</script>
<%} %>