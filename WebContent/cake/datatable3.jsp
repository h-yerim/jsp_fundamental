<%@page import="culture.CultureDto2"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="culture.CultureDao2"%>
<%@ page pageEncoding="utf-8"%>



<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>중구가 시키드나</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__cart">
            <div class="offcanvas__cart__links">
                <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                <a href="#"><img src="img/icon/heart.png" alt=""></a>
            </div>
        </div>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/joongulogo.png" style="width: 100px; height: 80px;"></a>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__logo">
                                <a href="./index.html"><img src="img/joongulogo.png" style="width: 100px; height: 80px;"></a>
                            </div>
                       
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.html">홈</a></li>
                            <li><a href="./introduce.html">문화재 소개</a></li>
							<li><a href="#">위치 기반 추천</a>
                                <ul class="dropdown">
                                    <li><a href="./course.html">전체 코스</a></li>
                                    <li><a href="./courseA.html">코스A</a></li>
                                    <li><a href="./courseB.html">코스B</a></li>
                                    <li><a href="./courseC.html">코스C</a></li>
                                    <li><a href="./courseD.html">코스D</a></li>
                                </ul>
                            <li class="active"><a href="#">문화재 종류</a>
                                <ul class="dropdown">
                                    <li><a href="./datatable2.jsp">구분별(이름순)</a></li>
                                    <li><a href="./datatable3.jsp">연도별</a></li>
                 
                                </ul>
                            </li>
                            <li><a href="./ourteam.html">Our Team</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6" style="margin: 0 0 10px 0;">
                    <div class="breadcrumb__text">
                        <h2>연도별</h2>
                    </div>
                </div>
                 <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                    	<a href="./index.html">Home</a>
                        <a href="./datatable2.jsp">구분별(이름순)</a>
                        <a href="./datatable3.jsp" style="color:red;">연도별</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    
    <!-- datatable3 section start -->
        
       <%
    	CultureDao2 dao = CultureDao2.getInstance();
    	ArrayList<CultureDto2> list = dao.select(0,32);
    %>
      <div class="container">
		<div class="row">
			<div class="col-md-12">
    <table class="table-responsive">
     <colgroup>
     	<col width="10%">
     	<col width="20%">
     	<col width="15%">
     	<col width="55%">
     </colgroup>
    <thead>
    	<tr>
    		<th scope="col">건축연도</th>
    		<th scope="col">구분</th>
    		<th scope="col">이름</th>
    		<th scope="col">위치</th>
    	</tr>
    </thead>
    <tbody>
    <%
    	if(list.size()!=0){
    		for(CultureDto2 dto: list){
    %>
     <tr>
      <td><%=dto.getYear() %></td>
      <td><%=dto.getKind() %></td>
      <td><%=dto.getName() %></td>
      <td><%=dto.getLoc() %></td>
	 </tr>
	 <%
    		}
    	}else{
	 %>
	 <tr>
	 	<td colspan='4'>데이터가 존재하지 않습니다.</td>
      </tr>
      <%} %>
    </tbody>
    

    </table>   
    
    
<style>
   
    table{
        width: 100%;
        border-collapse: collapse;
        border-top: 2px solid black;
        text-aling:center;
        /*세로선까지 주고싶으면 border-top 을 border로 th,td 에도 border-bottom을 border로 바꾸면 됨*/
    }
    th,td{
        border-bottom: 1px solid black;
        padding: 3px;
        text-aling:center;
    }

    th{
        background-color: lightpink;
        text-align: center;
    }

    td{
        text-align: center;
    }
</style>
       <!-- datatable3 section end -->
</div>
</div>
</div>

</head>

<body>

 
    <!-- Footer Section Begin -->
 <footer class="footer set-bg" style="background-color:black;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer__widget">
                        <h6>WORKING HOURS</h6>
                        <ul>
                            <li>Monday - Friday: 09:00 am – 18:00 pm</li>
                            <li>Saturday: 휴일</li>
                            <li>Sunday: 휴일</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer__about">
                        <div class="footer__logo">
                             <a href="#"><img src="myimg/foot2.png" style="width: 300px; height: 200px;"></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="footer__newslatter">
                        <h6>Subscribe</h6>
                        <p>Get latest updates and offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Email">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved by <a href="https://colorlib.com" target="_blank">중구가 시키드나</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                      </p>
                  </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>
