<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- font-awesome -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css" />

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/shop-homepage.css"
	rel="stylesheet">
	
	<script
		src="${pageContext.request.contextPath}/js/java09.js"></script>
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/home">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/home">Home <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						href="${pageContext.request.contextPath}/contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">{Shop Name}</h1>
				<div class="list-group">
					<a href="#" class="list-group-item">Category 1</a> <a href="#"
						class="list-group-item">Category 2</a> <a href="#"
						class="list-group-item">Category 3</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
				<h1 class="my-4">Contact us</h1>
				<form id="contact-form" method="post" action="/save-contact-no">

					<div class="messages"></div>

					<div class="controls">

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="firstName">Firstname *</label> 
									<!-- <input
										id="firstName" name="firstName"
										placeholder="Please enter your firstname *" /> -->
										 <input
										id="form_name" type="text" name="name" class="form-control"
										placeholder="Please enter your firstname *"
										required="required" data-error="Firstname is required.">
									<div class="help-block with-errors"></div>
									
									

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="lastName">Lastname *</label> <!-- <input id="lastName"
										name="lastName" placeholder="Please enter your firstname *" /> -->

									<input id="form_lastname" type="text" name="surname"
										class="form-control"
										placeholder="Please enter your lastname *" required="required"
										data-error="Lastname is required.">
									<div class="help-block with-errors"></div>
									
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="form_email">Email *</label> <input id="form_email"
										type="email" name="email" class="form-control"
										placeholder="Please enter your email *" required="required"
										data-error="Valid email is required.">
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="form_need">Please specify your need *</label> <select
										id="form_need" name="need" class="form-control"
										required="required" data-error="Please specify your need.">
										<option value=""></option>
										<option value="Request quotation">Request quotation</option>
										<option value="Request order status">Request order
											status</option>
										<option value="Request copy of an invoice">Request
											copy of an invoice</option>
										<option value="Other">Other</option>
									</select>
									<div class="help-block with-errors"></div>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="form_message">Message *</label>
									<textarea id="form_message" name="message" class="form-control"
										placeholder="Message for me *" rows="4" required="required"
										data-error="Please, leave us a message."></textarea>
									<div class="help-block with-errors"></div>
								</div>
							</div>
							<div class="col-md-12">
								<input type="button" class="btn btn-success btn-send" onclick="Java09.saveContactForm();"
									value="Send message">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<p class="text-muted"></p>
							</div>
						</div>
					</div>

				</form>
			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
