<%@page import="hotel.RoomBean"%>
<%@page import="java.util.Vector"%>
<%@ page import="java.util.*,hotel.*"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr" />
<jsp:useBean id="bean" class="hotel.MemberBean" />
<jsp:useBean id="rmgr" class="hotel.RoomMgr" />
<jsp:useBean id="rbean" class="hotel.RoomBean" />
<jsp:useBean id="remgr" class="hotel.ReviewMgr" />
<jsp:useBean id="cmgr" class="hotel.CountMgr" />
<jsp:useBean id="rebean" class="hotel.ReviewBean" />
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String email = (String)session.getAttribute("emailKey");
		boolean off = email == null || email.equals("");
		bean = mgr.getMember(email);
		Vector<RoomBean> vlist = rmgr.getRoomList();
		Vector<ReviewBean> relist = remgr.getReviewList();
		String id = (String)bean.getId();
		String pw = (String)bean.getPass();
	    if(request.getAttribute("recount")==null) request.setAttribute("recount", 1);
		    else request.setAttribute("recount", Integer.parseInt(request.getAttribute("recount").toString())+1);
	    if(session.getAttribute("secount")==null) session.setAttribute("secount", 1);
		    else session.setAttribute("secount", Integer.parseInt(session.getAttribute("secount").toString())+1);
	    if(application.getAttribute("apcount")==null) application.setAttribute("apcount", 1);
	   		else application.setAttribute("apcount", Integer.parseInt(application.getAttribute("apcount").toString())+1);
	    String requestcount = request.getAttribute("recount").toString();
	    int sessioncount = (Integer)session.getAttribute("secount");
	    String applicationcount = application.getAttribute("apcount").toString();
		cmgr.UpdateTotal(request.getRemoteAddr());
