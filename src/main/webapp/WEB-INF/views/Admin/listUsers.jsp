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

             <%@include file="/WEB-INF/views/Admin/layout/header.jsp" %> 
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Dashboard</h1>
                              <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" >
                                        <thead>
                                            <tr>
                                            	<th>ID</th>
                                                <th>Tên</th>
                                                <th>Email</th>
                                                <th>Địa Chỉ</th>
                                                <th>SL mua hàng</th>
                                                <th>T. Thái</th>
                                                <th>Action</th>
                                                
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Nguyễn Huy Hoàng</td>
                                                <td>huyhoang10051999@gmail.com</td>
                                                <td>Hà Đông - Hà Nội</td>
                                                <td>23</td>
                                                <td>Unblock</td>
                                                <td>
                                                	<button type="button" class="btn btn-danger">Block</button>
                                                	<button type="button" class="btn btn-success">Unblock</button>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
               <%@include file="/WEB-INF/views/Admin/layout/footer.jsp" %>
            </div>
       </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" ></script>
        <script src="${pageContext.request.contextPath}/img/error-404-monochrome.svg/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" ></script>
        <script src="${pageContext.request.contextPath}/js/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" ></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" ></script>
        <script src="${pageContext.request.contextPath}/js/datatables-demo.js"></script>
    </body>
</html>