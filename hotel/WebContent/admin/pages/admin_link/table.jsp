<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="tablemgr" class="hotel.AllTableMgr" />
<%
	ArrayList<String> tablelist = tablemgr.findTable();
%>
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
  <!-- Select2 -->
  <link rel="stylesheet" href="../../bower_components/select2/dist/css/select2.min.css">
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
      <h1>Data Tables
              <div class="form-group">
                <select class="form-control select2" multiple="multiple" data-placeholder="Select Table" style="width: 50%;">
             <%for(int i=0;i<tablelist.size();i++) {%>
                  <option><%=tablelist.get(i) %></option>
             <%} %>
                </select>
              </div>
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
   <%for(int i=0;i<tablelist.size();i++) {%>
          <div class="box" id="<%=tablelist.get(i) %>">
            <div class="box-header">
              <h3 class="box-title"><%=tablelist.get(i) %></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example<%=i %>" class="table table-bordered table-striped">
                <thead>
                <tr>
        <%ArrayList<String> Column = tablemgr.GetColumn(tablelist.get(i));
        for(int j=0;j<Column.size();j++) {%>
                  <th><%=Column.get(j) %></th>
		<%} %>
                </tr>
                </thead>
                 <tbody>
        <%ArrayList<ArrayList<String>> Content = tablemgr.GetFullContent(tablelist.get(i), Column);
        for(int j=0;j<Content.size();j++) {%>
                <tr>
	        <% for(int k=0;k<Column.size();k++) {
	        	%>
                  <td><%=Content.get(j).get(k) %></td>
			<%} %>
                </tr>
		<%} %>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
	<%} %>
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
<!-- Select2 -->
<script src="../../bower_components/select2/dist/js/select2.full.min.js"></script>
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
$(function () {
  $('.select2').select2()
<%for(int i=0;i<tablelist.size();i++) {%>
  $('#example<%=i%>').DataTable()
<%}%>
})
var speed=300;
$(".select2").change("select2:select", function (e) { 
  var select_val = $(e.currentTarget).val();
  if(select_val.length!=0)
	  $('.box').each(function(){
		  if(jQuery.inArray(this.id, select_val)<0) $(this).hide(speed)
		  else $(this).show(speed);
	  })
	else
	  $('.box').each(function(){
		  $(this).show(speed);
	  })
});
</script>
</body>
</html>
