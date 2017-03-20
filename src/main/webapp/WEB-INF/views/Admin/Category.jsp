<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<h2><centre>Manage Categories</centre></h2>
	<hr>
	<hr>
	<form action="add_Category_Value" method="post">
	
	ID:<input type="text" name ="id" >
	
	NAME:<input type="text" name ="name" >

	DESCRIPTION:<input type="text" name ="description">
	
	<input type="submit" value="Create">
	
	
	<br>
	<br>
	<hr>
	
	<table border="2">
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Descriptions</td>
				<td>Action</td>

			</tr>
		</thead>

		<c:forEach var="category" items="${categoryList}">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td><a href="/manage_category_edit/${category.id}">Edit</a>  || <a href="/manage_category_delete/${category.id}">Delete</a>
			</tr>

		</c:forEach>


</form>
	</table>
</body>
</html>