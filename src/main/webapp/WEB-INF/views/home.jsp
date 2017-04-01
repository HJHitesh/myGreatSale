<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="Linking.jsp"></jsp:include>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">


</style>

</head>
<body>
	<div class="container">
		
	 	<div class="row">
			<jsp:include page="header.jsp"></jsp:include>
		</div>	

		<hr>
		<hr>
		<center>${msg}</center>

		<centre> ${role} </centre>

		<centre> ${successMessage} </centre>

		<centre> ${errorMessage}</centre>

		${loginMessage}
		<hr>
		<hr>
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
		
		
		<c:if test="${empty loginMessage}">
			<a href="Login">Login</a>
		</c:if>

		<a href="Registration">Register</a>

		<c:if test="${not empty loginMessage}">
			<a href="Logout">Logout</a>
		</c:if>

		<!--  If user clicked the login url the then after going to the controller it comes to this landing page  -->

		<c:if test="${isAdmin==true}">
			<jsp:include page="Admin/AdminHome.jsp"></jsp:include>
		</c:if>


		<c:if test="${isUserClickedLogin==true}">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if>

		<c:if test="${ not empty errorMessage }">
			<jsp:include page="Login.jsp"></jsp:include>
		</c:if>
		<br>

		<c:if test="${isUserClickedRegister==true}">
			<jsp:include page="Registration.jsp"></jsp:include>
		</c:if>

		<c:if test="${ not empty loginmessage }">
			<a href="Logout.jsp">Logout</a>
		</c:if>
	</div>
</body>
</html>