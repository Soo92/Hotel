<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.CartBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String[] array = request.getParameter("array").split(",");
		String writer = session.getAttribute("admin")+"";
		boolean result=false;

 		for(int i=0;i<array.length;i=i+6){
	 		CartBean bean=new CartBean();
	 		if(array[i].equals("instore")){
		 		bean.setStatus(array[i]);
		 		bean.setRoomname(array[i+1]);
		 		bean.setCheckin(array[i+2].split("-")[1]+"/"+array[i+2].split("-")[2]+"/"+array[i+2].split("-")[0]);
		 		bean.setCheckout(array[i+3].split("-")[1]+"/"+array[i+3].split("-")[2]+"/"+array[i+3].split("-")[0]);
		 		bean.setPeople(array[i+4]);
		 		bean.setPay(array[i+5]);
		 		result = mgr.insertCart(bean);
		 		System.out.println(bean.getCheckin());
		 		System.out.println(bean.getCheckout());
	 		}
	 		else if(array[i].equals("memo")){
	 		}else{
		 		bean.setNum(Integer.parseInt(array[i]));
		 		bean.setRoomname(array[i+1]);
		 		bean.setCheckin(array[i+2]);
		 		bean.setCheckout(array[i+3]);
		 		bean.setPeople(array[i+4]);
		 		bean.setPay(array[i+5]);
		 		result = mgr.updateCart(bean);
	 		}
 		}
 		
		String msg = "실패";
 		if(result){
 			msg = "성공";
		}
%>			
<script>
	location.href="../admin_link/reservation.jsp"; 
	alert("<%=msg%>");
</script>