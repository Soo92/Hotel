<%@page import="hotel.RoomBean"%>
<%@page import="java.util.Vector"%>
<%@ page import="java.util.*,hotel.*"%>
<jsp:useBean id="mgr" class="hotel.MemberMgr"/>
<jsp:useBean id="bean" class="hotel.MemberBean"/>
<jsp:useBean id="rmgr" class="hotel.RoomMgr"/>
<jsp:useBean id="rbean" class="hotel.RoomBean"/>
<jsp:useBean id="remgr" class="hotel.ReviewMgr"/>
<jsp:useBean id="rebean" class="hotel.ReviewBean"/>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String email = (String)session.getAttribute("emailKey");
		boolean off = email == null || email.equals("");
		bean = mgr.getMember(email);
		Vector<RoomBean> vlist = rmgr.getMemberList();
		Vector<ReviewBean> relist = remgr.getReviewList();
		String id = (String)bean.getId();
		String pw = (String)bean.getPass();
%>

<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    
    <!--Designerd by: http://bootstrapthemes.co-->
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>2Team Hotel Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/fonticons.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
         <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
         <link href="css/text.css" rel="stylesheet" type="text/css">
        
        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

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
		</script>
		<script>
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
		<iframe class=reviewdet src="./login/review.html" height="100%" width="100%" style="border: 5px dashed rgba(94, 106, 80, 0.92)"></iframe>
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
        </div><!--End off Preloader -->
        <div class="culmn">
            <!--Home page style-->
            <nav class="navbar navbar-default navbar-fixed white no-background bootsnav">
                <!-- Start Top Search -->
                <div class="top-search">
                    <div class="container">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <input type="text" class="form-control" placeholder="Search">
                            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                        </div>
                        
                    </div>
                </div>
                <!-- End Top Search -->
                <div class="container" style="padding:0px;">    
                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                                    <i class="fa fa-user-circle-o fa-lg"></i>
                                    <!-- <span class="badge">3</span>-->
                                </a>
                                <ul class="dropdown-menu cart-list">
                                <%if(off){%>
                                    <li>
                                        <i class="fa fa-snowflake-o" aria-hidden="true"></i>
                                        <h6><a href="#" class="login-window">LOG IN & SIGN UP </a></h6>
                                        <!--  <p class="m-top-10">2x - <span class="price">$19.00</span></p>-->
                                    </li>
                                    <li>
                                        <h6><a href="#">MY CART</a></h6>
                                    </li>
                                    <!---- More List ---->
                                    <li class="total">
                                        <span class="pull-right"><strong>Total</strong>: $0.00</span>
                                        <a href="#" class="btn btn-cart">Cart</a>
                                    </li>
                                <%}else{%>
									<iframe src="./login/mypage.jsp" height="280px" width="100%" scrolling="no"></iframe>
                                <%}%>
                                </ul>
                            </li>

						<%if(!off) {%>
							<li class="my-page"><a href="#"><%=id%> 님<button onclick="location.href='./login/logout.jsp'">x</button></a></li>
						<%} %>
                            <li class="search"><a href="/roomdetail/roomdetail.html"><i class="fa fa-search"></i></a></li>
                            <li class="side-menu"><a href="#"><i class="fa fa-bars"></i></a></li>
                        </ul>
                    </div>        
                    <!-- End Atribute Navigation -->

                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="#brand">
                            <img src="assets/images/tree1.png" class="logo logo-display m-top-10" alt="" height=49  >
                            <img src="assets/images/tree2.png" class="logo logo-scrolled" alt="" height=49  >
                            <br>&nbsp;&nbsp;
                            <b>PACIFIC COVE</b> 
                        </a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                            <li><a href="#hello">WELCOME</a></li>                    
                            <li><a href="#about">HOTEL INFO</a></li>                    
                            <li><a href="#service">FACILITIES</a></li>                    
                            <li><a href="#portfolio">ROOMS&SUITES</a></li>                    
                            <li><a href="#pricing">PACKAGES</a></li>                    
                            <li><a href="#blog">#INSTAGRAM</a></li>                    
                            <li><a href="#contact">CONTACT US</a></li>  
                        </ul>
                    </div><!-- /.navbar-collapse -->
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
           
                <div class="container" style="width:100%">
                    <div class="row">
						<!----start-images-slider---->
							<div class="images-slider">
								<!-- start slider -->
							    <div id="fwslider">
							        <div class="slider_container">
							            <div class="slide"> 
							                <!-- Slide image -->
							                <img src=".\images/hotel\vhotel.jpg">
							               <!--  <iframe width="2100" height="1181" src="https://www.youtube.com/embed/V73LSnLuGC4?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1" frameborder="0"  allowfullscreen></iframe>-->
							                <!-- /Slide image -->
							                <!-- Texts container -->
							                <div class="slide_content">
							                    <div class="slide_content_wrap">
							                        <!-- Text title -->
							                        
	                                                <div class="containerd">
                                                        <h1 class="heading" data-target-resolver></h1>
                                                             </div>
  
                                                            <script src="js/text.js" ></script>

							                        
							                        
							                        <!-- /Text title -->
							                    </div>
							                </div>
							                 <!-- /Texts container -->
							            </div>
							            <!-- /Duplicate to create more slides -->
							            <div class="slide">
							                <!-- <iframe width="1920" height="1080" src="https://www.youtube.com/embed/eaSdTJAYl6s?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>-->
							                <img src=".\images/hotel\vhotel4.jpg">
							                <div class="slide_content">
							                     <div class="slide_content_wrap">
							                        <!-- Text title -->
							                        
							                    
							                        <h4 class="title">EXTRAORDINARY EXPERIENCES<span class="hide"> condimentum </span></h4>
							                        
							                        <!-- /Text title -->
							                    </div>
							                </div>
							            </div>
							            <div class="slide">
							               <!--  <iframe width="1920" height="1080" src="https://www.youtube.com/embed/k-o9DL5yf7M?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>-->
							               <img src=".\images/hotel\vhotel3.jpg">
							                <div class="slide_content">
							                     <div class="slide_content_wrap">
							                        <!-- Text title -->
							                        <h4 class="title">EXCEPTIONAL &nbsp;SERVICES <span class="hide"> condimentum </span></h4>
							                        <!--<h5 class="title1"><i class="bg"></i>333 <span class="hide">simply dummy text</span> </h5>-->
							                        <!-- /Text title -->
							                    </div>
							                </div>
							            </div>
							            <!--/slide -->
							            <div class="slide">
							                <!-- <iframe width="1920" height="1080" src="https://www.youtube.com/embed/eaSdTJAYl6s?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>-->
							                <img src=".\images/hotel\vhotel2.jpg">
							                <div class="slide_content">
							                     <div class="slide_content_wrap">
							                        <!-- Text title -->
							                        <h4 class="title">EXTRAORDINARY EXPERIENCES<span class="hide"> condimentum </span></h4>
							                        
							                        <!-- /Text title -->
							                    </div>
							                </div>
							            </div>
							            <div class="slide">
							                <!-- <iframe width="1920" height="1080" src="https://www.youtube.com/embed/eaSdTJAYl6s?rel=0&amp;controls=0&amp;showinfo=0&autoplay=1" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>-->
							                <img src=".\images/hotel\vhotel5.jpg">
							                <div class="slide_content">
							                     <div class="slide_content_wrap">
							                        <!-- Text title -->
							                        <h4 class="title">EXTRAORDINARY EXPERIENCES<span class="hide"> condimentum </span></h4>
							                        
							                        <!-- /Text title -->
							                    </div>
							                </div>
							            </div>
							            
							            
							        </div>
							        <div class="timers"> </div>
							        <div class="slidePrev"><span> </span></div>
							        <div class="slideNext"><span> </span></div>
							    </div>
							    <!--/slider -->
							</div>                            
							<div class="main_bg">
							<div class="wrap">
								<div class="online_reservation">										
								<iframe src="./reservation/reservation.jsp" width="100%" height="250" scrolling="no"></iframe>
								</div>
							</div>		
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->
            
            <hr>
            
            <!--About Sections-->
            <section id="about" class="about roomy-100">
                <div class="container">
                    <div class="row">
                        <div class="main_about">
                            <div class="col-md-6">
                                <div class="about_content">
                                    <h2><i class="fa fa-check" aria-hidden="true"></i>&nbsp;EXPERIENCE OUR HOTEL</h2>
                                    <div class="separator_left"></div>
                                    
                                  <section id="portfolio" class="portfolio lightbg">   
                <div class="container">
                    <div class="row">
                        
                                          <div class="col-md-6 m-top-30">
                                    <div class="portfolio_item">
                                        <img src=".\images/hotel\ex1.gif" alt="" />
                                        <div class="portfolio_hover text-center">
                                            <h6 class="text-uppercase text-white">Title</h6>
                                            <p class=" text-white">Lorem ipsum dolor sit amet</p>
                                            <div class="portfolio_hover_icon">
                                                <a href="assets/images/Portfolio/4.jpg" class="popup-img"><i class="fa fa-expand"></i></a>
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             </div>
                                
                                    
                                    
                                    <div class="about_btns m-top-40">
                                        <a href="" class="btn btn-primary">MORE INFO</a>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <div class="col-md-6">
                                <div class="about_accordion wow fadeIn">
                                    <div id="faq_main_content" class="faq_main_content">
                                        <h6 ><i class="fa fa-angle-right"></i> SPEND THE HOLIDAYS WITH US </h6>
                                        <div >
                                            <div class="content">
                                                <p>Throughout the year, friends and family are what keep us going; 
                                                the holidays are the perfect time to spoil them. 
                                                Whether you choose to gift a beautifully wrapped package, 
                                                treat your family to a lavish suite experience or indulge in seasonally inspired cocktails in the Club Lounge, 
                                                The Ritz-Carlton can help you treat those who make every day worth celebrating.</p>

                                                 <div class="col-md-20 m-top-30">
                                    <div class="portfolio_item portfolio_item2">
                                        <img src=".\images/hotel\ex2.jpg" alt="" />
                                        <div class="portfolio_hover text-center">
                                            <h6 class="text-uppercase text-white">Title</h6>
                                            <p class=" text-white">Lorem ipsum dolor sit amet</p>
                                            <div class="portfolio_hover_icon">
                                                <a href="assets/images/Portfolio/6.jpg" class="popup-img"><i class="fa fa-expand"></i></a>
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                            </div>
                                        </div> <!-- End off accordion item-1 -->

                                        <h6 ><i class="fa fa-angle-right"></i> PLAN YOUR WINTER ESCAPE</h6>
                                        <div >
                                            <div class="content">
                                              
                                              <p> From snowmobiling to après-ski, enjoy the luxury of a ski-in/ski-out resort with a host of winter experiences and activities for the entire family. </p>
                                               <div class="col-md-20 m-top-30">
                                    <div class="portfolio_item portfolio_item2">
                                        <img src=".\images/hotel\ex2.jpg" alt="" />
                                        <div class="portfolio_hover text-center">
                                            <h6 class="text-uppercase text-white">Title</h6>
                                            <p class=" text-white">Lorem ipsum dolor sit amet</p>
                                            <div class="portfolio_hover_icon">
                                                <a href="assets/images/Portfolio/6.jpg" class="popup-img"><i class="fa fa-expand"></i></a>
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                              
                                            </div>
                                        </div> <!-- End off accordion item-2 -->

                                        <h6> <i class="fa fa-angle-right"></i>ENJOY BEST SERVICE </h6>
                                        <div>
                                            <div class="content">
                                               
                                               <p> Soar by helicopter above towering waterfalls and the Haleakala volcano to Hana Ranch, 
                                                a working cattle ranch on Maui’s eastern coast, 
                                                where your personal chefs will prepare the ultimate gourmet feast.</p>
                                                          <div class="col-md-20 m-top-30">
                                    <div class="portfolio_item portfolio_item2">
                                        <img src=".\images/hotel\ex2.jpg" alt="" />
                                        <div class="portfolio_hover text-center">
                                            <h6 class="text-uppercase text-white">Title</h6>
                                            <p class=" text-white">Lorem ipsum dolor sit amet</p>
                                            <div class="portfolio_hover_icon">
                                                <a href="assets/images/Portfolio/6.jpg" class="popup-img"><i class="fa fa-expand"></i></a>
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                                
                                                
                                            </div>
                                        </div> <!-- End off accordion item-3 -->

                                        <h6><i class="fa fa-angle-right"></i> EXPLORE OUR HOTEL</h6>
                                        <div>
                                            <div class="content">
                                             
                                             <p>During a wildlife expedition through Serengeti National Park, 
                                              explore the landscape alongside a resident naturalist and help set up cameras that capture images of the area’s most majestic 
                                              – and elusive – residents.</p>
                                                                <div class="col-md-20 m-top-30">
                                    <div class="portfolio_item portfolio_item2">
                                        <img src=".\images/hotel\ex2.jpg" alt="" />
                                        <div class="portfolio_hover text-center">
                                            <h6 class="text-uppercase text-white">Title</h6>
                                            <p class=" text-white">Lorem ipsum dolor sit amet</p>
                                            <div class="portfolio_hover_icon">
                                                <a href="assets/images/Portfolio/6.jpg" class="popup-img"><i class="fa fa-expand"></i></a>
                                                <a href=""><i class="fa fa-search"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                              
                                            </div>
                                        </div> <!-- End off accordion item-4 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
                <br />
                <br />
                <br />
                <br />
                <hr />
                <br />
                <br />
              
                <div class="container">
                    <div class="row">
                        <div class="about_bottom_content">
                            <div class="col-md-4">
                                <div class="about_bottom_item m-top-20">
                                    <div class="ab_head">
                                        <div class="ab_head_icon">
                                            <i class="icofont icofont-speech-comments"></i>
                                        </div>
                                        <h6 class="m-top-20"> WE’RE CREATIVE</h6>
                                    </div>
                                    <p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer adipiscing ealit, 
                                        sed diaim nonummy nibsih euismod tincidiunt laorieet doloire
                                        magna diam aliquafm erat voluitpati. </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="about_bottom_item m-top-20">
                                    <div class="ab_head">
                                        <div class="ab_head_icon">
                                            <i class="icofont icofont-speech-comments"></i>
                                        </div>
                                        <h6 class="m-top-20">WE'RE FRIENDLY</h6>
                                    </div>
                                    <p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer adipiscing ealit, 
                                        sed diaim nonummy nibsih euismod tincidiunt laorieet doloire
                                        magna diam aliquafm erat voluitpati. </p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="about_bottom_item m-top-20">
                                    <div class="ab_head">
                                        <div class="ab_head_icon">
                                            <i class="icofont icofont-heart"></i>
                                        </div>
                                        <h6 class="m-top-20">WE LOVE MINIMALISM</h6>
                                    </div>
                                    <p class="m-top-20">Lorem ipsum dolor sit amet, consectetuer adipiscing ealit, 
                                        sed diaim nonummy nibsih euismod tincidiunt laorieet doloire
                                        magna diam aliquafm erat voluitpati. </p>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off About section -->
              


            <!--Video section-->
            <section id="video" class="video">
                <div class="overlay"><img src=".\images/hotel\vhotel6.jpg"></div>
                <div class="main_video roomy-100 m-top-100 m-bottom-100 text-center">
                    <div class="video_text text-center">
                        <img src="" alt="" />
                        <a href="" class="video-link"><span class="fa fa-play"></span></a>
                    </div>
                </div>
            </section><!--End off video section -->


            <div class="container">
                <div class="row">
                    <div class="main_featured m-top-100">
                        <div class="col-sm-12">
                            <div class="head_title text-center">
                                <h2><i class="fa fa-check" aria-hidden="true"></i> &nbsp;EXCEPTIONAL VIEWS</h2>
                                <div class="separator_auto"></div>
                                <p>Choose from one of 67 stylish guest rooms featuring stunning Pacific Ocean or garden courtyard views, 
                                all within walking distance of the world-famous Santa Monica Pier 
                                and Third Street Promenade shopping and dining district. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="featured_slider">
                <div>
                    <div class="featured_img">
                        <img src=".\images/hotel\view1.jpg" alt="" />
                        <a href=".\images/hotel\view1.jpg" class="popup-img"></a>
                    </div>
                </div>
                <div>
                    <div class="featured_img">
                        <img src=".\images/hotel\view2.jpg" alt="" />
                        <a href=".\images/hotel\view2.jpg" class="popup-img"></a>
                    </div>
                </div>
                <div>
                    <div class="featured_img">
                        <img src=".\images/hotel\view3.jpg" alt="" />
                        <a href=".\images/hotel\view3.jpg" class="popup-img"></a>
                    </div>
                </div>
                <div>
                    <div class="featured_img">
                        <img src=".\images/hotel\view4.jpg" alt="" />
                        <a href=".\images/hotel\view4.jpg" class="popup-img"></a>
                    </div>
                </div>
                <div>
                    <div class="featured_img">
                        <img src=".\images/hotel\view5.jpg" alt="" />
                        <a href=".\images/hotel\view5.jpg" class="popup-img"></a>
                    </div>
                </div>
            </div><!-- End off featured slider -->



            <!--Service Section-->
            <section id="service" class="service">
                <div class="container">
                    <div class="row">
                        <div class="main_service roomy-100">
                            <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                                <div class="head_title text-center">
                               
                                    <h2><i class="fa fa-check" aria-hidden="true"></i> &nbsp;FACILITIES</h2>
                                    <div class="separator_auto"></div>
                                    <p>Enjoy Our Best Facilities </p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="service_item">
                                   <i class="fa fa-cutlery" aria-hidden="true"></i>
                                    <h6 class="m-top-30">RESTAURANTS</h6>
                                    <div class="separator_small"></div>
                                    <p>Intimate and inviting, Le Restaurant is one of the most romantic and seductive restaurants in Paris. 
                                    Decorated with plush upholstered seating, green marblesque pillars and silk fabric draping the walls, 
                                    the interiors are as captivating as the outdoors - a small cobbled terrace with a beautiful fountain and verdant living wall.
                                    Head Chef Julien Montbabut’s menus are equally as distinctive, deploying classic techniques to create food that is progressively modern, light and fresh.</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="service_item">
                                    <i class="fa fa-glass" aria-hidden="true"></i>
                                    <h6 class="m-top-30">BAR</h6>
                                    <div class="separator_small"></div>
                                    <p>With the glamorous mood, you can make your day the best you've never had before.
                                    You'll find this quirky little bar at the equally quirky Hotel Not Hotel in Amsterdam West.
                                     The perfect place to get footloose and fancy free in honour of a Hollywood great, 
                                     Kevin Bacon serves up good cocktails and Thai food. 
                                     The sunny terrace does the rest; overall, the Kevin Bacon crew keep it fresh and not too serious for both enjoying daytime drinks 
                                     and staying far into the night.</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="service_item">
                                    <i class="fa fa-bath" aria-hidden="true"></i>
                                    <h6 class="m-top-30">SPA</h6>
                                    <div class="separator_small"></div>
                                    <p>Indulge in the next evolution of the Spa experience at The Ritz-Carlton. 
                                    Every one of our spas around the globe combine world-class expertise with local flavors to deliver a bespoke experience that is undeniably unique for every guest. 
                                    Our highly trained spa technicians listen to your specific requests and concerns to provide a level of personalized service that is unmatched. 
                                    From the moment you make your appointment, each step of your time with us will be tailored to you. </p>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section> <!--End off Featured section-->


            <!--Impress section-->
            <section id="impress" class="impress roomy-100">
            
                <div class="overlay"><img src=".\images/hotel\vhotel7.jpg"></div>
                
                <div class="container">
               
                    <div class="row">
                    
                        <div class="main_impress text-center">
                        
                            <div class="col-sm-8 col-sm-offset-2">
                            
                                <h2 class="text-white text-uppercase">Impressed?  Let’s work together</h2>
                                
                                <p class="m-top-40 text-white">At vero eos et accusamus et iusto odio dignissimos ducimus qui ditqs praesentium 
                                    voluptatum deleniti atque corrupti quos dolores et quas molestias</p>
                               
                                <div class="impress_btns m-top-30">
                               
                                    <a href="" class="btn btn-primary m-top-20">HIRE US</a>
                                    <a href="" class="btn btn-default m-top-20">HIRE US</a>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Impress section-->

            <!--Portfolio Section-->
            <section id="portfolio" class="portfolio lightbg">
                <div class="container">
                    <div class="row">
                        <div class="main_portfolio roomy-100">
                            <div class="col-md-8 col-md-offset-2">
                                <div class="head_title text-center">
                                    <h2><i class="fa fa-check" aria-hidden="true"></i> &nbsp;ROOMS&SUITES</h2>
                                    <div class="separator_auto"></div>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
                                        sed diam nonummy nibh euismod nostrud exerci tation ullamcorper 
                                        suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>
                                </div>
                            </div>

                            <div class="portfolio_content">
                                <div class="col-md-8">
                                    <div class="row">
