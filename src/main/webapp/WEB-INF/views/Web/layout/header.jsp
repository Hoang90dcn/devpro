<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!-- spring taglibs -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

 
<!DOCTYPE html>
<html>
<head>

 <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mamba Bootstrap Template - Index</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <!--
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
     -->
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">
      <div class="contact-info float-left">
        <i class="icofont-envelope"></i><a href="mailto:contact@example.com">huyhoangdcn1005@gmail.com</a>
        <i class="icofont-phone"></i> +1234567890
      </div>
      <div class="social-links float-right">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></a>
      </div>
    </div>
  </section>

   <!-- ======= Header ======= -->
  <header id="header">
    <div class="container">

      <div class="logo float-left">
        <h1 class="text-light"><a href="index.html"><span>MaruMaru</span></a></h1>
       
      </div>

      <nav class="nav-menu float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#header">Trang Chủ</a></li>
          
          <c:forEach var="category" items="${categories}">
          	<li><a href="${pageContext.request.contextPath}/dssp/${category.id}">${category.name_categories}</a></li>
          </c:forEach>
         <!--  <li><a href="#about">Áo Thun Nam</a></li>
          <li><a href="#services">Quần Nam</a></li>
          <li><a href="#portfolio">Giày</a></li>
          -->
         
         
         
         
         
          <!-- <li class="drop-down"><a href="">Phụ Kiện</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li> -->
          
          <li><a href="#contact">Contact Us</a></li>
           <%-- <li><a href="${pageContext.request.contextPath}/login">Đăng Nhập</a></li> --%>
           <sec:authorize access="!isAuthenticated()">
					<li class="nav-item"><a class="nav-link "
						href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				  	<li class="nav-item text-nowrap"><a class="nav-link"
						href="${pageContext.request.contextPath}/perform_logout">Sign
							out</a></li>
			</sec:authorize>
          <li>
          	<a href="${pageContext.request.contextPath}/cart/check-out" class="icofont"><i class="icofont-cart-alt"></i>
          		<span id="checkout">
          			<c:if test="${not empty cart}">${cart}</c:if>
          			<c:if test="${empty cart}">0</c:if>
          		</span>
          	</a>
          </li>
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header --> 
  
  
</body>
</html>