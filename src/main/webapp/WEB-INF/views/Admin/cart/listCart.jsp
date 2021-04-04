<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Home admin</title>
<link href="${pageContext.request.contextPath}/css/styles.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
<meta charset="UTF-8">
<title>DS Người Dùng</title>
</head>
<body class="sb-nav-fixed">
	<div id="layoutSidenav">

		<%@include file="/WEB-INF/views/Admin/layout/header.jsp"%>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">Danh sách hóa đơn</h1>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> DataTable Example
						</div>
						<div class="card-body">
							
								<table class="table table-hover" id="dataTable">
									<thead>
										<tr>
											<th class=".col-sm-2">Mã HD</th>
											<th class=".col-sm-6">Sản Phẩm</th>
											<th>Tổng Đơn hàng</th>
											<th>Trạng Thái</th>
											<th>Thao Tác</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${oders}">
											<tr>
												<td class=".col-sm-1">${item.id}</td>
												<td class=".col-sm-6">ÁO THUN</td>
												<td>${item.unitPrice }$</td>
												<td>
													<c:if test="${item.status eq 'true'}">
														<span class="badge badge-success">Đang Giao</span>
													</c:if>
													<c:if test="${item.status eq 'false'}">
														<span class="badge badge-danger">Đã Hủy</span>
													</c:if>
												</td>
												<td>
													<c:if test="${item.status eq 'true'}">
														<a class="btn btn-success" href="${pageContext.request.contextPath}/admin/oder-detail/${item.id}">Chi Tiết</a>
														<a class="btn btn-danger" href="#">Hủy Đơn</a>
													</c:if>
													<c:if test="${item.status eq 'false'}">
														<a class="btn btn-warning" href="${pageContext.request.contextPath}/admin/oder-detail/${item.id}">Chi Tiết</a>
													</c:if>
												</td>
											</tr>
										</c:forEach>
										
										
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
			</main>
			<%@include file="/WEB-INF/views/Admin/layout/footer.jsp"%>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/img/error-404-monochrome.svg/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/chart-area-demo.js"></script>
	<script src="${pageContext.request.contextPath}/js/highcharts.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables-demo.js"></script>
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
</body>
</html>