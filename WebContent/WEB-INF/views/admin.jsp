<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
<style>
table {
	margin-bottom:50px;
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: pink;
}

h1 {

    margin-top:30px;
	text-align: center;
	padding: 20px;
}

.aa {
	text-align: center;
}

a.dssp {
	text-align: center;
	width:100%;
	display: inline-block;
	overflow: hidden;
	border: 1px solid black;
	padding: 10px 25px;
	color: white;
	background: black;
	word-spacing: 3px;
	font-size: 13px;
	transform: perspective(1px) translateZ(0);
	position: relative;
	box-shadow: 2px 6px whitesmoke;
	margin-bottom: 50px;
}
a:hover {
	color: black;
}
a:hover::before {
	transform: scaleX(1);
}
a::before {
	content: "";
	position: absolute;
	z-index: -1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: white;
	transform: scaleX(0);
	transform-origin: 0 50%;
	transition: all 0.7s ease-out;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1>TÀI KHOẢN ĐĂNG KÝ</h1>
	<table>
		<tr>
			<th>USERNAME</th>
			<th>EMAIL</th>
			<th>ĐIỆN THOẠI</th>
			<th>PASSWORD</th>

			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="u" items="${users}">
			<tr>
				<td>${u.hoten}</td>
				<td>${u.email}</td>
				<td>${u.dienthoai}</td>
				<td>${u.pass}</td>
				<td><a href="update1/${u.email}.htm">Update</a></td>
				<td><a href="delete/${u.email}.htm">Delete</a></td>
			</tr>
		</c:forEach>

	</table>
	<a href="dssanpham.htm" class="dssp">DANH SÁCH SẢN PHẨM</a>
	<%@ include file="page-end.jsp"%>
</body>
</html>