<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Chi Tiết Bài Viết</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    
  <link href="${pageContext.request.contextPath}/img/logo.png" rel="icon">
  <link href="${pageContext.request.contextPath}/img/logo.png" rel="apple-touch-icon">
  <link  rel="shortcut icon" href="assets/img/logo.png">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/aos/aos.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/comment.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/chitiet.css" rel="stylesheet">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- header -->
 <%-- <%@ include file="/WEB-INF/views/Web/layout/header.jsp" %> --%> 
  <jsp:include page="/WEB-INF/views/Web/layout/header.jsp"></jsp:include> 
  <!-- end header -->

    <!-- ======= Hero Section ======= -->

    <!-- End Hero -->

    <main id="main">
        <div class="container">
			<div class="row">
				<div class="col-sm-9" style="margin: left;">
					<div class="card">
						<div class="card-body">
							<h1 style="text-align:  center; font-family: serif;  margin-bottom: 30px;">${model.title }</h1>
							<div class="row">
								<i>${model.short_description }</i>
							</div>
							
							<div style="margin-bottom: 20px; margin-top: 20px;">
								<ul style="list-style:none ;">
									<li>Đăng bởi:${model.created_by }</li>
									<li>Ngày Tạo: ${model.created_date }</li>
									<li><a href="#" style="text-decoration: underline;">Tổng bí thư, Chủ tịch nước dâng hương tưởng niệm Chủ tịch Hồ Chí Minh</a></li>
								</ul>
							</div>
							
							<div style="margin-bottom: 20px; margin-top: 20px;">
								${model.paragraph_1 }
								
							</div>
							
							
						</div> 
					</div>
				
				</div>
				
				
				
				<div class="col-sm-3" style="margin: auto;">
					<div class="card" style="text-align: center;">
						<img src="${pageContext.request.contextPath}/img/portfolio/q.jpg"  alt=""  style="height: 240px; width: 240px; ">
						<div class="card-body">Nhập mã: "ACMUNG89" để được giảm 10% hóa đơn</div> 
					</div>
				
				</div>
			</div>
			 <div class="row">
        <div class="col-md-8">
            <div class="post-content">
              <img src="https://via.placeholder.com/400x150/" alt="post-image" class="img-responsive post-image">
              <div class="post-container">
                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="user" class="profile-photo-md pull-left">
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Alexis Clark</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a photo about 3 mins ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="fa fa-thumbs-up"></i> 13</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="" class="profile-photo-sm">
                    <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                  </div>
                  <div class="post-comment">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="profile-photo-sm">
                    <p><a href="timeline.html" class="profile-link">John</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm">
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
        </div>


    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <%@include file="/WEB-INF/views/Web/layout/footer.jsp" %>
    <!-- End Footer -->

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
     <script src="${pageContext.request.contextPath}/js/java09a.js"></script>
    
    

</body>
</html>