%>
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<title>2Team Hotel Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="assets/css/bootstrap.css" type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/slick.css" type='text/css'>
<link rel="stylesheet" href="assets/css/slick-theme.css" type='text/css'>
<link rel="stylesheet" href="assets/css/animate.css" type='text/css'>
<link rel="stylesheet" href="assets/css/fonticons.css" type='text/css'>
<link rel="stylesheet" href="assets/css/font-awesome.min.css" type='text/css'>
<link rel="stylesheet" href="assets/css/magnific-popup.css" type='text/css'>
<link rel="stylesheet" href="assets/css/bootsnav.css" type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<link href="css/text.css" rel="stylesheet" type="text/css" type='text/css'>
<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->
<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css" type='text/css'>
<!--<link rel="stylesheet" href="assets/css/colors/maron.css" type='text/css'>-->
<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" type='text/css' />
<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script src="js/jquery.min.js"></script>
<!--start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<script src="js/fwslider.js"></script>
<!--end slider -->
<!---start-date-piker---->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
			var loginBox = $('#login-box');
			var roomBox = $('#room-box');
			var reviewBox = $('#review-box');
			$('.login-window').click(function() {
				// Getting the variable's value from a link 
				//Fade in the Popup and add close button
				$(loginBox).fadeIn(300,function(){
					$(loginBox).css("display", "block"); 
				});
				return false;
			});
			// When clicking on the button close or the mask layer the popup closed
			$(loginBox).click(function() { 
				if(!$(this).is('.signin'))
				 $(loginBox).fadeOut(300 , function() {
					 $('.login-popup').css("display", "none"); 
				}); 
			return false;
			});
			$(roomBox).click(function() { 
				if(!$(this).is('.roomdet'))
				 $(loginBox).fadeOut(300 , function() {
					 $('.room-popup').css("display", "none"); 
				}); 
			return false;
			});
			$(reviewBox).click(function() { 
				if(!$(this).is('.reviewdet'))
				 $(reviewBox).fadeOut(300 , function() {
					 $('.review-popup').css("display", "none"); 
				}); 
			return false;
			});
		});
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
	
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
</script>
<script>
		function a() {
			var loginBox = $('#login-box');
			$(loginBox).fadeIn(300,function(){
				$(loginBox).css("display", "block"); 
			});
		}
		function b(d){
			var roomBox = $('#room-box');
			$('.roomdet').attr("src","./roomdetail/roomdetail.jsp?index="+d);
			$(roomBox).fadeIn(300,function(){
				$(roomBox).css("display", "block"); 
			});
			return false;
		}
		function c() {
			var reviewBox = $('#review-box');
			$('.reviewdet').fadeIn(300,function(){
				$(reviewBox).css("display", "block"); 
			});
		}
		</script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div id="login-box" class="login-popup">
		<iframe class=signin src="./login/login.jsp"></iframe>
	</div>
	<div id="room-box" class="room-popup">
		<iframe class=roomdet src="./roomdetail/roomdetail.jsp?index=1" height="100%" width="100%" style="border: 5px dashed rgba(94, 106, 80, 0.92)"></iframe>
	</div>
	<div id="review-box" class="review-popup">
		<iframe class=reviewdet src="./review/review.html" height="100%" width="100%" style="border: 5px dashed rgba(94, 106, 80, 0.92)" scrolling="no"></iframe>
	</div>
	<!-- Preloader -->
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
			</div>
		</div>
	</div>
	<!--End off Preloader -->
	<div class="culmn">
		<!--Home page style-->
		<nav
			class="navbar navbar-default navbar-fixed white no-background bootsnav">
			<!-- Start Top Search -->
			<div class="top-search">
				<div class="container">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-search"></i></span> <input type="text" class="form-control" placeholder="Search"> <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
					</div>
				</div>
			</div>
			<!-- End Top Search -->
			<div class="container" style="padding: 0px;">
				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user-circle-o fa-lg"></i> <!-- <span class="badge">3</span>-->
						</a>
							<ul class="dropdown-menu cart-list">
								<%if(off){%>
								<li><i class="fa fa-snowflake-o" aria-hidden="true"></i>
									<h6>
										<a href="#" class="login-window">LOG IN & SIGN UP </a>
									</h6> <!--  <p class="m-top-10">2x - <span class="price">$19.00</span></p>-->
								</li>
								<%}else{%>
								<iframe src="./login/mypage.jsp" height="280px" width="100%" scrolling="no"></iframe>s
								<%}%>
							</ul></li>
						<%if(!off) {%>
						<li class="my-page"><a href="#"><%=id%> 님
								<i class="fa fa-times" onclick="location.href='./login/logout.jsp'"></i></a></li>
						<%} %>
					</ul>
				</div>
				<!-- End Atribute Navigation -->
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="#brand" style="width: 230px;"> <img src="assets/images/tree1.png" class="logo logo-display" alt="" height=49> <img src="assets/images/tree2.png" class="logo logo-scrolled" alt="" height=49> <br>&nbsp;&nbsp;
						<b>PACIFIC COVE</b>
					</a>
				</div>
				<!-- End Header Navigation -->
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li><a href="#hello">WELCOME</a></li>
						<li><a href="#portfolio">ROOMS&SUITES</a></li>
						<li><a href="#testimonial">REVIEW</a></li>
						<li><a href="#blog">#PICTURE</a></li>
						<li><a href="#contact">CONTACT US</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- Start Side Menu -->
			<div class="side">
				<a href="#" class="close-side"><i class="fa fa-times"></i></a>
				<div class="widget">
					<h6 class="title">CUSTOM PAGES</h6>
					<ul class="link">
						<%if(off){ %>
						<li><a class="login-window">Login / Sign In</a></li>
						<%}else{ %>
						<li><a href="#">My Page</a></li>
						<%} %>
						<li><a href="#">Services</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Portfolio</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
				<div class="widget">
					<h6 class="title">ADDITIONAL LINKS</h6>
					<ul class="link">
						<li><a href="#">Retina Homepage</a></li>
						<li><a href="#">New Page Examples</a></li>
						<li><a href="#">Parallax Sections</a></li>
						<li><a href="#">Shortcode Central</a></li>
						<li><a href="#">Ultimate Font Collection</a></li>
					</ul>
				</div>
			</div>
			<!-- End Side Menu -->
		</nav>
		<!--Home Sections-->
		<section id="hello" class="home bg-mega">
			<div class="container" style="width: 100%">
				<div class="row">
					<!----start-images-slider---->
					<div class="images-slider">
						<!-- start slider -->
						<div id="fwslider">
							<div class="slider_container">
								<div class="slide">
									<!-- Slide image -->
									<img src=".\images/hotel\vhotel.jpg">
									<!-- /Slide image -->
									<!-- Texts container -->
									<div class="slide_content">
										<div class="slide_content_wrap">
											<!-- Text title -->
											<div class="containerd">
												<h1 class="heading" data-target-resolver></h1>
											</div>
											<script src="js/text.js"></script>
											<!-- /Text title -->
										</div>
									</div>
									<!-- /Texts container -->
								</div>
								<!-- /Duplicate to create more slides -->
								<div class="slide">
									<img src=".\images/hotel\vhotel4.jpg">
									<div class="slide_content">
										<div class="slide_content_wrap">
											<!-- Text title -->
											<h4 class="title">
												EXTRAORDINARY EXPERIENCES<span class="hide">
													condimentum </span>
											</h4>
											<!-- /Text title -->
										</div>
									</div>
								</div>
								<div class="slide">
									<img src=".\images/hotel\vhotel3.jpg">
									<div class="slide_content">
										<div class="slide_content_wrap">
											<!-- Text title -->
											<h4 class="title">
												EXCEPTIONAL &nbsp;SERVICES <span class="hide">
													condimentum </span>
											</h4>
											<!--<h5 class="title1"><i class="bg"></i>333 <span class="hide">simply dummy text</span> </h5>-->
											<!-- /Text title -->
										</div>
									</div>
								</div>
								<!--/slide -->
								<div class="slide">
									<img src=".\images/hotel\vhotel2.jpg">
									<div class="slide_content">
										<div class="slide_content_wrap">
											<!-- Text title -->
											<h4 class="title">
												EXTRAORDINARY EXPERIENCES<span class="hide">
													condimentum </span>
											</h4>
											<!-- /Text title -->
										</div>
									</div>
								</div>
								<div class="slide">
									<img src=".\images/hotel\vhotel5.jpg">
									<div class="slide_content">
										<div class="slide_content_wrap">
											<!-- Text title -->
											<h4 class="title">
												EXTRAORDINARY EXPERIENCES<span class="hide">
													condimentum </span>
											</h4>
											<!-- /Text title -->
										</div>
									</div>
								</div>
							</div>
							<div class="timers"></div>
							<div class="slidePrev">
								<span> </span>
							</div>
							<div class="slideNext">
								<span> </span>
							</div>
						</div>
						<!--/slider -->
					</div>
					<div class="main_bg">
						<div class="wrap">
							<div class="online_reservation">
								<iframe src="./reservation/reservation.jsp" width="100%"
									height="250" scrolling="no"></iframe>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Home Sections-->
		<hr>
		<!--Video section-->
		<section id="video" class="video">
			<div class="overlay"></div>
			<div class="main_video m-top-100 m-bottom-100 text-center">
				<iframe id="yout" width="560" height="315"
					src="https://www.youtube.com/embed/bKlQ1fRLGUU?modestbranding=1&enablejsapi=1&version=3&playerapiid=ytplayer&rel=0&controls=0&showinfo=0"
					frameborder="0" gesture="media" allow="encrypted-media"
					allowfullscreen></iframe>
			</div>
		</section>
		<!--End off video section -->
		<div class="container">
			<div class="row">
				<div class="main_featured m-top-100">
					<div class="col-sm-12">
						<div class="head_title text-center">
							<h2>
								<i class="fa fa-check" aria-hidden="true"></i> &nbsp;EXCEPTIONAL
								VIEWS
							</h2>
							<div class="separator_auto"></div>
							<p>Choose from one of 67 stylish guest rooms featuring
								stunning Pacific Ocean or garden courtyard views, all within
								walking distance of the world-famous Santa Monica Pier and Third
								Street Promenade shopping and dining district.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="featured_slider">
			<div>
				<div class="featured_img">
					<img src=".\images/hotel\view1.jpg" alt="" /> <a
						href=".\images/hotel\view1.jpg" class="popup-img"></a>
				</div>
			</div>
			<div>
				<div class="featured_img">
					<img src=".\images/hotel\view2.jpg" alt="" /> <a
						href=".\images/hotel\view2.jpg" class="popup-img"></a>
				</div>
			</div>
			<div>
				<div class="featured_img">
					<img src=".\images/hotel\view3.jpg" alt="" /> <a
						href=".\images/hotel\view3.jpg" class="popup-img"></a>
				</div>
			</div>
			<div>
				<div class="featured_img">
					<img src=".\images/hotel\view4.jpg" alt="" /> <a
						href=".\images/hotel\view4.jpg" class="popup-img"></a>
				</div>
			</div>
			<div>
				<div class="featured_img">
					<img src=".\images/hotel\view5.jpg" alt="" /> <a
						href=".\images/hotel\view5.jpg" class="popup-img"></a>
				</div>
			</div>
		</div>
		<!-- End off featured slider -->
		<!--Portfolio Section-->
		<section id="portfolio"
			class="portfolio lightbg m-top-100 p-bottom-100">
			<div class="container">
				<div class="row">
					<div class="main_portfolio">
						<div class="col-md-8 col-md-offset-2">
							<div class="head_title text-center">
								<h2>
									<i class="fa fa-check" aria-hidden="true"></i>
									&nbsp;ROOMS&SUITES
								</h2>
								<div class="separator_auto"></div>
								<p>객실 소개~~</p>
							</div>
						</div>
						<div class="portfolio_content">
							<div class="row">
								<%for(int i=0;i<vlist.size();i++) {%>
								<div class="col-md-9">
									<div class="portfolio_item">
										<img src="./images/<%=vlist.get(i).getMainpic()%>"
											alt="<%=vlist.get(i).getMainpic()%>" />
										<div class="portfolio_hover text-center">
											<h6 class="text-uppercase text-white"><%=vlist.get(i).getRoomname()%></h6>
											<p class=" text-white"><%=vlist.get(i).getContent()%></p>
											<div class="portfolio_hover_icon">
												<a href="<%=vlist.get(i).getMainpic()%>" class="popup-img"><i
													class="fa fa-expand"></i></a> <a
													onclick="b(<%=vlist.get(i).getIdx()%>)"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
								</div>
								<%} %>
							</div>
						</div>
					</div>
					<!--End off row -->
				</div>
				<!--End off container -->
		</section>
		<!-- End off Portfolio section-->
		<!--Skill Sections-->
		<section id="skill" class="skill roomy-100">
			<div class="container">
				<div class="row">
					<div class="main_skill">
						<div class="col-md-6">
							<div class="skill_content wow fadeIn">
								<h2>Our Pride</h2>
								<div class="separator_left"></div>
								<p>At Pacific Cove, we believe in recognizing a familiar
									face, welcoming a new one and treating every one we meet the
									way we would want to be treated ourselves. Whether you work
									with us, stay with us, live with us, discover with us, we
									believe our purpose is to create impressions that will stay
									with you for a lifetime. It comes from our belief that life is
									richer when we truly connect to the people and the world around
									us..</p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="skill_bar sm-m-top-50">
								<div class="teamskillbar clearfix m-top-20" data-percent="95%">
									<h6>RETENTION RATE</h6>
									<div class="teamskillbar-bar"></div>
								</div>
								<!-- End Skill Bar -->
								<div class="teamskillbar clearfix m-top-50" data-percent="98%">
									<h6>SATISFACTION</h6>
									<div class="teamskillbar-bar"></div>
								</div>
								<!-- End Skill Bar -->
								<div class="teamskillbar clearfix m-top-50" data-percent="97%">
									<h6>SERVICE</h6>
									<div class="teamskillbar-bar"></div>
								</div>
								<!-- End Skill Bar -->
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
			<br /> <br /> <br />
			<hr />
			<br /> <br /> <br />
			<div class="container">
				<div class="row">
					<div class="skill_bottom_content text-center">
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter"><%=cmgr.getCount().getTotal() %></h2>
								<div class="separator_small"></div>
								<h5>
									<em>Visitor count</em>
								</h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter"><%=requestcount%></h2>
								<div class="separator_small"></div>
								<h5>
									<em>Request count</em>
								</h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter"><%=sessioncount %></h2>
								<div class="separator_small"></div>
								<h5>
									<em>Session count</em>
								</h5>
							</div>
						</div>
						<div class="col-md-3">
							<div class="skill_bottom_item">
								<h2 class="statistic-counter"><%=applicationcount %></h2>
								<div class="separator_small"></div>
								<h5>
									<em>Application count</em>
								</h5>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Skill section -->
		<!--Testimonial Section-->
		<section id="testimonial" class="testimonial fix">
			<div class="overlay pricing_body">
				<img src=".\images/hotel\vhotel8.jpg">
			</div>
			<div class="container m-top-100">
				<div class="row">
					<div class="main_testimonial roomy-100">
						<div class="head_title text-center">
							<h2 class="text-white">REVIEW</h2>
						</div>
						<div class="testimonial_slid text-center">
							<%for(int i=0;i<relist.size();i++){ %>
							<div class="testimonial_item">
								<div class="col-sm-10 col-sm-offset-1">
									<p class="text-white"><%=relist.get(i).getContent()%></p>
									<div class="test_authour m-top-30">
										<h6 class="text-white m-bottom-20"><%=relist.get(i).getWriter()%></h6>
										<%for(int j=0;j<Integer.parseInt(relist.get(i).getStar());j++){ %>
										<i class="fa fa-star"></i>
										<%} %>
									</div>
								</div>
							</div>
							<%} %>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Testimonial section -->
		<!--Pricing Section-->
		<section id="pricing" class="pricing lightbg">
			<div class="container">
				<div class="row">
					<div class="main_pricing">
						<div class="col-md-8 col-md-offset-2 col-sm-12">
							<div class="padding-sixty text-center">
								<a href="javascript:c()">
									<h4>
										<i class="fa fa-th-large" aria-hidden="true"></i>&nbsp;WRITE
										REVIEW!
									</h4>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!--End off row-->
			</div>
			<!--End off container -->
		</section>
		<!--End off Pricing section -->
		<!--Blog Section-->
		<section id="blog" class="blog">
			<div class="container">
				<div class="row">
					<div class="main_blog text-center">
						<div class="col-sm-8 col-sm-offset-2">
							<div class="m-top-50 padding-sixty text-center">
								<h2>
									<i class="fa fa-instagram" aria-hidden="true"></i>&nbsp;YOUR #PICTURE
								</h2>
								<div class="separator_auto"></div>
							</div>
						</div>
						<%for(int i=0;i<relist.size();i++){if(relist.get(i).getPic()!=null){ %>
						<div class="col-md-4">
							<div class="blog_item m-top-20">
								<div class="blog_item_img">
									<img src="./images/review/<%=relist.get(i).getPic()%>" alt="<%=relist.get(i).getPic()%>" />
								</div>
								<div class="blog_text roomy-40">
									<h6><%=relist.get(i).getContent()%></h6>
									<p>
										<em><a href=""><%=relist.get(i).getRegdate()%></a> /<a href=""><%=relist.get(i).getWriter()%></a></em>
									</p>
								</div>
							</div>
						</div>
						<%}} %>
					</div>
				</div>
				<!--End off row -->
			</div>
			<!--End off container -->
		</section>
		<!-- End off Blog section-->
		<!--Maps Section-->
		<div class="main_maps text-center fix m-top-100">
			<div class="overlay"></div>
			<div class="maps_text">
				<h3 class="text-white" onclick="showmap()"> FIND US ON THE MAP <i class="fa fa-angle-down"></i>
				</h3>
				<div id="map_canvas" class="mapheight"></div>
			</div>
		</div>
		<!-- End off Maps Section-->
		<!--Contact Us Section-->
		<section id="contact" class="contact bg-mega fix">
			<div class="container">
				<div class="row">
					<div class="main_contact roomy-100 text-white">
						<div class="col-md-4">
							<div class="rage_widget">
								<div class="widget_head">
									<h3 class="text-white">
										<i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;CONTACT US
									</h3>
									<div class="separator_small"></div>
								</div>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
									sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
									aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
									nostrud exerci tation ullamcorper suscipit lobortis nisl ut
									aliquip ex ea commodo consequat.</p>
							</div>
						</div>
						<div class="col-md-8 sm-m-top-30">
							<form class="" action="./login/SendAccount.jsp">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<input id="email" name="email" type="text" placeholder="EMAIL" class="form-control" required="">
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<input id="name" name="name" type="text" placeholder="NAME"
												class="form-control">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<textarea name="message" class="form-control" rows="6"
												placeholder="MESSAGE"></textarea>
										</div>
										<div class="form-group text-center">
											<button type="submit" class="btn btn-primary">SEND MAIL</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!--End off row -->
			</div>
			<!--End off container -->
		</section>
		<!--End off Contact Section-->
		<!-- scroll up-->
		<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>
		<!-- End off scroll up -->
		<footer id="footer" class="bg-black">
			<div class="container">
				<div class="row">
					<div class="main_footer text-center p-top-40 p-bottom-30">
						<p class="wow fadeInRight" data-wow-duration="1s" style="color: white";>©2 TEAM Hotels Limited 2017-. All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<!-- JS includes -->
	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.js"></script>
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/jquery.collapse.js"></script>
	<script src="assets/js/bootsnav.js"></script>
	<!-- paradise slider js -->
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
	<script src="assets/js/gmaps.min.js"></script>
	<script>
                function showmap() {
                    var mapOptions = {
                        zoom: 13,
                        scrollwheel: false,
                        center : new google.maps.LatLng(35.152713, 129.111524),
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    };
                    var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
                    $('.mapheight').css('height', '350');
                    $('.maps_text h3').hide();
                    var mapCanvas = document.getElementById("map");
                    var myCenter = new google.maps.LatLng(35.152713, 129.111524); 
                    var marker = new google.maps.Marker({
                        position: myCenter,
                        animation: google.maps.Animation.BOUNCE
                      });
                      marker.setMap(map);
                      google.maps.event.addListener(marker,'click',function() {
                    	    map.setZoom(19);
                    	    map.setCenter(marker.getPosition());
                    	   
                    	    var infowindow = new google.maps.InfoWindow({
                    	        content:"Pacific Cove Hotel Busan "
                    	      });
                    	    infowindow.open(map,marker);
                    	  });
                }
            </script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>
