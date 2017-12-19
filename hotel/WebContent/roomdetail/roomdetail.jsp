<%@page import="hotel.RoomMgr"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="roomMgr" class="hotel.RoomMgr"/>
<jsp:useBean id="roomBean" class="hotel.RoomBean"/>
<%
		request.setCharacterEncoding("utf-8");
		
		String index=request.getParameter("index");
		roomBean = roomMgr.getRoom(Integer.parseInt(index));
		String roomname = roomBean.getRoomname();
		String pic = roomBean.getMainpic();
		String subpic = roomBean.getSubpic();
		int price = roomBean.getPrice();
%>
<!DOCTYPE html>
<!-- saved from url=(0054)file:///C:/Users/it/Desktop/roomdetail/roomdetail.html -->
<html lang="en-US" dir="ltr"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  
    Document Title
    =============================================
    -->
    <title>Titan | Multipurpose HTML5 Template</title>
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="180x180" href="http://localhost:8080/w4/assets/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="http://localhost:8080/w4/assets/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="http://localhost:8080/w4/assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="http://localhost:8080/w4/assets/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="http://localhost:8080/w4/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="http://localhost:8080/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="./roomdetail_files/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="./roomdetail_files/css" rel="stylesheet">
    <link href="./roomdetail_files/css(1)" rel="stylesheet">
    <link href="./roomdetail_files/css(2)" rel="stylesheet">
    <link href="./roomdetail_files/animate.css" rel="stylesheet">
    <link href="./roomdetail_files/font-awesome.min.css" rel="stylesheet">
    <link href="./roomdetail_files/et-line-font.css" rel="stylesheet">
    <link href="./roomdetail_files/flexslider.css" rel="stylesheet">
    <link href="./roomdetail_files/owl.carousel.min.css" rel="stylesheet">
    <link href="./roomdetail_files/owl.theme.default.min.css" rel="stylesheet">
    <link href="./roomdetail_files/magnific-popup.css" rel="stylesheet">
    <link href="./roomdetail_files/simpletextrotator.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="./roomdetail_files/style.css" rel="stylesheet">
    <link id="color-scheme" href="./roomdetail_files/default.css" rel="stylesheet">
  <style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style></head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader" style="display: none;">
        <div class="loader" style="display: none;">Loading...</div>
      </div>
      <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="http://localhost:8080/w4/index.html">Titan</a>
          </div>
          <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Home</a>
                <ul class="dropdown-menu">
                  <li><a href="http://localhost:8080/w4/index_mp_fullscreen_video_background.html">Default</a></li>
                  <li><a href="http://localhost:8080/w4/index_op_fullscreen_gradient_overlay.html">One Page</a></li>
                  <li><a href="http://localhost:8080/w4/index_agency.html">Agency</a></li>
                  <li><a href="http://localhost:8080/w4/index_portfolio.html">Portfolio</a></li>
                  <li><a href="http://localhost:8080/w4/index_restaurant.html">Restaurant</a></li>
                  <li><a href="http://localhost:8080/w4/index_finance.html">Finance</a></li>
                  <li><a href="http://localhost:8080/w4/index_landing.html">Landing Page</a></li>
                  <li><a href="http://localhost:8080/w4/index_photography.html">Photography</a></li>
                  <li><a href="http://localhost:8080/w4/index_shop.html">Shop</a></li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Headers</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Static Image Header</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/index_mp_fullscreen_static.html">Fulscreen</a></li>
                      <li><a href="http://localhost:8080/w4/index_mp_classic_static.html">Classic</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Flexslider Header</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/index_mp_fullscreen_flexslider.html">Fulscreen</a></li>
                      <li><a href="http://localhost:8080/w4/index_mp_classic_flexslider.html">Classic</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Video Background Header</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/index_mp_fullscreen_video_background.html">Fulscreen</a></li>
                      <li><a href="http://localhost:8080/w4/index_mp_classic_video_background.html">Classic</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Text Rotator Header</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/index_mp_fullscreen_text_rotator.html">Fulscreen</a></li>
                      <li><a href="http://localhost:8080/w4/index_mp_classic_text_rotator.html">Classic</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Gradient Overlay Header</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/index_mp_fullscreen_gradient_overlay.html">Fulscreen</a></li>
                      <li><a href="http://localhost:8080/w4/index_mp_classic_gradient_overlay.html">Classic</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Pages</a>
                <ul class="dropdown-menu">
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">About</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/about1.html">About 1</a></li>
                      <li><a href="http://localhost:8080/w4/about2.html">About 2</a></li>
                      <li><a href="http://localhost:8080/w4/about3.html">About 3</a></li>
                      <li><a href="http://localhost:8080/w4/about4.html">About 4</a></li>
                      <li><a href="http://localhost:8080/w4/about5.html">About 5</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Services</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/service1.html">Service 1</a></li>
                      <li><a href="http://localhost:8080/w4/service2.html">Service 2</a></li>
                      <li><a href="http://localhost:8080/w4/service3.html">Service 3</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Pricing</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/pricing1.html">Pricing 1</a></li>
                      <li><a href="http://localhost:8080/w4/pricing2.html">Pricing 2</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Gallery</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/gallery_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/gallery_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/gallery_col_4.html">4 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/gallery_col_6.html">6 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Contact</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/contact1.html">Contact 1</a></li>
                      <li><a href="http://localhost:8080/w4/contact2.html">Contact 2</a></li>
                      <li><a href="http://localhost:8080/w4/contact3.html">Contact 3</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Restaurant menu</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/restaurant_menu1.html">Menu 2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/restaurant_menu2.html">Menu 3 Columns</a></li>
                    </ul>
                  </li>
                  <li><a href="http://localhost:8080/w4/login_register.html">Login / Register</a></li>
                  <li><a href="http://localhost:8080/w4/faq.html">FAQ</a></li>
                  <li><a href="http://localhost:8080/w4/404.html">Page 404</a></li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Portfolio</a>
                <ul class="dropdown-menu" role="menu">
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Boxed</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Boxed - Gutter</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_gutter_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_gutter_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_boxed_gutter_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Full Width</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Full Width - Gutter</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_gutter_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_gutter_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_full_width_gutter_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Masonry</a>
                    <ul class="dropdown-menu">
                      <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Boxed</a>
                        <ul class="dropdown-menu">
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_boxed_col_2.html">2 Columns</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_boxed_col_3.html">3 Columns</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_boxed_col_4.html">4 Columns</a></li>
                        </ul>
                      </li>
                      <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Full Width</a>
                        <ul class="dropdown-menu">
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_full_width_col_2.html">2 Columns</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_full_width_col_3.html">3 Columns</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_masonry_full_width_col_4.html">4 Columns</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Hover Style</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/portfolio_hover_black.html">Black</a></li>
                      <li><a href="http://localhost:8080/w4/portfolio_hover_gradient.html">Gradient</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Single</a>
                    <ul class="dropdown-menu">
                      <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Featured Image</a>
                        <ul class="dropdown-menu">
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_image1.html">Style 1</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_image2.html">Style 2</a></li>
                        </ul>
                      </li>
                      <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Featured Slider</a>
                        <ul class="dropdown-menu">
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_slider1.html">Style 1</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_slider2.html">Style 2</a></li>
                        </ul>
                      </li>
                      <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Featured Video</a>
                        <ul class="dropdown-menu">
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_video1.html">Style 1</a></li>
                          <li><a href="http://localhost:8080/w4/portfolio_single_featured_video2.html">Style 2</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Blog</a>
                <ul class="dropdown-menu" role="menu">
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Standard</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/blog_standard_left_sidebar.html">Left Sidebar</a></li>
                      <li><a href="http://localhost:8080/w4/blog_standard_right_sidebar.html">Right Sidebar</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Grid</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/blog_grid_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/blog_grid_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/blog_grid_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Masonry</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/blog_grid_masonry_col_2.html">2 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/blog_grid_masonry_col_3.html">3 Columns</a></li>
                      <li><a href="http://localhost:8080/w4/blog_grid_masonry_col_4.html">4 Columns</a></li>
                    </ul>
                  </li>
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Single</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/blog_single_left_sidebar.html">Left Sidebar</a></li>
                      <li><a href="http://localhost:8080/w4/blog_single_right_sidebar.html">Right Sidebar</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Features</a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="http://localhost:8080/w4/alerts-and-wells.html"><i class="fa fa-bolt"></i> Alerts and Wells</a></li>
                  <li><a href="http://localhost:8080/w4/buttons.html"><i class="fa fa-link fa-sm"></i> Buttons</a></li>
                  <li><a href="http://localhost:8080/w4/tabs_and_accordions.html"><i class="fa fa-tasks"></i> Tabs &amp; Accordions</a></li>
                  <li><a href="http://localhost:8080/w4/content_box.html"><i class="fa fa-list-alt"></i> Contents Box</a></li>
                  <li><a href="http://localhost:8080/w4/forms.html"><i class="fa fa-check-square-o"></i> Forms</a></li>
                  <li><a href="http://localhost:8080/w4/icons.html"><i class="fa fa-star"></i> Icons</a></li>
                  <li><a href="http://localhost:8080/w4/progress-bars.html"><i class="fa fa-server"></i> Progress Bars</a></li>
                  <li><a href="http://localhost:8080/w4/typography.html"><i class="fa fa-font"></i> Typography</a></li>
                </ul>
              </li>
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Shop</a>
                <ul class="dropdown-menu" role="menu">
                  <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/shop_single_product.html#" data-toggle="dropdown">Product</a>
                    <ul class="dropdown-menu">
                      <li><a href="http://localhost:8080/w4/shop_product_col_3.html">3 columns</a></li>
                      <li><a href="http://localhost:8080/w4/shop_product_col_4.html">4 columns</a></li>
                    </ul>
                  </li>
                  <li><a href="http://localhost:8080/w4/shop_single_product.html">Single Product</a></li>
                  <li><a href="http://localhost:8080/w4/shop_checkout.html">Checkout</a></li>
                </ul>
              </li>
              <!--li.dropdown.navbar-cart-->
              <!--    a.dropdown-toggle(href='#', data-toggle='dropdown')-->
              <!--        span.icon-basket-->
              <!--        |-->
              <!--        span.cart-item-number 2-->
              <!--    ul.dropdown-menu.cart-list(role='menu')-->
              <!--        li-->
              <!--            .navbar-cart-item.clearfix-->
              <!--                .navbar-cart-img-->
              <!--                    a(href='#')-->
              <!--                        img(src='assets/images/shop/product-9.jpg', alt='')-->
              <!--                .navbar-cart-title-->
              <!--                    a(href='#') Short striped sweater-->
              <!--                    |-->
              <!--                    span.cart-amount 2 &times; $119.00-->
              <!--                    br-->
              <!--                    |-->
              <!--                    strong.cart-amount $238.00-->
              <!--        li-->
              <!--            .navbar-cart-item.clearfix-->
              <!--                .navbar-cart-img-->
              <!--                    a(href='#')-->
              <!--                        img(src='assets/images/shop/product-10.jpg', alt='')-->
              <!--                .navbar-cart-title-->
              <!--                    a(href='#') Colored jewel rings-->
              <!--                    |-->
              <!--                    span.cart-amount 2 &times; $119.00-->
              <!--                    br-->
              <!--                    |-->
              <!--                    strong.cart-amount $238.00-->
              <!--        li-->
              <!--            .clearfix-->
              <!--                .cart-sub-totle-->
              <!--                    strong Total: $476.00-->
              <!--        li-->
              <!--            .clearfix-->
              <!--                a.btn.btn-block.btn-round.btn-font-w(type='submit') Checkout-->
              <!--li.dropdown-->
              <!--    a.dropdown-toggle(href='#', data-toggle='dropdown') Search-->
              <!--    ul.dropdown-menu(role='menu')-->
              <!--        li-->
              <!--            .dropdown-search-->
              <!--                form(role='form')-->
              <!--                    input.form-control(type='text', placeholder='Search...')-->
              <!--                    |-->
              <!--                    button.search-btn(type='submit')-->
              <!--                        i.fa.fa-search-->
              <li class="dropdown"><a class="dropdown-toggle" href="http://localhost:8080/w4/documentation.html" data-toggle="dropdown">Documentation</a>
                <ul class="dropdown-menu">
                  <li><a href="http://localhost:8080/w4/documentation.html#contact">Contact Form</a></li>
                  <li><a href="http://localhost:8080/w4/documentation.html#reservation">Reservation Form</a></li>
                  <li><a href="http://localhost:8080/w4/documentation.html#mailchimp">Mailchimp</a></li>
                  <li><a href="http://localhost:8080/w4/documentation.html#gmap">Google Map</a></li>
                  <li><a href="http://localhost:8080/w4/documentation.html#plugin">Plugins</a></li>
                  <li><a href="http://localhost:8080/w4/documentation.html#changelog">Changelog</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="main">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 mb-sm-40"><a class="gallery" href="./roomdetail_files/product-7.jpg"><img src="./roomdetail_files/product-7.jpg" alt="Single Product Image"></a>
    
               
 <!-- 화면딴 -->  
                <ul class="product-gallery">
                  <li><a class="gallery" href="#"></a><img src=<%=roomname%> alt="Single Product"></li>
                  <li><a class="gallery" href="./roomdetail_files/002.jpg"></a><img src="./roomdetail_files/002.jpg" alt="Single Product"></li>
                  <li><a class="gallery" href="./roomdetail_files/004.jpg"></a><img src="./roomdetail_files/004.jpg" alt="Single Product"></li>
                </ul>
              </div>
              <div class="col-sm-4">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt"><%=pic %></h1>
                  </div>
                </div>
                
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount">이건머지</span></div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                   <p>이젠 알수가 없네</p>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                  
                  <div class="col-sm-8">
                  <a class="btn btn-lg btn-block btn-round btn-b" href="http://localhost:8080/w4/shop_single_product.html#">예약확인</a></div>
                </div>   
              </div>
            </div>
            
