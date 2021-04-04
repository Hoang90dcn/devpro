<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Quản trị</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		
		<button type="button" class="btn btn-primary d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
  			Tin nhắn <span class="badge badge-light">9</span>
  			<!-- <span class="sr-only">unread messages</span> -->
		</button>
		<button type="button" class="btn btn-primary d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
  			Thông báo <span class="badge badge-light">9</span>
  			<!-- <span class="sr-only">unread messages</span> -->
		</button>
		
		
		<!-- Navbar-->
		<sec:authorize access="isAuthenticated()">
			<%
				String username = "";
			Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
			if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
				username = ((com.devpro.java09.entity.UserEntity) principal).getLastName();

			}
			%>
			<ul class="navbar-nav ml-auto ml-md-0">
				<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><%=username %><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="${pageContext.request.contextPath}/home">Trang bán hàng</a> 
					
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="${pageContext.request.contextPath}/perform_logout">Đăng xuất</a>
				</div></li>
			</ul>
		</sec:authorize>
		
	</nav>
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
			
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Core</div>
					<a class="nav-link" href="index.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> Dashboard
					</a>
					<div class="sb-sidenav-menu-heading">Interface</div>
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-columns"></i>
						</div> Quản Lý Người Dùng
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/listUser">DS Người
								Dùng</a> <a class="nav-link" href="layout-sidenav-light.html">Light
								Sidenav</a>
						</nav>
					</div>
					
					
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div> QL Sản Phẩm
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
						
					</a>
					<div class="collapse" id="collapsePages"
						aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages">
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/list-products">
								Ds Sản Phẩm
								
							</a> 
							


						</nav>
					</div>
					<!--  quản lý order-->
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#order" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-cash-register"></i>
						</div> QL đơn hàng <span class="badge badge-light">9</span>
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
						
					</a>
					<div class="collapse" id="order"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/list-cart">Tất Cả đơn hàng
									</a> 
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/list-cart">Đơn chờ xác nhận<span class="badge badge-light"> 9 </span>
							</a> 
						</nav>
					</div>
					<!-- end quản lý oder -->
					
					<!--  quản lý doanh thu-->
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#revenue" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-coins"></i>
						</div> Tài Chính
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
						
					</a>
					<div class="collapse" id="revenue"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/revenue">Doanh Thu dự kiến
									</a> 
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/list-cart">Tiền Trong Tài Khoản</a> 
						</nav>
					</div>
					
					<!-- end quản lý oder -->
					
					
					
					
					
					
					<!--  quản lý quảng cáo-->
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#qc" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-ad"></i>
						</div> Quảng cáo
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
						
					</a>
					<div class="collapse" id="qc"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseError" aria-expanded="false"
								aria-controls="pagesCollapseError">Bài Viết
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>


							<div class="collapse" id="pagesCollapseError"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="${pageContext.request.contextPath}/admin/list-news">Tất Cả bài viết</a> 
									<a class="nav-link" href="${pageContext.request.contextPath}/admin/list-news"/admin>Comment</a> 
										
								</nav>
							</div>
							<a class="nav-link"
								href="${pageContext.request.contextPath}/admin/list-cart">Khuyến mãi</a> 
						</nav>
					</div>
					
					<!-- end quản lý oquảng cáo -->
				</div>
			</div>
			
		</nav>
	</div>

</body>
</html>