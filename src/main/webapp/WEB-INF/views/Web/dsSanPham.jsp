
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- sử dụng tiếng việt -->


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  


<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Trang Chủ MaruMaru</title>
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

  
	<script
		src="${pageContext.request.contextPath}/js/java09.js"></script>
</head>

<body>

  <!-- header -->
   <%@ include file="/WEB-INF/views/Web/layout/header.jsp" %> 
  <%-- <jsp:include page="/WEB-INF/views/Web/layout/header.jsp"></jsp:include> --%>
  <!-- end header -->
  
  
  
	<main>
		<section id="portfolio" class="portfolio section-bg">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row portfolio-container">
                <c:forEach var="product" items="${products }">
                    <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                        <div class="portfolio-wrap">
                            <img src="${pageContext.request.contextPath}/files/${product.avatar }"  alt="Không tìm thấy ảnh"/>
                            <div class="portfolio-info">
                                <h4>App 1</h4>
                                <p>App</p>

                                <div class="portfolio-links">
                                    <a href="#" title="Thêm vào giỏ hàng"><i class="icofont-ui-add"></i></a>
                                    <a href="${pageContext.request.contextPath}/chitiet/${product.id}" title="Xem chi tiết"><i
                                            class="icofont-external-link"></i></a>
                                </div>
                            </div>
                            <h4 style="text-align: center;">${product.name_product}</h4>
                            <h6 style="text-align: center;">${product.price}</h6>
                           
                        </div>
                    </div>
				</c:forEach>
                </div>
            </div>
        </section>
        <!-- End Our Portfolio Section -->
	</main>
  

  <%@include file="/WEB-INF/views/Web/layout/footer.jsp" %>
	
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/venobox/venobox.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/counterup/counterup.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>

</html>