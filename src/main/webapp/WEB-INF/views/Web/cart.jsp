
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- sử dụng tiếng việt -->


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


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
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/venobox/venobox.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/aos/aos.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">


<script src="${pageContext.request.contextPath}/js/java09.js"></script>
</head>

<body>

	<!-- header -->
	<%@ include file="/WEB-INF/views/Web/layout/header.jsp"%>
	<%-- <jsp:include page="/WEB-INF/views/Web/layout/header.jsp"></jsp:include> --%>
	<!-- end header -->



	<main>
		<section id="portfolio" class="portfolio section-bg">
			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<table class="table">
					<thead>
						<tr>
							
							<th>Mã Hàng</th>
							<th>Tên Hàng</th>
							<th>Đơn Gía</th>
							<th>Số Lượng</th>
							<th></th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${GIO_HANG.list}">
							<tr>
								<td>${item.productId}</td>
								<td>
									<span>${item.productName}</span>
									<img alt="Không có ảnh" width="50px" height="50px" src="${pageContext.request.contextPath}/files/${item.avatar}">
								</td>
								<td>${item.price}</td>
								<td><input type="number" min="1" max="10" value="${item.quantity}" /> </td>
								<td>
									<a href="/cart/delete-item-incart/${item.productId}"><i class="icofont-ui-delete"></i></a>
								</td>
							</tr>
						</c:forEach>
						
						
					</tbody>
				</table>
				<div style="text-align: left;">Tổng Tiền: 
					<span>${GIO_HANG.tatol}</span>
				 </div>
				<div style="text-align: center;"><button type="button" class="btn btn-danger">Thanh Toán</button></div>
			</div>
			
		</section>
		<!-- End Our Portfolio Section -->
	</main>


	<%@include file="/WEB-INF/views/Web/layout/footer.jsp"%>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/php-email-form/validate.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/jquery-sticky/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/venobox/venobox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/counterup/counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>

</html>