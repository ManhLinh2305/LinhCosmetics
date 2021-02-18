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


</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h1>DANH SÁCH SẢN PHẨM</h1>
	<table>
		<tr>
			<th>MÃ HÀNG</th>
			<th>TÊN HÀNG</th>
			<th>HÌNH ẢNH</th>
			<th>GIÁ BÁN</th>
			<th>GIÁ ĐÃ GIẢM</th>

			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="u" items="${sp}">
			<tr>
				<td>${u.mahang}</td>
				<td>${u.tenhang}</td>
				<td><img style="width: 70px; height: 70px;"
					src="<c:url value="/resources/theme/img/${u.hinhanh}" />"></td>
				<td>${u.giaban}</td>
				<td>${u.giadagiam}</td>
				
				<td><a href="update1/${u.mahang}.htm">Update</a></td>
				<td><a href="delete1/${u.mahang}.htm">Delete</a></td>
			</tr>
		</c:forEach>

	</table>
	<%@ include file="page-end.jsp"%>
</body>
</html>