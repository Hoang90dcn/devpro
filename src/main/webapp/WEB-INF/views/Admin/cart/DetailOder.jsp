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
					<h1 class="mt-4">Dashboard</h1>
					<div class="card mb-4">
						<div>
							Mã Đơn: <span></span>
						</div>
						<div class="row">
							<div class="col-sm-4">Mã Khách Hàng: ${user.id}</div>
							<div class="col-sm-8">Họ Tên khách hàng: <a href="${pageContext.request.contextPath}/admin/detail-user/${user.id}" >${user.lastName}</a></div>
						</div>
						<div  class="row">
							<div class="col-sm-4">Số điện thoại: ${user.numberphone}</div>
							<div class="col-sm-8">Địa chỉ nhận hàng: ${user.address}</div>
							
						</div>
						<div class="row">
							<c:if test="${oder.status eq 'true' }">
								<div class="col-sm-4" >Trạng Thái:   <span class="badge badge-success">Tồn Tại</span></div>
							</c:if>
							
							<c:if test="${oder.status eq 'false' }">
								<div class="col-sm-4" >Trạng Thái:   <span class="badge badge-danger">Đã hủy</span></div>
								<div class="col-sm-4" >Người Hủy:     ${oder.updated_by }  </div>
							</c:if>
							
							
						</div>
						<div class="row">
							<div class="col-sm-4">
								Thanh Toán
							</div>
							<div class="col-sm-4">
								Khuyến mãi
							</div>
						</div>
						<div class="card-body">

							<table class="table">
								<thead>
									<tr class="row">

										<th class="col-sm-2" >Mã Hàng</th>
										<th class="col-sm-6">Tên Hàng</th>
										<th class="col-sm-2">Số lượng</th>
										<th class="col-sm-2">Đơn Gía</th>
										<th></th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="entry" items="${product}">
										<tr class="row">
											<td class="col-sm-2" >${entry.key.id}</td>
											<td class="col-sm-6"><span>${entry.key.name_product}</span> 
											<img width="50px" height="50px" alt="Không có ảnh" 
											src="${pageContext.request.contextPath}/files${entry.key.avatar}">
											</td>
											<td class="col-sm-2">${entry.value }</td>
											<td class="col-sm-2" >${entry.key.price} $</td>

										</tr>
									</c:forEach>
									

								</tbody>
							</table>
							<div class="row">
								<div class="col-sm-4" >Tổng Tiền:     ${oder.unitPrice }  </div>
								
							</div>
							<div class="row">
								<div class="col-sm-6" >Ghi Chú:  </div>
								
							</div>
							<div style="text-align: center;">
								<a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/list-cart">Quay Lại</a>
								<c:if test="${oder.status eq 'true' }">
									<a class="btn btn-danger" href="#">Hủy Đơn</a>
								</c:if>
								
							</div>
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
	<script
		src="${pageContext.request.contextPath}/js/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/datatables-demo.js"></script>
</body>
</html>