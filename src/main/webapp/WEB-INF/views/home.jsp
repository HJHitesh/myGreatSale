<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>


<div class="container">

<h1> <center> GrEat-DEaL </center></h1>
<h5> <center> For Sports Arena </center></h5>
 <center> ${msg}</center>
 ${loginMessage}
<hr>
<hr>

<div class="row">
<!--including the files of Category page  --> 
<jsp:include page="Category.jsp"></jsp:include><br>
</div>


<c:if test="${isUserClickedLogin==true}">
	<jsp:include page="Login.jsp"></jsp:include>  
</c:if>

<br>

<c:if test="${isUserClickedRegister==true}">
<jsp:include page="Registration.jsp"></jsp:include> 
</c:if>


</body>
</div>
</html>