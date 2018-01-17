<%@page import="hotel.ReviewBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="remgr" class="hotel.ReviewMgr"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminHOTEL | Room@Review</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<%@include file="../../include/header.jsp"%>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Room&Review
        <small>Preview page</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Widgets</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <h1>
        <small>Room</small>
      </h1>
      <div class="row">
        <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-black" style="background: url('/hotel/admin/dist/img/photo1.png') center center;">
              <h3 class="widget-user-username">Elizabeth Pierce</h3>
              <h5 class="widget-user-desc">Web Designer</h5>
            </div>
            <div class="widget-user-image">
              <img class="img-circle" src="../../dist/img/user3-128x128.jpg" alt="User Avatar">
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">3,200</h5>
                    <span class="description-text">SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">13,000</h5>
                    <span class="description-text">FOLLOWERS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">35</h5>
                    <span class="description-text">PRODUCTS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        <!-- /.col -->
        <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-black" style="background: url('/hotel/admin/dist/img/photo1.png') center center;">
              <h3 class="widget-user-username">Elizabeth Pierce</h3>
              <h5 class="widget-user-desc">Web Designer</h5>
            </div>
            <div class="widget-user-image">
              <img class="img-circle" src="../../dist/img/user3-128x128.jpg" alt="User Avatar">
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">3,200</h5>
                    <span class="description-text">SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">13,000</h5>
                    <span class="description-text">FOLLOWERS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">35</h5>
                    <span class="description-text">PRODUCTS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        <!-- /.col -->
        <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-black" style="background: url('/hotel/admin/dist/img/photo1.png') center center;">
              <h3 class="widget-user-username">Elizabeth Pierce</h3>
              <h5 class="widget-user-desc">Web Designer</h5>
            </div>
            <div class="widget-user-image">
              <img class="img-circle" src="../../dist/img/user3-128x128.jpg" alt="User Avatar">
            </div>
            <div class="box-footer">
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">3,200</h5>
                    <span class="description-text">SALES</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">13,000</h5>
                    <span class="description-text">FOLLOWERS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">35</h5>
                    <span class="description-text">PRODUCTS</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <h1>
        <small>Reivew</small>
		<div class="btn-group">
			<button type="button" class="btn btn-default" id="select2">Writer Filter</button>
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown">
				<span class="caret"></span> <span class="sr-only">Toggle Dropdown</span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li><a href="#">All Writer</a></li>
			<%Vector<ReviewBean> relist = remgr.getReviewList(); 
			for(int i=0;i<relist.size();i++){%>
				<li><a href="#"><%=relist.get(i).getWriter() %></a></li>
			<%} %>
			</ul>
		</div>
	  </h1>
      <div class="row">
        <div class="col-md-6">
	<%for(int i=0;i<relist.size();i=i+2){
		if(relist.get(i).getPic()!=null){%>
          <!-- Content Box Comment -->
          <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img src="/hotel/admin/dist/img/<%=mgr.getMember(relist.get(i).getWriter()).getPic() %>" class="img-circle" alt="User Image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                <span class="username"><a href="#"><%=relist.get(i).getTitle() %></a></span>
                <span class="description"><%=relist.get(i).getWriter() %></span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <img class="img-responsive pad" src="/hotel/images/review/<%=relist.get(i).getPic() %>" alt="Photo">

              <p><%=relist.get(i).getContent() %></p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      <%}else{ %>
          <!-- Photo Box Comment -->
          <div class="box box-widget">
            <!-- /.box-header -->
            <div class="box-footer box-comments">
              <div class="box-comment">
                <!-- User image -->
                <img src="/hotel/admin/dist/img/<%=mgr.getMember(relist.get(i).getWriter()).getPic() %>" class="img-circle img-sm" alt="User Image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                <div class="comment-text">
                      <span class="username"><%=relist.get(i).getTitle() %> <span class="text-muted pull-right"><%=relist.get(i).getWriter() %></span></span><!-- /.username -->
                  <%=relist.get(i).getContent() %>
                </div>
                <!-- /.comment-text -->
              </div>
              <!-- /.box-comment -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
    <%}} %>
        </div>
        <div class="col-md-6">
	<%for(int i=1;i<relist.size();i=i+2){
		if(relist.get(i).getPic()!=null){%>
          <!-- Content Box Comment -->
          <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img src="/hotel/admin/dist/img/<%=mgr.getMember(relist.get(i).getWriter()).getPic() %>" class="img-circle" alt="User Image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                <span class="username"><a href="#"><%=relist.get(i).getTitle() %></a></span>
                <span class="description"><%=relist.get(i).getWriter() %></span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <img class="img-responsive pad" src="/hotel/images/review/<%=relist.get(i).getPic() %>" alt="Photo">

              <p><%=relist.get(i).getContent() %></p>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
      <%}else{ %>
          <!-- Photo Box Comment -->
          <div class="box box-widget">
            <!-- /.box-header -->
            <div class="box-footer box-comments">
              <div class="box-comment">
                <!-- User image -->
                <img src="/hotel/admin/dist/img/<%=mgr.getMember(relist.get(i).getWriter()).getPic() %>" class="img-circle img-sm" alt="User Image" onerror="this.src='/hotel/admin/dist/img/user_default.png'">
                <span class="username"><%=relist.get(i).getWriter() %></span>
                <span class="description"><%=relist.get(i).getTitle() %></span><!-- /.username -->
                <div class="comment-text">
                  <%=relist.get(i).getContent() %>
                </div>
                <!-- /.comment-text -->
              </div>
              <!-- /.box-comment -->
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
    <%}} %>
        </div>
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
<!-- Slimscroll -->
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<script>
var speed=300;
$("#select2").change("select2:select", function (e) { 
  var select_val = $(e.currentTarget).val();
  if(select_val.length!=0)
	  $('.username').each(function(){
		  if(jQuery.inArray(this.id, select_val)<0) $(this).hide(speed)
		  else $(this).show(speed);
	  })
	else
	  $('.username').each(function(){
		  $(this).show(speed);
	  })
});
</script>
</body>
</html>
