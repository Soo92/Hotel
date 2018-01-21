<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="tablemgr" class="hotel.AllTableMgr" />
<jsp:useBean id="memgr" class="hotel.MemberMgr" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminHotel | Data Tables</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<%@include file="../../include/header.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
			  <button id="todoS" type="button" class="btn btn-default pull-right"><i class="fa fa-check-square-o"></i> Apply</button>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
        <%memgr.initMember();
        ArrayList<String> Column = tablemgr.GetColumn("tblhotel");
        for(int j=0;j<Column.size();j++) {%>
                  <th><%=Column.get(j) %></th>
		<%} %>
                  <th></th>
                </tr>
                </thead>
                 <tbody>
        <%ArrayList<ArrayList<String>> Content = tablemgr.GetFullContent("tblhotel", Column);
        for(int j=0;j<Content.size();j++) {%>
                <tr>
	        <% for(int k=0;k<Column.size();k++) {
	        	%>
                  <td><%=Content.get(j).get(k) %></td>
			<%} %>
                  <td style="text-align: center;">
                  <a class="modify"><i class="fa fa-pencil-square-o fa-2x"></i></a>
                  <a class="apply" style="display:none"><i class="fa fa-check-square-o fa-2x"></i></a>
                  <a href="../admin_cart/client_del_proc.jsp?id=<%=Content.get(j).get(0) %>" onclick="return confirm('delete?')"><i class="fa fa-trash-o fa-2x" style="margin-left:15px;"></i></a>
                  </td>
                </tr>
		<%} %>
                </tbody>
              </table>
            </div>
<div class="input-group-btn hidden">
	<button type="button" class="dummy_button btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Action
	  <span class="fa fa-caret-down"></span></button>
	<ul class="dropdown-menu">
	  <li onclick="javascript:$(this).parent().siblings('button').html($(this).children().html())"><a>admin</a></li>
	  <li onclick="javascript:$(this).parent().siblings('button').html($(this).children().html())"><a>normal</a></li>
	</ul>
</div>
<input type="text" class="dummy_text form-control hidden">
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
<%@include file="../../include/footer.jsp"%>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="../../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $('.modify').click(function() {
	  var pass = $(this).parent().siblings().eq(1);
	  var grade = $(this).parent().siblings().eq(4);
	  $('.dummy_button').text(grade.html());
	  $('.dummy_text').val(pass.html());
      var d = $('.dummy_text').clone(true);
      var e = $('.dummy_button').parent().clone(true);
      pass.empty();
      grade.empty();
      pass.append(d.removeClass('hidden').removeClass('dummy_text').show());
      e.children().removeClass('dummy_button')
      grade.append(e.removeClass('hidden').show());
      $('#todoS').hide(300);
      $(this).hide(300);
      $(this).siblings('.apply').show(300);
  });
  $('.apply').click(function() {
	  var pass = $(this).parent().siblings().eq(1);
	  var grade = $(this).parent().siblings().eq(4);
	  var repa = pass.children().val();
	  var regra = grade.children().children('button').text();
	  var table = $('#example1').DataTable();
	  table.cell(table.row($(this).parent()),1).data(repa);
	  table.cell(table.row($(this).parent()),4).data(regra);
	  pass.html(repa);
	  grade.html(regra);
      $('#todoS').show(300);
      $(this).hide(300);
      $(this).siblings('.modify').show(300);
  });
  $('#todoS').click(function() {
	  $('#example1').DataTable().draw();
	  console.log($('#example1').DataTable().columns([0,1,4]).data());
	  if(confirm('modify?'))
		  location.href= "../admin_login/updateMemberProc.jsp?index="+$('#example1').DataTable().columns([0,1,4]).data().toArray();
  });
  $(function () {
    $('#example1').DataTable()
  })
</script>
</body>
</html>
