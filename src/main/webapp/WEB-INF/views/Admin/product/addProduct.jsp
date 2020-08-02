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

<title>Dashboard Template for Bootstrap</title>

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

<body>
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0"
			href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Company
			name</a>
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap"><a class="nav-link"
				href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">Sign
					out</a></li>
		</ul>
	</nav>

	<div class="container-fluid">
		<div class="row">

			<!-- MENU -->
			<nav class="col-md-2 d-none d-md-block bg-light sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link"
							href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-layers">
									<polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
									<polyline points="2 17 12 22 22 17"></polyline>
									<polyline points="2 12 12 17 22 12"></polyline></svg> Category
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-layers">
									<polygon points="12 2 2 7 12 12 22 7 12 2"></polygon>
									<polyline points="2 17 12 22 22 17"></polyline>
									<polyline points="2 12 12 17 22 12"></polyline></svg> Products
						</a></li>
					</ul>

					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>Saved reports</span> <a
							class="d-flex align-items-center text-muted"
							href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="currentColor"
								stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
								class="feather feather-plus-circle">
								<circle cx="12" cy="12" r="10"></circle>
								<line x1="12" y1="8" x2="12" y2="16"></line>
								<line x1="8" y1="12" x2="16" y2="12"></line></svg>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link"
							href="https://getbootstrap.com/docs/4.0/examples/dashboard/#">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
									viewBox="0 0 24 24" fill="none" stroke="currentColor"
									stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
									class="feather feather-file-text">
									<path
										d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
									<polyline points="14 2 14 8 20 8"></polyline>
									<line x1="16" y1="13" x2="8" y2="13"></line>
									<line x1="16" y1="17" x2="8" y2="17"></line>
									<polyline points="10 9 9 9 8 9"></polyline></svg> Contact
						</a></li>
					</ul>
				</div>
			</nav>

			<!-- CONTENT -->
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

			<h2>Thêm mới sản phẩm</h2>
			<form:form method="post" action="/admin/save-product" modelAttribute="product" enctype="multipart/form-data">
				<div class="form-group">
					<label>Danh mục</label>
					<form:select class="form-control form-control-line" path="category.id">
						<form:options items="${categories}" itemValue="id" itemLabel="name_categories"/>
					</form:select>
				</div>
				<div class="form-group">
					<label>Tên Sản Phẩm</label>
					<form:input type="text" class="form-control" path="name_product"  />
					<small id="name_product" class="form-text text-muted">
						Tối đa 15 kí tự.
					</small>
				</div>
				<div class="form-group">
					<label>Miêu tả ngắn</label>
					<form:input type="text" class="form-control" path="short_decription"/>
					<small id="emailHelp" class="form-text text-muted">
						Sẽ hiển thị tại màn hình danh sách sản phẩm.
					</small>
				</div>
				<div class="form-group">
					<label>Giá bán</label>
					<form:input type="text" class="form-control" path="price" />
					<small id="emailHelp" class="form-text text-muted">
						Đơn vị tính là VNĐ.
					</small>
				</div>
				
				<div class="form-group">
					<label>Chi tiết thông tin</label>
					<form:textarea class="form-control"  id="summernote" path="description"></form:textarea>
				</div>
				
				<div class="form-group">
					<label>Anh sản phẩm</label>
					<input type="file"  name="productAvatars" />
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