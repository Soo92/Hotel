<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="hotel.CartBean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="hotel.MemberBean"%>
<%@page import="hotel.CountryBean"%>
<%@page import="hotel.CountBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="cmgr" class="hotel.CountMgr" />
<jsp:useBean id="memgr" class="hotel.MemberMgr"/>
<%
	String email1 = session.getAttribute("admin")+"";
	MemberBean mem = memgr.getMember(email1);
	String SocketAddr=request.getRemoteAddr().equals("0:0:0:0:0:0:0:1")?"localhost":request.getRemoteAddr();
    SimpleDateFormat dt = new SimpleDateFormat();
	long curtime=0;
    long reqtime=0;
    Date req=new Date();
    long mgap=0;
    long hgap=0;
    int dgap=0;
    int dategap=0;
    int mogap=0;
    
    int comnum=0,noshownum=0,instorenum=0,cartnum=0;
    
    Vector<CartBean> cartlist = memgr.getCartList(email1);
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminHotel | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<%@include file="include/header.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><%=cmgr.CountonComing() %></h3>
              <p>New Orders</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
            <a href="/hotel/admin/pages/admin_link/reservation.jsp" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><%=cmgr.CountprevReserve(15)==0?" - ":(cmgr.CountonComing()/(cmgr.CountprevReserve(15)))*100 %><sup style="font-size: 20px">%</sup></h3>

              <p>Bounce Rate</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="#bounce" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><%=cmgr.CountMember() %></h3>

              <p>User Registrations</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="/hotel/admin/pages/admin_link/client.jsp" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><%=cmgr.getCount("day", 1).size()==0?0:cmgr.getCount("day", 1).get(0).getTotal() %></h3>

              <p>Today Visitors</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-7 connectedSortable">

          <!-- interactive chart -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Interactive User Chart</h3>

              <div class="box-tools pull-right">
                Real time
                <div class="btn-group" id="realtime" data-toggle="btn-toggle">
                  <button type="button" class="btn btn-default btn-xs active" data-toggle="on">On</button>
                  <button type="button" class="btn btn-default btn-xs" data-toggle="off">Off</button>
                </div>
              </div>
            </div>
            <div class="box-body">
              <div id="interactive" style="height: 300px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->

          <!-- Chat box -->
          <div class="box box-success">
            <div class="box-header">
              <i class="fa fa-comments-o"></i>

              <h3 class="box-title">Chat</h3>

              <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
                <div class="btn-group" data-toggle="btn-toggle">
                  <button type="button" class="online btn btn-default btn-sm active"><i class="fa fa-square text-green"></i> </button>
                  <button type="button" class="offline btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
                </div>
              </div>
            </div>
            <div class="box-body chat" id="chat-box">
	        <!-- chat item -->
				<div class="mydummy" style="display:none;">
					<img src="dist/img/<%=mem.getPic() %>" alt="user image" class="online" style="float: right;" onerror="this.src='dist/img/user_default.png'">
					<p class="message" style="float: right;">
						<a class="name" style="text-align: right;"> 
							<small class="text-muted pull-right" style="margin-left: 10px;"><i class="fa fa-clock-o"></i> <%=(new SimpleDateFormat("HH:mm")).format( new Date() ) %></small>
                    	<span><%=mem.getId() %></span>
						</a> 
	                  <span id="mydummy_span" style="display: block; max-width: 300px; word-wrap: break-word;"">
	                  </span>
					</p>
				</div>
			  <!-- /.item -->
              <!-- dummy item -->
              <div class="dummy" style="display:none;">
                <img src="dist/img/<%=mem.getPic() %>"  alt="user image" class="online" style="float: left;" onerror="this.src='dist/img/user_default.png'">
                <p class="message" style="float: left;">
                  <a class="name">
                    <small class="text-muted pull-right" style="margin-left: 10px;"><i class="fa fa-clock-o"></i> <%=(new SimpleDateFormat("HH:mm")).format( new Date() ) %></small>
                    <span id="nick"><%=mem.getId() %></span>
                  </a>
                  <span id="dummy_span" style="display: block; max-width: 300px; word-wrap: break-word;">
                  </span>
                </p>
              </div>
              <!-- /.item -->
            </div>
            <!-- /.chat -->
            <div class="box-footer">
              <div class="input-group">
                <input class="form-control" id="inputMessage" placeholder="Type message..." onkeypress="if(event.keyCode==13) {send(); return false;}">
                <div class="input-group-btn">
                  <input type="submit" id="send" onclick="send()" class="btn btn-success" value="send"><i class="fa fa-plus"></i></button>
                </div>
              </div>
            </div>
          </div>
          <!-- /.box (chat box) -->

          <!-- quick email widget -->
          <form name="mailing" action="./pages/admin_link/SendAccount.jsp">
          <div class="box box-info">
            <div class="box-header">
              <i class="fa fa-envelope"></i>
              <h3 class="box-title">Quick Email</h3>
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                  <i class="fa fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <div class="box-body">
              <form action="#" method="post">
                <div class="form-group">
                  <input type="email" class="form-control" name="email" placeholder="Email to:" required>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="title" placeholder="Title">
                </div>
                <div>
                  <textarea class="textarea" name="message" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
              </form>
            </div>
            <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" id="sendEmail">Send
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
          </div>
		  </form>
        </section>
        <!-- /.Left col -->
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-5 connectedSortable">

          <!-- Map box -->
          <div class="box box-solid bg-light-blue-gradient">
            <div class="box-header">
              <!-- tools box -->
              <div class="pull-right box-tools">
                <button type="button" class="btn btn-primary btn-sm daterange pull-right" data-toggle="tooltip"
                        title="Date range">
                  <i class="fa fa-calendar"></i></button>
                <button type="button" class="btn btn-primary btn-sm pull-right" data-widget="collapse"
                        data-toggle="tooltip" title="Collapse" style="margin-right: 5px;">
                  <i class="fa fa-minus"></i></button>
              </div>
              <!-- /. tools -->

              <i class="fa fa-map-marker"></i>

              <h3 class="box-title">
                Visitors
              </h3>
            </div>
            <div class="box-body">
              <div id="world-map" style="height: 250px; width: 100%;"></div>
            </div>
            <!-- /.box-body-->
            <div class="box-footer no-border">
              <div class="row">
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <div id="sparkline-1"></div>
                  <div class="knob-label">6 Year</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <div id="sparkline-2"></div>
                  <div class="knob-label">6 Month</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center">
                  <div id="sparkline-3"></div>
                  <div class="knob-label">6 Day</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.box -->

          <!-- solid sales graph -->
          <div class="box box-solid bg-teal-gradient" id="bounce">
            <div class="box-header">
              <i class="fa fa-th"></i>

              <h3 class="box-title">Sales Graph</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn bg-teal btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn bg-teal btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
            </div>
            <div class="box-body border-radius-none">
              <div class="chart" id="line-chart" style="height: 250px;"></div>
            </div>
            <!-- /.box-body -->