<%for(int i=0;i<vlist.size();i++) {%>
                                        <div class="col-md-9">
                                            <div class="portfolio_item">
		                                        <img src="<%=vlist.get(i).getMainpic()%>" alt="<%=vlist.get(i).getMainpic()%>" />
                                                <div class="portfolio_hover text-center">
                                                    <h6 class="text-uppercase text-white"><%=vlist.get(i).getRoomname()%></h6>
                                                    <p class=" text-white"><%=vlist.get(i).getContent()%></p>
                                                    <div class="portfolio_hover_icon">
                                                        <a href="<%=vlist.get(i).getMainpic()%>" class="popup-img"><i class="fa fa-expand"></i></a>
                                                        <a onclick="b(<%=vlist.get(i).getIdx()%>)"><i class="fa fa-search"></i></a>
                                                    </div>
                                                </div>
                                            </div>  
                                        </div>
<%} %>                            
                                    </div>
                                </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Portfolio section-->


            <!--Skill Sections-->
            <section id="skill" class="skill roomy-100">
                <div class="container">
                    <div class="row">
                        <div class="main_skill">
                            <div class="col-md-6">
                                <div class="skill_content wow fadeIn">
                                    <h2>Our skill</h2>
                                    <div class="separator_left"></div>

                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
                                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
                                        magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
                                        quis nostrud exerci tation ullamcorper suscipit lobortis 
                                        nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor
                                        sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                                        euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                        Ut wisi enim ad minim veniam, quis nostrud exerci tation 
                                        ullamcorper suscipit lobortis nisl ut aliquip 
                                        ex ea commodo consequat. </p>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="skill_bar sm-m-top-50">    
                                    <div class="teamskillbar clearfix m-top-20" data-percent="80%">
                                        <h6>GRAPHIC DESIGN</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->

                                    <div class="teamskillbar clearfix m-top-50" data-percent="75%">
                                        <h6>TYPOGRAPHY</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->

                                    <div class="teamskillbar clearfix m-top-50" data-percent="90%">
                                        <h6>HTML / CSS</h6>
                                        <div class="teamskillbar-bar"></div>
                                    </div> <!-- End Skill Bar -->
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
                <br />
                <br />
                <br />
                <hr />
                <br />
                <br />
                <br />
                <div class="container">
                    <div class="row">
                        <div class="skill_bottom_content text-center">
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">3468</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>Projects Finished</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">4638</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>Happy Clients</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">3468</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>Hours of work</em></h5>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="skill_bottom_item">
                                    <h2 class="statistic-counter">3468</h2>
                                    <div class="separator_small"></div>
                                    <h5><em>Cup of coffee</em></h5>
                                </div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Skill section -->



            <!--Testimonial Section-->
            <section id="testimonial" class="testimonial fix">
                <div class="overlay"><img src=".\images/hotel\vhotel8.jpg"></div>
                <div class="container">
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
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Testimonial section -->
            <!--Pricing Section-->
            <section id="pricing" class="pricing lightbg">
                <div class="container">
                    <div class="row">
                        <div class="main_pricing roomy-100">
                            <div class="col-md-8 col-md-offset-2 col-sm-12">
                                <div class="head_title text-center">
                                    <h2><i class="fa fa-th-large" aria-hidden="true"></i>&nbsp;WRITE REVIEW!</h2>
                                    <div class="separator_auto"></div>
									<button onclick="c()">review</button>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item">
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">BASIC</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">$19</h3>
                                            <p class="text-white">per month</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i> <span>10</span> user</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> Unlimited Bandwidth</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> Full Statistics</li>

                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="" class="btn btn-primary">CART</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item sm-m-top-30">
                                    <div class="pricing_top_border"></div>
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">STANDARD</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">$39</h3>
                                            <p class="text-white">per month</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i> <span>50</span> user</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> Unlimited Bandwidth</li>
                                            <li class="disabled"><i class="fa fa-times-circle"></i> Full Statistics</li>
                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="" class="btn btn-primary">CART</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                            <div class="col-md-4 col-sm-12">
                                <div class="pricing_item sm-m-top-30">
                                    <div class="pricing_head p-top-30 p-bottom-100 text-center">
                                        <h3 class="text-uppercase">PREMIUM</h3>
                                    </div>
                                    <div class="pricing_price_border text-center">
                                        <div class="pricing_price">
                                            <h3 class="text-white">$99</h3>
                                            <p class="text-white">per month</p>
                                        </div>
                                    </div>

                                    <div class="pricing_body bg-white p-top-110 p-bottom-60">
                                        <ul>
                                            <li><i class="fa fa-check-circle text-primary"></i> Unlimited Users</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> Unlimited Bandwidth</li>
                                            <li><i class="fa fa-check-circle text-primary"></i> Full Statistics</li>
                                        </ul>
                                        <div class="pricing_btn text-center m-top-40">
                                            <a href="" class="btn btn-primary">CART</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off col-md-4 -->

                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Pricing section -->



            


            <!--Subscribe section-->
            <section id="subscribe" class="subscribe roomy-100 fix">
                <div class="overlay"><img src=".\images/hotel\vhotel9.jpg"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_subscribe text-center">
                            <div class="col-sm-8 col-sm-offset-2">
                                <h2 class="text-white">SUBSCRIBE US</h2>
                                <p class="m-top-30 text-white">At vero eos et accusamus et iusto odio dignissimos 
                                    ducimus qui blanditiis praesentium</p>
                            </div>
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="subscribe_btns m-top-40">

                                    <form class="form-inline">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="inputEmail2" placeholder="Email Address">
                                        </div>
                                        <button type="submit" class="btn btn-primary">SUBSCRIBE</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Impress section-->



            <!--Blog Section-->
            <section id="blog" class="blog">
                <div class="container">
                    <div class="row">
                        <div class="main_blog text-center roomy-100">
                            <div class="col-sm-8 col-sm-offset-2">
                                <div class="head_title text-center">
                                    <h2><i class="fa fa-instagram" aria-hidden="true"></i>&nbsp;YOUR #INSTAGRAM</h2>
                                    <div class="separator_auto"></div>
                                </div>
                            </div>
