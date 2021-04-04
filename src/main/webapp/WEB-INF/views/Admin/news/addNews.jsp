<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<!-- saved from url=(0053)https://getbootstrap.com/docs/4.0/examples/dashboard/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Thêm Sản Phẩm</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/admin/dashboard.css"
	rel="stylesheet">

<!-- chartjs -->
<link href="${pageContext.request.contextPath}/admin/admin.css"
	rel="stylesheet">

<!--summernote-->

<link href="${pageContext.request.contextPath}/summernote/summernote.min.css"
	rel="stylesheet">


</head>

<body class="sb-nav-fixed">
	

	<div class="container-fluid">
		<div class="row">

			<!-- MENU -->
			

			<!-- CONTENT -->
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

			<h2>Thêm bài Viết</h2>
			<form:form method="post" action="/admin/save-news" modelAttribute="newsEntity" >
				
				<div class="form-group">
					<label>Tên Bài Viết</label>
					<form:input type="text" class="form-control" path="title"  />
					<small id="title" class="form-text text-muted">
						
					</small>
				</div>
				<div class="form-group">
					<label>Miêu tả ngắn</label>
					<form:input type="text" class="form-control" path="short_description"/>
					<small id="short_description" class="form-text text-muted">
						
					</small>
				</div>
				
				<div class="form-group">
					<label>Chi tiết bài viết</label>
					<form:textarea class="form-control"  id="summernote" path="paragraph_1"></form:textarea>
				</div>
				
				<button type="submit" class="btn btn-primary">Lưu trữ</button>
			</form:form>
			</main>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!--summernote-->

	
	
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

	<script src="${pageContext.request.contextPath}/admin/js/popper.min.js"></script>
	

	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Icons -->
	<script
		src="${pageContext.request.contextPath}/admin/js/feather.min.js"></script>

	<!-- Graphs -->
	<script src="${pageContext.request.contextPath}/admin/js/Chart.min.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/summernote/summernote.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		  $('#summernote').summernote();
		});
	</script>

</body>
</html>