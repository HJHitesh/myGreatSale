<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>


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
<style type="text/css">

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
	padding-top: 60px;
	width: 100%;
	width: 100vw;
	height: 290px;
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
	<section id="contact">
		<div class="container">
			<div class="col-md-12">
				<div>
					<c:if test="${ not empty loginmessage }">
						<button type="button" class="btn btn-default submit">
						<a href="Logout.jsp">Logout</a>
						</button>
					</c:if>
					<c:if test="${empty loginMessage}">
						<button type="button" class="btn btn-default submit">
							<a href="Login">Login</a>
					</c:if>
					</button>
					
					<button type="button" class="btn btn-default submit">Register</button>

				</div>
			</div>

		</div>
		<div class="section-content">
			<h1 class="section-header">
				Great<span class="content-header wow fadeIn " data-wow-delay="0.2s"
					data-wow-duration="2s">Billon Deal</span>
			</h1>
			<h3>Great-DeaL-Across-The-Globe</h3>
		</div>
	</section>

</body>

</html>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/images/" var="imag"></spring:url>

<style type="text/css">

#logo{
width:30%;
height:30%;
}

.btn-default {
    color: #1b1818;
    background-color: #b1f7fb;
    border-color: #f1e9e9;
}

.col-md-6 {
    width: 50%;
    border: 1px solid #4cc8ce;
    
}
</style>




</head>
<body>

		<div class="row">
		
		<div class = "col-md-6 ">
		<img alt="Brand" id="logo" src="${imag}/logo.jpg" ">
		</div>
		
		<div class="col-md-4 col-md-offset-2 ">
				<button type="button" class="btn btn-default ">Login</button>&nbsp;&nbsp;

				<button type="button" class="btn btn-default ">Signin</button>&nbsp;&nbsp;&nbsp;

				<button type="button" class="btn btn-default ">Logout</button>&nbsp;&nbsp;
			</div>
		
		
		</div>
</body>
</html>
 --%>