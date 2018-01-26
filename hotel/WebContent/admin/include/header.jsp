<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.CartBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<%
	String email = session.getAttribute("admin")+"";
	boolean login = session.getAttribute("admin")!=null;
	boolean lock = session.getAttribute("remem")!=null;
	if(lock&&!login) response.sendRedirect("/hotel/admin/pages/admin_login/lockscreen.jsp");
	else if(!login) response.sendRedirect("/hotel/admin/pages/admin_login/login.html");
	System.out.println(email);
	System.out.println(email);
	System.out.println(login);
%>
  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>HO</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>HOTEL</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="/hotel/admin/dist/img/<%=mgr.getMember(email).getPic() %>" class="img-circle" alt="User Image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/hotel/admin/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/hotel/admin/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/hotel/admin/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="/hotel/admin/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
    <%	
	    Vector<CartBean> cartlisth = mgr.getCartList(email);
	    SimpleDateFormat dth = new SimpleDateFormat();
		long curtimeh=0;
	    long reqtimeh=0;
	    Date reqh=new Date();
	    long mgaph=0;
	    long hgaph=0;
	    int dgaph=0;
	    int dategaph=0;
	    int mogaph=0;
	    int counth = 0; 
    %>
	          <li class="dropdown notifications-menu">
            <ul class="dropdown-menu">
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
	<%  for(int i=0;i<cartlisth.size();i++){
          String reqDateStr = cartlisth.get(i).getCheckin();
     	  Date curDate = new Date(); 
     	  if(cartlisth.get(i).getStatus().equals("memo")) dth = new SimpleDateFormat("MM/dd/yyyy HH:mm"); 
     	  else dth = new SimpleDateFormat("MM/dd/yyyy"); 
     	  reqh = dth.parse(reqDateStr);
     	  reqtimeh = reqh.getTime();
     	  curtimeh = curDate.getTime();
     	  mgaph = (reqtimeh-curtimeh)/(60000);
     	  hgaph = mgaph / 60;
     	  dgaph = (int)(hgaph / 24);
     	  dategaph = (int)(dgaph / 7);
     	  mogaph = (int)(dgaph / 30);
     	  if(mgaph>0){
     		  counth++;
	%>
                  <li>
                    <a href="#">
    <%if(cartlisth.get(i).getStatus().equals("memo")) {%>
                      <i class="fa fa-users text-aqua"></i> <%=cartlisth.get(i).getRoomname()%> / <%=cartlisth.get(i).getStatus()%> /
    <%}else {%>
                      <i class="fa fa-shopping-cart text-green"></i> <%=cartlisth.get(i).getRoomname()%> / <%=cartlisth.get(i).getStatus()%> /
    <%} %>
            <%if(mogaph>0) {%>
                  <small class="label label-default"><i class="fa fa-clock-o"></i> <%=mogaph %> month</small>
			<%}else if(dategaph>0) {%>
                  <small class="label label-primary"><i class="fa fa-clock-o"></i> <%=dategaph %> week</small>
			<%}else if(dgaph>0) {%>
                  <small class="label label-warning"><i class="fa fa-clock-o"></i> <%=dgaph %> day</small>
			<%}else if(hgaph>0) {%>
                  <small class="label label-info"><i class="fa fa-clock-o"></i> <%=hgaph %> hours</small>
			<%}else if(mgaph>0) {%>
                  <small class="label label-danger"><i class="fa fa-clock-o"></i> <%=mgaph %> mins</small>
			<%} %>
                    </a>
                  </li>
	<%}} %>
                </ul>
              </li>
              <li class="footer"><a href="/hotel/admin/pages/admin_link/reservation.jsp">View Calendar</a></li>
            </ul>
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning"><%=counth %></span>
            </a>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="dist/img/<%=mgr.getMember(email).getPic() %>"  alt="user image" class="user-image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
              <span class="hidden-xs"><%=mgr.getMember(email).getId() %></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/<%=mgr.getMember(email).getPic() %>"  alt="user image" class="img-circle" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                <p>
                  <%=mgr.getMember(email).getId() %>
                  <small><%=mgr.getMember(email).getGrade() %></small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="/hotel/admin/pages/admin_login/logout.jsp" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/<%=mgr.getMember(email).getPic() %>"  alt="user image" class="img-circle" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
        </div>
        <div class="pull-left info">
          <p><%=mgr.getMember(email).getId() %></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" id="sdme" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li id="index"><a href="/hotel/admin/index.jsp"><i class="fa fa-pie-chart"></i> <span>DASHBOARD</span></a></li>
        <li id="client"><a href="/hotel/admin/pages/admin_link/client.jsp"><i class="fa fa-users"></i> <span>CLIENT</span></a></li>
        <li id="reservation"><a href="/hotel/admin/pages/admin_link/reservation.jsp"><i class="fa fa-calendar"></i> <span>RESERVATION</span></a></li>
        <li id="room&review"><a href="/hotel/admin/pages/admin_link/room&review.jsp"><i class="fa fa-hotel"></i> <span>ROOM&REVIEW</span></a></li>
        <li id="mail"><a href="/hotel/admin/pages/admin_link/mail.jsp"><i class="fa fa-envelope"></i> <span>MAIL</span></a></li>
        <li id="table"><a href="/hotel/admin/pages/admin_link/table.jsp"><i class="fa fa-table"></i> <span>TABLE</span></a></li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
<script>
	var title = location.pathname.split("/")[location.pathname.split("/").length-1].replace(".jsp","");
	document.getElementById(title).className="active";
</script>