<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