<!-- 상세페이지 -->
            <div class="row mt-70">
              <div class="col-sm-12">
                <ul class="nav nav-tabs font-alt" role="tablist">
                  <li class=""><a href="http://localhost:8080/w4/shop_single_product.html#description" data-toggle="tab" aria-expanded="false"><span class="icon-tools-2"></span>객실서비스</a></li>
                  <li class=""><a href="http://localhost:8080/w4/shop_single_product.html#data-sheet" data-toggle="tab" aria-expanded="false"><span class="icon-tools-2"></span>객실시설</a></li>
                  <li class="active"><a href="http://localhost:8080/w4/shop_single_product.html#reviews" data-toggle="tab" aria-expanded="true"><span class="icon-tools-2"></span>주의사항</a></li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane" id="description">
					<p>객실은 효율적이면서 개성 있는 공간으로 구현되었습니다. 수납가구 대신 선반들을 활용하여 자연스럽게 수납하여, 공간이 보다 넓게 느껴지고 편안한 인상을 줍니다. 
					퀸 사이즈/싱글 사이즈의 트윈 침대와 북미 PCF사의 최고급 침구가 마련되어 </p>
					<p> 세심하게 구성한 미니바, 직접 디자인한 배스로브와 아트피스, 블루투스 스피커 등이 제공됩니다</p>
                  </div>
                  <div class="tab-pane" id="data-sheet">
                    <table class="table table-striped ds-table table-responsive">
                      <tbody>
                        <tr>
                          <th>Basic</th>
                          <th>Bath Room</th>
                          <th>Private Bar</th>                          
                        </tr>
                        <tr>
                          <td>개별 냉∙난방 조절기</td>
                          <td>비데</td>
                          <td>미니바</td>
                        </tr>
                        <tr>
                          <td>체중계</td>
                          <td>타월</td>
                          <td>전기 주전자</td>
                        </tr>
                        <tr>
                          <td>슬리퍼</td>
                          <td>바디 로션</td>
                          <td>물컵</td>
                        </tr>
                        <tr>
                          <td>다리미 셋트</td>
                          <td>헤어 드라이어</td>
                          <td>찻잔</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="tab-pane active" id="reviews">
                    <div class="comments reviews">
                 	    <p>추가 인원이 있을 경우 1박당 추가요금 ₩20,000</p>
						<p>모든 요금에는 부가세 10%가 별도 부과됩니다.</p>
                    </div>
       
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module-small">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">다른방</h2>
              </div>
            </div>
            <div class="row multi-columns-row">
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="./roomdetail_files/product-11.jpg" alt="Accessories Pack">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">더블</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">싱글</a></h4>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="./roomdetail_files/product-12.jpg" alt="Menâs Casual Pack">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">싱글</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">더블</a></h4>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="./roomdetail_files/product-13.jpg" alt="Menâs Garb">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">더블</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">더블</a></h4>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="./roomdetail_files/product-14.jpg" alt="Cold Garb">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">single</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">single</a></h4>
                </div>
              </div>
            </div>
          </div>
        </section>
        <hr class="divider-w">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">Exclusive products</h2>
                <div class="module-subtitle font-serif">The languages only differ in their grammar, their pronunciation and their most common words.</div>
              </div>
            </div>
            <div class="row">
              <div class="owl-carousel text-center owl-loaded owl-drag" data-items="5" data-pagination="false" data-navigation="false">
                
                
                
                
                
                
              <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1404px, 0px, 0px); transition: 0.25s; width: 3042px;"><div class="owl-item cloned" style="width: 234px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-dots disabled"></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1638px, 0px, 0px); transition: 0.25s; width: 3744px;"><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div></div></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-dots disabled"></div></div><div class="owl-item" style="width: 234px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1638px, 0px, 0px); transition: 0.25s; width: 3744px;"><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div></div></div></div><div class="owl-item active" style="width: 234px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item active" style="width: 234px;"><div class="owl-dots disabled"></div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1638px, 0px, 0px); transition: 0.25s; width: 3744px;"><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div></div></div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-dots disabled"></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1638px, 0px, 0px); transition: 0.25s; width: 3744px;"><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div><div class="owl-item active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-6.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned active" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-1.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£12.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-3.jpg" alt="Derby shoes"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Derby shoes</a></h4>Â£54.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-2.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£19.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-4.jpg" alt="Leather belt"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Leather belt</a></h4>Â£14.00
                    </div>
                  </div>
                </div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-item">
                  <div class="col-sm-12">
                    <div class="ex-product"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/product-5.jpg" alt="Chelsea boots"></a>
                      <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">Chelsea boots</a></h4>Â£44.00
                    </div>
                  </div>
                </div></div></div></div></div><div class="owl-item cloned" style="width: 234px;"><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div></div></div></div><div class="owl-nav disabled"><div class="owl-prev"><i class="fa fa-angle-left"></i></div><div class="owl-next"><i class="fa fa-angle-right"></i></div></div><div class="owl-dots disabled"></div></div>
            </div>
          </div>
        </section>
        <div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">About Titan</h5>
                  <p>The languages only differ in their grammar, their pronunciation and their most common words.</p>
                  <p>Phone: +1 234 567 89 10</p>Fax: +1 234 567 89 10
                  <p>Email:<a href="http://localhost:8080/w4/shop_single_product.html#">somecompany@example.com</a></p>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Recent Comments</h5>
                  <ul class="icon-list">
                    <li>Maria on <a href="http://localhost:8080/w4/shop_single_product.html#">Designer Desk Essentials</a></li>
                    <li>John on <a href="http://localhost:8080/w4/shop_single_product.html#">Realistic Business Card Mockup</a></li>
                    <li>Andy on <a href="http://localhost:8080/w4/shop_single_product.html#">Eco bag Mockup</a></li>
                    <li>Jack on <a href="http://localhost:8080/w4/shop_single_product.html#">Bottle Mockup</a></li>
                    <li>Mark on <a href="http://localhost:8080/w4/shop_single_product.html#">Our trip to the Alps</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Blog Categories</h5>
                  <ul class="icon-list">
                    <li><a href="http://localhost:8080/w4/shop_single_product.html#">Photography - 7</a></li>
                    <li><a href="http://localhost:8080/w4/shop_single_product.html#">Web Design - 3</a></li>
                    <li><a href="http://localhost:8080/w4/shop_single_product.html#">Illustration - 12</a></li>
                    <li><a href="http://localhost:8080/w4/shop_single_product.html#">Marketing - 1</a></li>
                    <li><a href="http://localhost:8080/w4/shop_single_product.html#">Wordpress - 16</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/rp-1.jpg" alt="Post Thumbnail"></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="http://localhost:8080/w4/shop_single_product.html#">Designer Desk Essentials</a></div>
                        <div class="widget-posts-meta">23 january</div>
                      </div>
                    </li>
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="http://localhost:8080/w4/shop_single_product.html#"><img src="./roomdetail_files/rp-2.jpg" alt="Post Thumbnail"></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="http://localhost:8080/w4/shop_single_product.html#">Realistic Business Card Mockup</a></div>
                        <div class="widget-posts-meta">15 February</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr class="divider-d">
        
      </div>
      <div class="scroll-up" style="display: block;"><a href="http://localhost:8080/w4/shop_single_product.html#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="./roomdetail_files/jquery.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/bootstrap.min.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/wow.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/jquery.mb.YTPlayer.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/isotope.pkgd.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/imagesloaded.pkgd.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/jquery.flexslider.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/owl.carousel.min.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/smoothscroll.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/jquery.magnific-popup.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/jquery.simple-text-rotator.min.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/plugins.js.ë¤ì´ë¡ë"></script>
    <script src="./roomdetail_files/main.js.ë¤ì´ë¡ë"></script>
  
</body></html>