<%
for(int i=0;i<cartlist.size();i++){
	  if(cartlist.get(i).getStatus().equals("complete")) comnum++;
	  if(cartlist.get(i).getStatus().equals("noshow")) noshownum++;
	  if(cartlist.get(i).getStatus().equals("cart")) cartnum++;
	  if(cartlist.get(i).getStatus().equals("instore")) instorenum++;
}
	int compper = (comnum*100/((comnum+noshownum)==0?1:(comnum+noshownum)));
	int cartper = (cartnum*100/((cartnum+instorenum)==0?1:(cartnum+instorenum)));
	int instoreper = (instorenum*100/((cartnum+instorenum)==0?1:(cartnum+instorenum)));
%>
            <div class="box-footer no-border">
              <div class="row">
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <input type="text" class="knob" data-readonly="true" value="<%=compper %>" data-width="60" data-height="60"
                         data-fgColor="#39CCCC">

                  <div class="knob-label">Complete</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center" style="border-right: 1px solid #f4f4f4">
                  <input type="text" class="knob" data-readonly="true" value="<%=cartper %>" data-width="60" data-height="60"
                         data-fgColor="#39CCCC">

                  <div class="knob-label">Online</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-4 text-center">
                  <input type="text" class="knob" data-readonly="true" value="<%=instoreper %>" data-width="60" data-height="60"
                         data-fgColor="#39CCCC">

                  <div class="knob-label">In-Store</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->


          <!-- TO DO List -->
          <div id="todo" class="box box-primary">
            <div class="box-header">
              <i class="ion ion-clipboard"></i>

              <h3 class="box-title">To Do List</h3>

              <div class="box-tools pull-right">
                <ul class="pagination pagination-sm inline">
                  <li><a onclick="prevPage()">&laquo;</a></li>
            <%for(int i=0;i<(cartlist.size()+1)/6+1;i++){%>
                  <li><a onclick="todoPage(<%=i%>)"><%=i+1 %></a></li>
			<%} %>
                  <li><a onclick="nextPage()">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
              <ul class="todo-list">
    <%for(int i=0;i<cartlist.size();i++){
    	
    	  String reqDateStr = cartlist.get(i).getCheckin();
     	  Date curDate = new Date(); 
     	  if(cartlist.get(i).getStatus().equals("memo")) dt = new SimpleDateFormat("MM/dd/yyyy HH:mm"); 
     	  else dt = new SimpleDateFormat("MM/dd/yyyy"); 
     	  req = dt.parse(reqDateStr);
     	  reqtime = req.getTime();
     	  curtime = curDate.getTime();
     	  mgap = (reqtime-curtime)/(60000);
     	  hgap = mgap / 60;
     	  dgap = (int)(hgap / 24);
     	  dategap = (int)(dgap / 7);
     	  mogap = (int)(dgap / 30);
     	  if(mgap>0){
	%>
                <li style="display:none">
                  <!-- drag handle -->
                  <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                  <!-- checkbox -->
                  <input name="doChk" type="checkbox" value="<%=cartlist.get(i).getNum() %>">
                  <!-- todo text -->
                  <span class="text"><%=cartlist.get(i).getRoomname() %> / <%=cartlist.get(i).getStatus() %></span>
                  <!-- Emphasis label -->
            <%if(mogap>0) {%>
                  <small class="label label-default"><i class="fa fa-clock-o"></i> <%=mogap %> month</small>
			<%}else if(dategap>0) {%>
                  <small class="label label-primary"><i class="fa fa-clock-o"></i> <%=dategap %> week</small>
			<%}else if(dgap>0) {%>
                  <small class="label label-warning"><i class="fa fa-clock-o"></i> <%=dgap %> day</small>
			<%}else if(hgap>0) {%>
                  <small class="label label-info"><i class="fa fa-clock-o"></i> <%=hgap %> hours</small>
			<%}else if(mgap>0) {%>
                  <small class="label label-danger"><i class="fa fa-clock-o"></i> <%=mgap %> mins</small>
			<%} %>
                  <!-- General tools such as edit or delete-->
                  <div class="tools">
                  <a href="./pages/admin_cart/cart_del_proc.jsp?index=<%=cartlist.get(i).getNum() %>" onclick="return confirm('delete?')">
                    <i class="fa fa-trash-o"></i>
				  </a>
                  </div>
                </li>
	<%}} %>
              </ul>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix no-border">
              <button id="todoS" type="button" class="btn btn-default pull-right"><i class="fa fa-check-square-o"></i> Apply</button>
            </div>
          </div>
          <!-- /.box -->

        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>
