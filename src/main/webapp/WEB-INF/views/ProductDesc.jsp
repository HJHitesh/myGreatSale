<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/core/css/ProductDesp.css"
	var="ProductDesp"></spring:url>
<link href="${ProductDesp}" rel="stylesheet">

<spring:url value="/resources/images/" var="imag"></spring:url>

</head>
<body>

<div class="row panel-heading"><h3><span class="glyphicon glyphicon-dashboard"></span><b>ProDuct List</b></h3></div>

<c:forEach items="${productList}" var="product">

	<div class="col-sm-3">
		<article class="col-item">
		<div class="photo">
			<a href="<c:url value= '/details_get/${product.id}'/>"> <img src="${imag}/${product.id}.jpg"
				class="img-responsive" alt="Product Image" />
			</a>
		</div>
		<div class="info">
			<div class="row">
				<div class="price-details col-md-6">
					<p class="details">${product.description}</p>
					<h1></h1>
					<span class="price-new">${product.price}</span>
				</div>
			</div>
			<div class="separator clear-left">
				<p class="btn-add">
					<i class="fa fa-shopping-cart"></i>
					
					<a href="<c:url value= 'myCart/add/${product.id}'/>" class="hidden-sm">Add
						to cart</a>
				</p>
				<p class="btn-details">
					<a href="#" class="hidden-sm" data-toggle="tooltip"
						data-placement="top" title="In stock Order it Fast"><i
						class="fa fa-heart"></i></a>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
		</article>
	</div>
	
</c:forEach>
</body>
</html>