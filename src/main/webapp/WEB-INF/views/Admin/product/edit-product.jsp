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
			<form:hidden path="id"/>

			<!-- CONTENT -->
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

			<h2>Thêm mới sản phẩm</h2>
			
			<form:form method="post" action="/admin/save-product" modelAttribute="product" enctype="multipart/form-data">
				<form:hidden path="id"/>
				<div class="form-group">
					<label>Danh mục</label>
					<form:select class="form-control form-control-line" path="category.id" >
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
				<button type="submit" class="btn btn-success">Cập Nhập</button>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/list-products">Hủy</a>
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