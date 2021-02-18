<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ĐĂNG NHẬP</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/dangnhap.css" />"
	rel="stylesheet">

<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap"
	rel="stylesheet">
</head>
<body>
<%@ include file="header.jsp"%>
	<div class="form-wrapper">
	
		<form action="dangnhap.htm" method="post">
			<h1>ĐĂNG NHẬP</h1>
			<input type="text" placeholder="Email" name="email"> <input
				type="password" placeholder="Mật Khẩu" name="pass">
			<button>Đăng Nhập</button>
			<p>
				<a href="/">Quên Mật Khẩu?</a> hoặc <a href="dangky.htm">Đăng Ký</a>
			</p>
		</form>
		${message}
		<!-- <p class="not">Don't have an account <a href="">Create now!</a></p> -->
	</div>
	
</body>
</html>