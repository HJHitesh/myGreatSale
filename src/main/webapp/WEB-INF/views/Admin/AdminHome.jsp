<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../Linking.jsp"></jsp:include>

<style type="text/css">



a {
    color: #0c0c0a;
    text-decoration: none;
}

#but {
    color: #fff;
    background-color: aqua;
    border-color: aqua;
    }
    
    .btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 27px;
    font-weight: 500;
    line-height: 1.428571;
    text-align: center;
    }
    
  #row {
  margin-top:50px;
  margin-left:50px;
  border:solid 1px;
  margin-right:50px;
  background-color: tomato;
  
  }  
  
  
  

</style>

</head>
<body>

	<!-- ADD 3 LINK to manage   -->
<div id="row" class="row">

<div  class=" col-md-3 ">
	<button id ="but" type="button" class="btn btn-primary"><a href="manage_Categories">Manage Category</a></button>
</div>
<div class="col-md-4">
	<button id ="but" type="button" class="btn btn-primary"><a href="manage_Products">Manage Product</a></button>
</div>	
<div class="col-md-3">
	<button id ="but" type="button" class="btn btn-primary"><a href="manage_Suppliers">Manage Supplier</a></button>
</div>
<div class="col-md-2">
	<button id ="but" type="button" class="btn btn-primary"><a href="logout">Direct Logout</a></button>
</div>	
</div>	

    
    
    <br>

	<br>
	
	<c:if test="${isUserClickedCategories== true || isUserClickedCategory == true || isAdminClickedCategories == true}">
		<jsp:include page="Category.jsp"></jsp:include>
	</c:if>


	<c:if test="${isAdminClickedproducts==true}">
		<jsp:include page="Product.jsp"></jsp:include>
	</c:if>


	<c:if test="${isAdminClickedSuppliers==true }">
	
		<jsp:include page="Supplier.jsp"></jsp:include>
		
	</c:if>



</body>
</html>