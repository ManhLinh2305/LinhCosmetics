<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SẢN PHẨM 1</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/sanphamdb.css" />"
	rel="stylesheet">

<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Vibes&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Viga&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Heebo&display=swap"
	rel="stylesheet" />
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="pic">
		<img alt="" src="<c:url value="/resources/theme/img/h60.PNG" />">
	</div>

	<div class="GioiThieu container ">
		<div class="GT-left">
			<div class="GT-left-top">
				<h3>DANH MỤC TRANG</h3>
				<div class="dm">
					<div class="dm1">
						<a href="" title="Tìm Kiếm">Tìm Kiếm</a>
					</div>
					<div class="dm1">
						<a href="gioithieusp.htm" title="Giới Thiệu">Giới Thiệu</a>
					</div>
					<div class="dm1">
						<a href="csdoitra.htm" title="Chính sách đổi trả">Chính Sách
							Đổi Trả</a>
					</div>
					<div class="dm1">
						<a href="csbaomat.htm" title="Chính Sách Bảo Mật">Chính sách
							Bảo Mật</a>
					</div>
					<div class="dm2">
						<a href="dieukhoan.htm" title="Điều Khoản & Dịch Vụ">Điều
							Khoản & Dịch Vụ</a>
					</div>
				</div>
			</div>
			<div class="GT-left-bottom">
				<img alt=""
					src="<c:url value="/resources/theme/img/page_banner.jpg" />">

			</div>
		</div>

		<div class="GT-right">
			<h2>PHẤN PHỦ</h2>
			<div class="hg1">
				<div class="product flex">
					<c:forEach var="p" items="${sp11}" varStatus="status" begin="0">
						<div class="product-box" style="margin-right: 20px;">
						
							<img alt="" src="<c:url value="/resources/theme/img/${p.hinhanh}" />">
							<div class="infor">
							<a href="" class="name">${p.tenhang}</a>
								<div class="price">
									<strong class="pri">${p.giadagiam} đ</strong>
									<del class="discount">${p.giaban} đ</del>
								</div>
								<a class="by" href="">THÊM VÀO GIỎ</a>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			<div class="hg2">
				<div class="product flex">
					<c:forEach var="p" items="${sp12}" varStatus="status" begin="0">
						<div class="product-box ">
						
							<img alt="" src="<c:url value="/resources/theme/img/${p.hinhanh}" />">
							<div class="infor">
							<a href="" class="name">${p.tenhang}</a>
								<div class="price">
									<strong class="pri">${p.giadagiam} đ</strong>
									<del class="discount">${p.giaban} đ</del>
								</div>
								<a class="by" href="">THÊM VÀO GIỎ</a>
							</div>

						</div>
					</c:forEach>
				</div>
			</div>
			
		</div>
		</div>
		<%@ include file="page-end.jsp"%>
</body>
</html>