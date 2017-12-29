<%@page import="hotel.RoomBean"%>
<%@page import="java.util.Vector"%>
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
		String content = roomBean.getContent();
		String price = roomBean.getPrice();
		String subcont1 = roomBean.getSubcont1();
		String subcont2 = roomBean.getSubcont2();
		String subcont3 = roomBean.getSubcont3();
		Vector<RoomBean> vlist = roomMgr.getMemberList();
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
      <div class="main">
        <section class="module">
          <div class="container">
            <div class="row">
              <div class="col-sm-8 mb-sm-40"><a class="gallery" href=../images/<%=pic%>><img src=../images/<%=pic%> alt="Single Product Image"></a>
    
               
 <!-- 화면딴 -->  
                <ul class="product-gallery">
                  <li><a class="gallery" href="#"></a><img src="../images/<%=subcont1%>" alt="Single Product"></li>
                  <li><a class="gallery" href=../images/<%=subcont2%>></a><img src=../images/<%=subcont2%> alt="Single Product"></li>
                  <li><a class="gallery" href=../images/<%=subcont3%>></a><img src=../images/<%=subcont3%> alt="Single Product"></li>
                </ul>
              </div>
              <div class="col-sm-4">
                <div class="row">
                  <div class="col-sm-12">
                    <h1 class="product-title font-alt"><%=roomname %></h1>
                  </div>
                </div>
                
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="price font-alt"><span class="amount"><%=content %></span></div>
                  </div>
                </div>
                <div class="row mb-20">
                  <div class="col-sm-12">
                    <div class="description">
                   <p><%=subpic %></p>
                    </div>
                  </div>
                </div>
                <div class="row mb-20">
                  
                  <div class="col-sm-8">
                  <a class="btn btn-lg btn-block btn-round btn-b" href="javascript:">예약하러가기</a></div>
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
            
            
            
<%for(int i=0;i<vlist.size();i++) {%>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="../images/<%=vlist.get(i).getMainpic()%>" alt="Accessories Pack">
                    <div class="shop-item-detail"><a class="./roomdetail.jsp?index=<%=vlist.get(i).getIdx()%>">
                    <span class="icon-basket"><%=vlist.get(i).getRoomname()%></span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="./roomdetail.jsp?index=<%=vlist.get(i).getIdx()%>"><%=vlist.get(i).getRoomname()%></a></h4>
                </div>
              </div>
<%} %>             
              
           
<!--               <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="../images/de.jpg" alt="Menâs Casual Pack">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">디럭스</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">디럭스</a></h4>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="../images/supe.jpg" alt="Menâs Garb">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">슈페리어</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">슈페리어</a></h4>
                </div>
              </div>
              <div class="col-sm-6 col-md-3 col-lg-3">
                <div class="shop-item">
                  <div class="shop-item-image"><img src="../images/st.jpg"" alt="Cold Garb">
                    <div class="shop-item-detail"><a class="btn btn-round btn-b"><span class="icon-basket">스탠다드</span></a></div>
                  </div>
                  <h4 class="shop-item-title font-alt"><a href="http://localhost:8080/w4/shop_single_product.html#">스탠다드</a></h4>
                </div>
              </div> -->
              
              
              
            </div>
          </div>
        </section>
        <hr class="divider-w">
      </div>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="./roomdetail_files/jquery.js"></script>
    <script src="./roomdetail_files/bootstrap.min.js"></script>
    <script src="./roomdetail_files/wow.js"></script>
    <script src="./roomdetail_files/jquery.mb.YTPlayer.js"></script>
    <script src="./roomdetail_files/isotope.pkgd.js"></script>
    <script src="./roomdetail_files/imagesloaded.pkgd.js"></script>
    <script src="./roomdetail_files/jquery.flexslider.js"></script>
    <script src="./roomdetail_files/owl.carousel.min.js"></script>
    <script src="./roomdetail_files/smoothscroll.js"></script>
    <script src="./roomdetail_files/jquery.magnific-popup.js"></script>
    <script src="./roomdetail_files/jquery.simple-text-rotator.min.js"></script>
    <script src="./roomdetail_files/plugins.js"></script>
    <script src="./roomdetail_files/main.js"></script>
  
</body></html>