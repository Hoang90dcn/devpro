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

    <title>Chi Tiết Sản Phẩm</title>
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
                <div class="col-md-8">
                    <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="content-1" alt="Không tìm thấy ảnh">
                </div>

                <div class="col-md-4">
                    <div>
                        Mục sản phẩm
                    </div>
                    <div class="row">
                        <h1 style="font: Roboto;" >${product.name_product}</h1>
                    </div>
                    <div>Gía Bán : ${product.price} </div>
                    <div class="title">CLOUD WHITE / BLUE / ORANGE </div>
                    <div class="row">
                        <h3>MÀU SẮC CÓ SẴN </h3>
                    </div>
                    <div>
                            <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="image-1" alt="Không tìm thấy ảnh">
                            <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="image-1" alt="Không tìm thấy ảnh">
                    </div>
                    <div>
                        
                        <h3>MỘT SỐ HÌNH ẢNH MỚI </h3>
                        <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="image-1" alt="Không tìm thấy ảnh">
                        <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="image-1" alt="Không tìm thấy ảnh">
                        <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="image-1" alt="Không tìm thấy ảnh">
                       
                    </div>

                    <div>
                        <h5>Chọn size và số lượng</h5>
                        <select title="SIZE">
                            <option>Size 1</option>
                            <option>Size 2</option>
                            <option>Size 3</option>
                            <option>Size 4</option>
                            <option>Size 5</option>
                        </select>

                        <select title="Số lượng" id="selectSL">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                        </select>
                        
                    </div>
                    <div>
                        <button type="button" class="btn btn-secondary" onclick="Java09.addItemCart(${product.id}, ${product.price} );" >Thêm sản phẩm</button>
                    </div>
                    <div>
                        <p><a href="">Miễn phí vận chuyển</a><br>
                         Miễn phí vận chuyển cho mọi đơn hàng từ 04-31/03/2020</p>
                    </div>

                    
                    <div>
                            <p><a href="">Trả hàng dễ dàng</a><br>
                                Không đúng kích cỡ hoặc màu sắc? Truy cập trang hàng trả lại của chúng tôi để biết chi tiết. Tìm Hiểu Thêm</p>
                    </div>
                </div>
            </div>
            <!-- end row 1-->

            <div class="row" ><h2>Thông Tin Chi Tiết Sản Phẩm</h2></div>
            <div class="row">
                
                <div class="col-md-8">
                    <h3>Mô tả</h3>
                    <h5> ${product.short_decription}</h5>
                    <p>
                        ${product.description}
                    </p> 
                </div>
                <div class="col-md-4" >
                    <img src= "${pageContext.request.contextPath}/files/${product.avatar}" class="content-2">
                </div>
            </div>
           <div class="row">
                <h3>Thông Số</h3>
                <p>
                    <ul>
                        <li>Có dây buộc</li>
                        <li>Thân giày bằng da</li>
                        <li>Giày tập với thiết kế mũi vỏ sò kinh điển</li>
                        <li>Lót giày đúc và lớp lót bằng vải dệt</li>
                    </ul>
                    
                </p>
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