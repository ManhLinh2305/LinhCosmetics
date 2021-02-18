<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ĐĂNG KÝ</title>
<link href="<c:url value="/resources/theme/css/dangky.css" />"
	rel="stylesheet">

<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
</head>
<body>

  <div class="page2" >  
     
	<form action="${pageContext.request.contextPath}/update1.htm" modelAttribute="Userdt">
          <div class="form-left">
            <h2>THÔNG TIN  </h2> 
              ${message}
            <div class="line1">
              <i class="fa fa-user"></i>
              <input name="hoten" type="text" placeholder=" Họ tên" />
             
            </div>

            <div class="line1">
              <i class="fa fa-envelope"></i>
              <input name="email" type="text" placeholder="Email" />
             
            </div>

            <div class="line1">
              <i class="fa fa-phone"></i>
             <input name="dienthoai" type="text" placeholder="Điện Thoại" />
             
            </div>

            <div class="line1">
              <i class="fa fa-lock"></i>
              <input name="pass" type="password" placeholder="Mật Khẩu" />
            
            </div>

            <button>CHỈNH SỬA</button>

            <p class="not">Tiếp tục mua sắm? <a href="home.htm">TRANG CHỦ</a></p>
          </div>
     </form>
        
    </div>

</body>
</html>