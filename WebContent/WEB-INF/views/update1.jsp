<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CẬP NHẬT</title>
<link href="<c:url value="/resources/theme/css/dangky.css" />"
	rel="stylesheet">

<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
</head>
<body>

  <div class="page2" >  
     
	<form:form action="${pageContext.request.contextPath}/update1.htm" modelAttribute="Userdt">
          <div class="form-left">
            <h2>TẠO TÀI KHOẢN</h2>
              ${message}
            <div class="line1">
              <i class="fa fa-user"></i>
              <form:input path="hoten" type="text" placeholder="Tên Đăng Nhập" />
              <form:errors path="hoten" style="margin-left:-25px;color:#c0392b;"/>
            </div>

            <div class="line1">
              <i class="fa fa-envelope"></i>
              <form:input path="email" type="text" placeholder="Email" />
              <form:errors path="email" style="margin-left:-25px;color:#c0392b;"/>
            </div>

            <div class="line1">
              <i class="fa fa-phone"></i>
             <form:input path="dienthoai" type="text" placeholder="Điện Thoại" />
              <form:errors path="dienthoai" style="margin-left:-25px;color:#c0392b;"/>
            </div>

            <div class="line1">
              <i class="fa fa-lock"></i>
              <form:input path="pass" type="password" placeholder="Mật Khẩu" />
              <form:errors path="pass" style="margin-left:-25px;color:#c0392b;"/>
            </div>

            <button>ĐĂNG KÝ</button>

            <p class="not">Tiếp tục mua sắm? <a href="home.htm">TRANG CHỦ</a></p>
          </div>
     </form:form>
        
    </div>

</body>
</html>