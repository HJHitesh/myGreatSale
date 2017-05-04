<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Linking.jsp"></jsp:include>

<style type="text/css">
.container .jumbotron, .container-fluid .jumbotron {
    padding-right: 60px;
    padding-left: 60px;
    margin-top: 56px;
    background-color: darkturquoise;
}

.jumbotron h1 {
    font-size: 63px;
    font-family: cursive;
    color: firebrick;
}

.container {
    width: 100%;
    background-color: cadetblue;
}

 h4{
    font-size: 18px;
    color: yellow;
}
 h3{
    font-size: 18px;
    color: yellow;
}

p{
color: white;
}

    
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<div class="container">
  <div class="jumbotron">
   <i class="fa fa-thumbs-up" style="font-size:118px;color:red"aria-hidden="true"></i> <h1>Success</h1>
    <h3>THANKYOU FOR SHOPPING WITH GreatBillon DEAl</h3>
    <h4>HAPPY TO HAVE YOU PLZS VISIT AGAIN</h4>
    
    <br>
    <br>
    
    
   <p>You Package is in Process</p>      
  <p>Expected Delivery in 10-15 working Days</p> 
   <a href="<c:url value= '/'/>">
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-shopping-cart"></span> Continue
							Shopping
						</button>
	</a>
   
   
  </div>
       
</div>

</body>
</html>