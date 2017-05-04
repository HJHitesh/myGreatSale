<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Linking.jsp"></jsp:include>


<spring:url
	value="https://fonts.googleapis.com/css?family=Oleo+Script:400,700"
	var="font"></spring:url>
<link href="${font}" rel="stylesheet">

<spring:url value="https://fonts.googleapis.com/css?family=Teko:400,700"
	var="fo"></spring:url>
<link href="${fo}" rel="stylesheet">

<spring:url
	value="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	var="fon"></spring:url>
<link href="${fon}" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
#homecon {
	width: 1116px;
	background-color: ghostwhite;
}

a {
	color: white;
	text-decoration: none;
}

.content-header {
	font-family: 'Oleo Script', cursive;
	color: #fcc500;
	font-size: 45px;
}

.section-content {
	text-align: center;
}

#contact {
	font-family: 'Teko', sans-serif;
	padding-top: 11px;
	width: 100%;
	width: 100vw;
	height: 165px;
	background: #3a6186;
	background: -webkit-linear-gradient(to left, #3a6186, #89253e);
	background: linear-gradient(to left, #3a6186, #89253e);
	color: #fff;
}

.contact-section {
	padding-top: 40px;
}

.contact-section .col-md-6 {
	width: 50%;
}

.form-line {
	border-right: 1px solid #B29999;
}

.form-group {
	margin-top: 10px;
}

label {
	font-size: 1.3em;
	line-height: 1em;
	font-weight: normal;
}

.form-control {
	font-size: 1.3em;
	color: #080808;
}

textarea.form-control {
	height: 135px;
	/* margin-top: px;*/
}

.submit {
	font-size: 1.1em;
	float: right;
	width: 150px;
	background-color: transparent;
	color: #fff;
}
</style>

</head>
<body>

	<!-- THIS IS THE HEADER PART -->

	<div class="row">
		<section id="contact">
		<div class="container">
			<div class="col-md-12">
				<div>
					<c:if
						test="${ not empty loginmessage || isAdmin==true || isAdmin == false}">
						<button type="button" class="btn btn-default submit">
							<a href="logout">Logout</a>
						</button>
					</c:if>
					<c:if test="${empty loginMessage}">
						<button type="button" class="btn btn-default submit">
							<a href="Login">Login</a>
						</button>
					</c:if>

					<c:if test="${empty loginMessage}">
						<button type="button" class="btn btn-default submit">
							<a href="Registration">Register</a>
						</button>
					</c:if>
				</div>
			</div>

		</div>
		<div class="section-content">
			<h1 class="section-header">
				Great<span class="content-header wow fadeIn " data-wow-delay="0.2s"
					data-wow-duration="2s">Billion Deal</span>
			</h1>
			<h3>Great-DeaL-Across-The-Globe</h3>
		</div>
		</section>

	</div>
	<br>

	<div class="row">
		<c:if test="${isUserClickedLogin==true}">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if>
	</div>
	<!-- THE HEADER ENDS HERE -->

	<div id="homecon" class="container">

		<c:if test="${not empty msg}">
			<div class="alert alert-success" role="alert">
				<center>${msg}</center>
			</div>
		</c:if>
		<c:if test="${not empty role}">
			<div class="alert alert-success" role="alert">
				<centre> ${role} </centre>
			</div>
		</c:if>
		<c:if test="${not empty successMessage}">
			<div class="alert alert-success" role="alert">
				<centre> ${successMessage} </centre>
			</div>
		</c:if>
		<c:if test="${not empty errorMessage }">
			<div class="alert alert-success" role="alert">
				<centre> ${errorMessage}</centre>
			</div>
		</c:if>
		<c:if test="${not empty loginMessage }">
			<div class="alert alert-success" role="alert">${loginMessage}</div>
		</c:if>
		<c:if test="${not empty logoutMessage}">
			<div class="alert alert-success" role="alert">${logoutMessage}</div>
		</c:if>



		<!--including the files of nav bar -->

		<br>

		<div class="row">
			<jsp:include page="navbar.jsp"></jsp:include>
		</div>

		<!-- including the file of Carosal -->


		<div class="row">
			<c:if test="${empty AdminLoggedIn }">
				<jsp:include page="Carosal.jsp"></jsp:include><br>
				<br>
			</c:if>
		</div>




		<!-- INCLUDING THE FILE OF PRODUCTDESC -->


		<div class="row">
			<c:if test="${empty sucessMessage || displayCart==false}">
				<jsp:include page="ProductDesc.jsp"></jsp:include>
				<!--  this list the product on home page -->
			</c:if>
		</div>

		<!-- THIS IS THE INCLUDING OF DETAILS PAGE -->


		<div class="row">
			<c:if test="${!empty sucessMessage}">
				<jsp:include page="Details.jsp"></jsp:include>
				<!-- this give the details of the product -->
			</c:if>
		</div>


		<!-- If USER CLICKED LOGIN AFTER GOING TO CONTROLLER IT COMES HERE -->


		<%-- <c:if test="${ not empty errorMessage }">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if> --%>

		<!--  If user clicked the login url the then after going to the controller it comes to this landing page  -->

		<c:if test="${isAdmin==true}">
			<jsp:include page="Admin/AdminHome.jsp"></jsp:include>
		</c:if>

		<c:if test="${displayCart==true}">
			<jsp:include page="Showdetails.jsp"></jsp:include>
		</c:if>


		<c:if test="${isUserClickedRegister==true}">
			<jsp:include page="Registration.jsp"></jsp:include>
		</c:if>


	</div>
	<section> <jsp:include page="ContactUs.jsp"></jsp:include><br>

	</section>


	<jsp:include page="footer.jsp"></jsp:include><br>

</body>
</html>