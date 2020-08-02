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
                               <a href="${pageContext.request.contextPath}/admin/add-product" class="btn btn-success" >Thêm Sản Phẩm</a>
                                
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" >
                                        <thead>
                                            <tr>
                                            	<th>ID</th>
                                                <th>Tên SP</th>
                                                <th>Gía</th>
                                                <th>Số Lượng</th>
                                                <th>Ảnh</th>
                                                <th>Action<th>
                                                
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                        
                                            <c:forEach var="product" items="${products }">
                                            <tr>
                                                <td>${product.id}</td>
                                                <td>${product.name_product}</td>
                                                <td>${product.price}</td>
                                                <td>
                                                	0
                                                </td>
                                                <td>
                                                	<img width="100px" height="100px" alt="Không có ảnh" src="${pageContext.request.contextPath}/files/${product.avatar }">
                                                </td>
                                                <td>
                                                	<button type="button" class="btn btn-danger">Xóa</button>
                                                	<button type="button" class="btn btn-success">Cập Nhập</button>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                      <!--- form đăng ký thành viên-->
    <div class="modal fade" id="formDK" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-white text-center bg-secondary">
                    <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>

                </div>
                <div class="modal-body mx-3">
                    <form role="form" method="POST" action="" id="frmRegiterForm">
                        <input type="hidden" name="_token" value="" id="token" />


                        <div class="form-group">
                            <label class="control-label">Họ và Tên</label>
                            <div>
                                <input type="text" class="form-control input-lg" name="name" id="userFullName" />
                                <div style="color: red;" id="thongBao1"></div>
                            </div>
                        </div>

                        <div>
                            <label class="control-label">Số điện thoại</label>
                            <div>
                                <input type="text" class="form-control input-lg" name="name" id="userPhone" />
                                <div style="color: red;" id="thongBao2"></div>
                            </div>

                        </div>



                        <div class="form-group">
                            <label class="control-label">Username</label>
                            <div>
                                <input type="text" class="form-control input-lg" name="name" id="userName" />
                                <div style="color: red;" id="thongBao3"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label">E-Mail Address</label>
                            <div>
                                <input type="email" class="form-control input-lg" name="email" id="userEmail" value="" />
                                <div style="color: red;" id="thongBao4"></div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label">Password</label>
                            <div>
                                <input type="password" class="form-control input-lg" id="userPassword" name="password" />
                                <div style="color: red;" id="thongBao5"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Confirm Password</label>
                            <div>
                                <input type="password" class="form-control input-lg" id="UserPassword_confirmation" name="password_confirmation" />
                                <div style="color: red;" id="thongBao6"></div>
                            </div>
                        </div>



                    </form>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <div class="form-group">
                        <div>
                            <button type="submit" class="btn btn-success" onclick="dangKy();">
                <i class="glyphicon glyphicon-floppy-save"></i> Register
              </button>
                        </div>
                    </div>
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
        <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
    </body>
</html>