<%@include file="include/footer.jsp"%>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script> 
<!-- FLOT CHARTS -->
<script src="bower_components/Flot/jquery.flot.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="bower_components/Flot/jquery.flot.resize.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="bower_components/Flot/jquery.flot.pie.js"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="bower_components/Flot/jquery.flot.categories.js"></script>
<!-- Page script -->
<script type="text/javascript">
/*
 * Author: Abdullah A Almsaeed
 * Date: 4 Jan 2014
 * Description:
 *      This is a demo file used only for the main dashboard (index.jsp)
 **/
$(function () {
    /* Flot Interactive Chart  */
    // data be fetched from a server
    var data = [], totalPoints = 100
    function getData() {
      if (data.length > 0)
        data = data.slice(1)
      while (data.length < totalPoints) {
        var prev = data.length > 0 ? data[data.length - 1] : 50,
            y    = prev + Math.random() * 10 - 5
        if (y < 0) {
          y = 0
        } else if (y > 100) {
          y = 100
        }
        data.push(y)
      }
      // Zip the generated y values with the x values
      var res = []
      for (var i = 0; i < data.length; ++i) {
        res.push([i, data[i]])
      }
      return res
    }

    var interactive_plot = $.plot('#interactive', [getData()], {
      grid  : {
        borderColor: '#f3f3f3',
        borderWidth: 1,
        tickColor  : '#f3f3f3'
      },
      series: {
        shadowSize: 0, // Drawing is faster without shadows
        color     : '#3c8dbc'
      },
      lines : {
        fill : true, //Converts the line chart to area chart
        color: '#3c8dbc'
      },
      yaxis : {
        min : 0,
        max : 100,
        show: true
      },
      xaxis : {
        show: true
      }
    })

    var updateInterval = 500 //Fetch data ever x milliseconds
    var realtime       = 'on' //If == to on then fetch data every x seconds. else stop fetching
    function update() {
      interactive_plot.setData([getData()])
      // Since the axes don't change, we don't need to call plot.setupGrid()
      interactive_plot.draw()
      if (realtime === 'on')
        setTimeout(update, updateInterval)
    }

    //INITIALIZE REALTIME DATA FETCHING
    if (realtime === 'on') {
      update()
    }
    //REALTIME TOGGLE
    $('#realtime .btn').click(function () {
      if ($(this).data('toggle') === 'on') {
        realtime = 'on'
      }
      else {
        realtime = 'off'
      }
      update()
    })
    /*
     * END INTERACTIVE CHART
     */
	'use strict';
  // Make the dashboard widgets sortable Using jquery UI
  $('.connectedSortable').sortable({
    placeholder         : 'sort-highlight',
    connectWith         : '.connectedSortable',
    handle              : '.box-header, .nav-tabs',
    forcePlaceholderSize: true,
    zIndex              : 999999
  });
  $('.connectedSortable .box-header, .connectedSortable .nav-tabs-custom').css('cursor', 'move');
  // jQuery UI sortable for the todo list
  $('.todo-list').sortable({
    placeholder         : 'sort-highlight',
    handle              : '.handle',
    forcePlaceholderSize: true,
    zIndex              : 999999
  });
  // bootstrap WYSIHTML5 - text editor
  $('.textarea').wysihtml5();
	
  $('.daterange').daterangepicker({
    ranges   : {
      'Today'       : [moment(), moment()],
      'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
      'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
      'Last 30 Days': [moment().subtract(29, 'days'), moment()],
      'This Month'  : [moment().startOf('month'), moment().endOf('month')],
      'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
    },
    startDate: moment().subtract(29, 'days'),
    endDate  : moment()
  }, function (start, end) {
    window.alert('You chose: ' + start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
  });

  /* jQueryKnob */
  $('.knob').knob();

  var line = new Morris.Line({
	    element          : 'line-chart',
	    resize           : true,
	    data             : [
	      { y: '2011 Q1', item1: 2666 },
	      { y: '2011 Q2', item1: 2778 },
	      { y: '2011 Q3', item1: 4912 },
	      { y: '2011 Q4', item1: 3767 },
	      { y: '2012 Q1', item1: 6810 },
	      { y: '2012 Q2', item1: 5670 },
	      { y: '2012 Q3', item1: 4820 },
	      { y: '2012 Q4', item1: 15073 },
	      { y: '2013 Q1', item1: 10687 },
	      { y: '2013 Q2', item1: 8432 }
	    ],
	    xkey             : 'y',
	    ykeys            : ['item1'],
	    labels           : ['Item 1'],
		    lineColors       : ['#efefef'],
	    lineWidth        : 2,
	    hideHover        : 'auto',
	    gridTextColor    : '#fff',
	    gridStrokeWidth  : 0.4,
	    pointSize        : 4,
	    pointStrokeColors: ['#efefef'],
	    gridLineColor    : '#efefef',
	    gridTextFamily   : 'Open Sans',
	    gridTextSize     : 10
	  });
  
  // jvectormap data
  var visitorsData = {
		  <%Vector<CountryBean> clist = cmgr.getCountry();
		  for(int i=0;i<clist.size();i++) {%>
    	<%if(i==clist.size()-1){%><%=clist.get(i).getCountry()+": "+clist.get(i).getTotal()%>
    	<%}else{%><%=clist.get(i).getCountry()+": "+clist.get(i).getTotal()+","%>
	<%}}%>
 	 };
  // World map by jvectormap
  $('#world-map').vectorMap({
    map              : 'world_mill_en',
    backgroundColor  : 'transparent',
    regionStyle      : {
      initial: {
        fill            : '#e4e4e4',
        'fill-opacity'  : 1,
        stroke          : 'none',
        'stroke-width'  : 0,
        'stroke-opacity': 1
      }
    },
    series           : {
      regions: [
        {
          values           : visitorsData,
          scale            : ['#92c1dc', '#ebf4f9'],
          normalizeFunction: 'polynomial'
        }
      ]
    },
    onRegionLabelShow: function (e, el, code) {
      if (typeof visitorsData[code] != 'undefined')
        el.html(el.html() + '<br>' + visitorsData[code]+' visited');
    }
  });
$('.jvectormap-label').css({
    position: 'absolute',
    border: '10px',
     padding:'6px',
     background: 'rgba(255,255,255,0.8)',
     font: 'sans-serif 12px'
});

  // Sparkline charts
  <%Vector<CountBean> vlist =  cmgr.getCount("year", 6);
  if(vlist.size()<6) cmgr.genCount();%>
  var myvalues = [
	  <% for(int i=0; i<vlist.size();i++){%>
	  <%if(i==vlist.size()-1){%><%=vlist.get(i).getTotal()%>
	  <%}else{%><%=vlist.get(i).getTotal()+", "%>
	  <%}}%>
	  ];
  $('#sparkline-1').sparkline(myvalues, {
    type     : 'line',
    lineColor: '#92c1dc',
    fillColor: '#ebf4f9',
    height   : '50',
    width    : '80'
  });
  <%vlist =  cmgr.getCount("month", 6);
  if(vlist.size()<6) cmgr.genCount();%>
  myvalues = [
	  <% for(int i=0; i<vlist.size();i++){%>
	  <%if(i==vlist.size()-1){%><%=vlist.get(i).getTotal()%>
	  <%}else{%><%=vlist.get(i).getTotal()+", "%>
	  <%}}%>
	  ];
  $('#sparkline-2').sparkline(myvalues, {
    type     : 'line',
    lineColor: '#92c1dc',
    fillColor: '#ebf4f9',
    height   : '50',
    width    : '80'
  });
  <%vlist =  cmgr.getCount("day", 6);
  if(vlist.size()<6) cmgr.genCount();%>
  myvalues = [
	  <% for(int i=0; i<vlist.size();i++){%>
	  <%if(i==vlist.size()-1){%><%=vlist.get(i).getTotal()%>
	  <%}else{%><%=vlist.get(i).getTotal()+", "%>
	  <%}}%>
	  ];
  $('#sparkline-3').sparkline(myvalues, {
    type     : 'line',
    lineColor: '#92c1dc',
    fillColor: '#ebf4f9',
    height   : '50',
    width    : '80'
  });

  // SLIMSCROLL FOR CHAT WIDGET
  $('#chat-box').slimScroll({
    height: '250px'
  });
  
  // Fix for charts under tabs
  $('.box ul.nav a').on('shown.bs.tab', function () {
    area.redraw();
    donut.redraw();
    line.redraw();
  });

  /* The todo list plugin */
  var arr;
  $('#todoS').click(function () {
	  if(arr!=null && confirm("delete all?"))
		  location.href='./pages/admin_cart/cart_del_proc.jsp?index='+arr
  });
  $('.todo-list').todoList({
    onCheck  : function () {
      window.console.log($(this), 'The element has been checked');
      arr = $.map($('input:checkbox:checked'), function(e,i) {
    	    return +e.value;
    	});
   	},
    onUnCheck: function () {
      window.console.log($(this), 'The element has been unchecked');
      arr = $.map($('input:checkbox:checked'), function(e,i) {
  	    return +e.value;
  	});
    }
  });
});
var checked = []
var todopaging=0;
$('ul.pagination li').eq(1).addClass("active");
for(var i=parseInt(($('ul.todo-list li').length)/6+2);i<$('ul.pagination li').length-1;i++){
	console.log($('ul.todo-list li').length);
	console.log(i);
	$('ul.pagination li').eq(i).remove();
}
for(var i=0;i<5;i++){
	$('ul.todo-list li').eq(i).show();
}
function todoPage(a){
	todopaging=a;
	for(var i=0;i<$('ul.pagination li').length;i++){
		if(a==i)
			$('ul.pagination li').eq(i+1).addClass("active");
		else
			$('ul.pagination li').eq(i+1).removeClass("active");
	}
	for(var i=0;i<$('ul.todo-list li').length;i++){
		if(a*5<=i && i<a*5+5)
			$('ul.todo-list li').eq(i).show(300);
		else
			$('ul.todo-list li').eq(i).hide(300);
	}
}
function prevPage(){
	todopaging-=1;
	if(todopaging<0) todopaging=0;
	todoPage(todopaging);
}
function nextPage(){
	todopaging+=1;
	if(todopaging>$('ul.pagination li').length-3) todopaging=$('ul.pagination li').length-3;
	todoPage(todopaging);
}

/* web-socket plugin */
var chat_in = $('#chat-box');
var webSocket = new WebSocket('ws://<%=SocketAddr%>/hotel/broadcasting');
var inputMessage = document.getElementById('inputMessage');
webSocket.onerror = function(event) {
	onError(event)
};
webSocket.onopen = function(event) {
	onOpen(event)
};
webSocket.onclose = function(event) {
	onClose(event)
};
webSocket.onmessage = function(event) {
	onMessage(event)
	chat_in.slimScroll({ scrollTo : chat_in.prop('scrollHeight') + 'px' });
};
function onMessage(event) {
	if("<%=mem.getId()%>"!=(event.data.substr(event.data.indexOf("/")+1,event.data.split("/")[0]))){
		$('#dummy_span').text(event.data.substring(event.data.indexOf("/")+1+Number(event.data.split("/")[0])));
		$('#nick').text(event.data.substr(event.data.indexOf("/")+1,event.data.split("/")[0]));
	    var d = $('.dummy').clone(true);
	    chat_in.append(d.removeClass('dummy').attr('class', 'item').show());
	}else{
		$('#mydummy_span').text(event.data.substring(event.data.indexOf("/")+1+Number(event.data.split("/")[0])));
	    var d = $('.mydummy').clone(true);
	    chat_in.append(d.removeClass('mydummy').attr('class', 'item').show());
	}
}
function onOpen(event) {
	<%if(mem.getId()!=null){%>
		webSocket.send("<%=mem.getId().length()+"/"+mem.getId() %>"+"Chatted in");
	<%}%>
}
function onClose(event) {
	<%if(mem.getId()!=null){%>
		webSocket.send("<%=mem.getId().length()+"/"+mem.getId() %>"+"Chatted out");
	<%}%>
}
function onError(event) {
//	alert(event.data);
}
function send() {
	$('#mydummy_span').text(inputMessage.value);
    var d = $('.mydummy').clone(true);
    chat_in.append(d.removeClass('mydummy').attr('class', 'item').show());
	chat_in.slimScroll({ scrollTo : chat_in.prop('scrollHeight') + 'px' });
	<%if(mem.getId()!=null){%>
		webSocket.send("<%=mem.getId().length()+"/"+mem.getId() %>"+inputMessage.value);
	<%}%>
	inputMessage.value = "";
	inputMessage.focus();
}
$('.online').click(function () {
	if(!$('.online').hasClass('active')) $('.online').addClass('active');
	$('.offline').removeClass('active');
	$('#inputMessage').attr('disabled', false);
	$('#send').attr('disabled', false);
	webSocket.send("<%=mem.getId().length()+"/"+mem.getId() %>Chatted in!");
	$('.chat').css('background-color','rgb(255, 255, 255)');
})
$('.offline').click(function () {
	if(!$('.offline').hasClass('active')) $('.offline').addClass('active');
	$('.online').removeClass('active');
	$('#inputMessage').attr('disabled', true);
	$('#send').attr('disabled', true);
	webSocket.send("<%=mem.getId().length()+"/"+mem.getId() %>Chatted out!");
	$('.chat').css('background-color','rgba(0, 0, 0, 0.2)');
})
</script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</body>
</html>