<%for(int i=0;i<relist.size();i++){if(!relist.get(i).getPic().equals("none")){ %>
                            <div class="col-md-4">
                                <div class="blog_item m-top-20">
                                    <div class="blog_item_img">
                                        <img src="<%=relist.get(i).getPic()%>" alt="<%=relist.get(i).getPic()%>" />
                                    </div>
                                    <div class="blog_text roomy-40">
                                        <h6><%=relist.get(i).getContent()%></h6>
                                        <p><em><a href=""><%=relist.get(i).getRegdate()%></a> /<a href=""><%=relist.get(i).getWriter()%></a></em></p>
                                    </div>
                                </div>
                            </div>
<%}} %>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!-- End off Blog section-->



            <!--Maps Section-->
            <div class="main_maps text-center fix">
                <div class="overlay"></div>
                <div class="maps_text">
                    <h3 class="text-white" onclick="showmap()">FIND US ON THE MAP <i class="fa fa-angle-down"></i></h3>
                    <div id="map_canvas" class="mapheight"></div>
                </div>
            </div><!-- End off Maps Section-->



            <!--Contact Us Section-->
            <section id="contact" class="contact bg-mega fix">
                <div class="container">
                    <div class="row">
                        <div class="main_contact roomy-100 text-white">
                            <div class="col-md-4">
                                <div class="rage_widget">
                                    <div class="widget_head">
                                        <h3 class="text-white"><i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;CONTACT US</h3>
                                        <div class="separator_small"></div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
                                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
                                        magna aliquam erat volutpat. Ut wisi enim ad minim veniam, 
                                        quis nostrud exerci tation ullamcorper suscipit lobortis nisl
                                        ut aliquip ex ea commodo consequat. </p>

                                    
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
                                                <input id="name" name="name" type="text" placeholder="NAME" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">  
                                                <textarea name="message" class="form-control" rows="6" placeholder="MESSAGE"></textarea>
                                            </div>
                                            <div class="form-group text-center">
                                                <button type="submit" class="btn btn-primary">SEND MAIL</button>
                                            </div>
                                        </div>

                                    </div>

                                </form>
                            </div>
                        </div>
                    </div><!--End off row -->
                </div><!--End off container -->
            </section><!--End off Contact Section-->
            
            
             <!--client brand section-->
            <section id="cbrand" class="cbrand">
                <div class="container">
                    <div class="row">
                        <div class="main_cbrand text-center roomy-100">
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/1.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/2.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img class="" src="assets/images/clients/5.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/4.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/3.jpg" alt="" /></a>
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-4 col-xs-6">
                                <div class="cbrand_item m-bottom-10">
                                    <a href=""><img src="assets/images/clients/1.jpg" alt="" /></a> 
                                </div>
                            </div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Cbrand section --> 


            <!-- scroll up-->
            <div class="scrollup">
                <a href="#"><i class="fa fa-chevron-up"></i></a>
            </div><!-- End off scroll up -->


            <footer id="footer" class="footer bg-black">
                <div class="container">
                    <div class="row">
                        <div class="main_footer text-center p-top-40 p-bottom-30">
                            <p class="wow fadeInRight" data-wow-duration="1s" style="color:white";>
                                
                                
                               ©Pacific Cove Hotels Limited 1997-2017. All Rights Reserved.

                            </p>
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
            <script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
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
