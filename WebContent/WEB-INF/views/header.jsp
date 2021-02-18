<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
	<link href="<c:url value="/resources/theme/css/reset.css"/>" rel="stylesheet">
   	<link href="<c:url value="/resources/theme/css/home.css" />" rel="stylesheet">
   	<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
   	<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />" rel="stylesheet">
   	<link href="<c:url value="/resources/theme/css/owl.theme.default.min.cs" />" rel="stylesheet">
    
    <link
      href="https://fonts.googleapis.com/css?family=Vibes&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Viga&display=swap"
      rel="stylesheet"
    />
</head>
<body>
	<div class="page1">
		<header>
			<div class="header-top container flex">
				<div class="logo">
					<p>
						<a href="home.htm">LINHCOS<span><i
								class="fa fa-magic"></i></span></a>
					</p>
					<!-- <a href=""><img src="img/l1.png" alt=""/></a> -->
				</div>
				<div class="header-top-right flexx">
					<div class="sign-search-xs ">
						<div class="sign-up">
							<a href="dangnhap.htm"><i class="fa fa-user"></i></a> <a href=""><i
								class="fa fa-cart-plus"></i></a>
						</div>
						<div class="search-menu">
							<div class="search-xs">
								<ul>
									<li>
										<button class="kl">
											<i class="fa fa-search"></i>
										</button>
										<ul class="ip">
											<li><input type="text" placeholder="Search" /></li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="icon-menu-xs">
								<ul>
									<li>
										<button class="bar">
											<i class="fa fa-bars"></i>
										</button>
										<ul class="panel">
											<li><a href="home.htm" class="first">TRANG CHỦ</a></li>
											<li><a href="">MAKEUP<i
													class="fa fa-angle-down icon"></i></a>
												<ul class="makeup">
													<li><span>FACE MAKEUP</span></li>
													<li><span>LIPS MAKEUP</span></li>
													<li></li>
												</ul></li>
											<li><a href="">SKINCARE<i
													class="fa fa-angle-down icon"></i></a></li>
											<li><a href="gioithieusp.htm">GIỚI THIỆU</a></li>
											<li><a href="tintuc.htm">TIN TỨC</a></li>
											<li><a href="lienhe.htm">LIÊN HỆ</a></li>
											<li><a href="">NGÔN NGỮ<i class="fa fa-angle-down icon"></i></a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="search">
						<input type="text" placeholder="Search" /> <i
							class="fa fa-search"></i>
					</div>
				</div>
			</div>
			<nav>
				<div class="header-bottom navbar container">
					<ul>
						<li><a href="home.htm" class="first">TRANG CHỦ</a></li>
						<li><a href="">MAKEUP<i class="fa fa-angle-down icon"></i></a>
							<ul class="mega-menu">
								<li><span>FACE MAKEUP</span>
									<ul>
										<li><a href="sanpham1.htm">Phấn Phủ</a></li>
										<li><a href="sanpham2.htm">Kem Lót</a></li>
										<li><a href="sanpham3.htm">Kem Che Khuyết Điểm</a></li>
										<li><a href="sanpham4.htm">Cushion</a></li>
										<li><a href="sanpham5.htm">Má Hồng</a></li>
										<li><a href="sanpham6.htm">Highligh</a></li>
									</ul></li>
								<li><span>LIPS MAKEUP</span>
									<ul>
										<li><a href="sanpham7.htm">Lót Môi</a></li>
										<li><a href="sanpham8.htm">Son Môi</a></li>
										<li><a href="sanpham9.htm">Son Dưỡng</a></li>
										<li><a href="sanpham10.htm">Khóa Màu Môi</a></li>
										<li><a href="sanpham11.htm">Lips Mask</a></li>
									</ul></li>
								<li><span>EYES MAKKEUP</span>
									<ul>
										<li><a href="sanpham12.htm">Mascara</a></li>
										<li><a href="sanpham13.htm">Mi Giả</a></li>
										<li><a href="sanpham14.htm">Kẻ Mắt</a></li>
										<li><a href="sanpham15.htm">Kẻ Mày</a></li>
										<li><a href="sanpham16.htm">Phấn Mắt</a></li>
									</ul></li>
								<li><span>BODY MAKKEUP</span>
									<ul>
										<li><a href="">Kem Làm Trắng</a></li>
										<li><a href="">Kem Tẩy Lông</a></li>
									</ul></li>
							</ul></li>
						<li><a href="">SKINCARE<i class="fa fa-angle-down icon"></i></a>
							<ul class="GT">
								<li><a href="sanpham17.htm">Sửa Rửa Mặt</a></li>
								<li><a href="sanpham18.htm">Kem Chống Nắng</a></li>
								<li><a href="sanpham19.htm">Mặt Nạ</a></li>
								<li><a href="sanpham20.htm">Tẩy Trang</a></li>
								<li><a href="sanpham21.htm">Serum</a></li>
								<li><a href="sanpham22.htm">Toner</a></li>
								<li><a href="sanpham23.htm">Lotion</a></li>
								<li><a href="sanpham24.htm">Tẩy Tế Bào Chết</a></li>
							</ul></li>
						<li><a href="gioithieusp.htm">GIỚI THIỆU</a></li>
						<li><a href="tintuc.htm">TIN TỨC</a></li>
						<li><a href="lienhe.htm">LIÊN HỆ</a></li>
						<li><a href="">NGÔN NGỮ<i class="fa fa-angle-down icon"></i></a>
							<ul class="GT">
								<li><a href="">Việt Nam</a></li>
								<li><a href="">English</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<%-- <div class="pg1-content">
			<div class="owl-carousel">
			<img alt="" class="ah1" src="<c:url value="/resources/theme/img/h8.jpg" />">
			<img alt="" class="ah2" src="<c:url value="/resources/theme/img/h14.jpg" />">
			<img alt="" class="ah3" src="<c:url value="/resources/theme/img/h16.PNG" />">
				
			</div>
		</div> --%>
	</div>
</body>
	<script src="resources/theme/js/jquery-3.3.1.min.js"></script>
	<script src="resources/theme/js/owl.carousel.min.js"></script>
  	<script src="resources/theme/js/mypham.js"></script>

</html>