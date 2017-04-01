<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Product Page</title>

<jsp:include page="../Linking.jsp"></jsp:include><!--   means it is out of its current directory -->

<spring:url value="/resources/images/" var="imag"></spring:url>

</head>
<body>
${msg}<br>
${message }<br>
	<h1>Add a Product</h1>
	<c:url var="addAction" value="/add_Product_Value"></c:url>
	<form:form action="${addAction}" commandName="product"  method="post">
		<table>
			<tr>
				<td><form:label path="id"> <spring:message text="id" />	</form:label></td>
				
						<td><form:input path="id" pattern=".{5,20}" required="true"
								title="id should contains 5 to 20 characters" /></td>
			<tr>
			
				<td><form:label path="name">	<spring:message text="Name" /> </form:label></td>
				
				<td><form:input path="name" required="true" /></td>
			
			</tr>
			
			<tr>
			
				<td><form:label path="price">	<spring:message text="Price" /> </form:label></td>
				
				<td><form:input path="price" required="true" /></td>
			
			</tr>
			
			
			<tr>
			
				<td><form:label path="description"> <spring:message text="Description"/></form:label></td>
		
				<td><form:input path="description" required="true" /></td>
			</tr>
			
			<tr>
			
				<td><form:label path="category_id"> <spring:message text="Category_id"/></form:label></td>
		
				<td><form:input path="category_id" required="true" /></td>
			</tr>
			
			<tr>
			
				<td><form:label path="supplier_id"> <spring:message text="Supplier_id"/></form:label></td>
		
				<td><form:input path="supplier_id" required="true" /></td>
			</tr>
			
			<tr>
			
				<td><form:label path="image"> <spring:message text="Supplier_id"/></form:label></td>
		
				<td><form:input type="file" path="image"  name="image" required="true" mutiple="multiple" /></td>
				
			</tr>
			
			
			
			<tr>
				<td colspan="2">
						<input type="submit" name=action value="save" />
					
						<input type="submit" name=action value="renew" />
				</td>
			</tr>
		</table>
	</form:form>
	<hr> 
	
	<h3>Product List</h3>
	<c:if test="${!empty productList}">
	<table   class="table table-striped" >
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Price</td>
				<td>Descriptions</td>
				<td>Images<td>
				<td>Category_id</td>
				<td>Supplier_id</td>
				<td>Action</td>

			</tr>
		</thead>

		<c:forEach var="product" items="${productList}">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.description}</td>
				<td>
				<img
					
					src="${imag}/${product.id}.jpg" height ="50" width="100"/>
				
				
				</td>
				<td>${product.category_id}</td>
				<td>${product.supplier_id}</td>
				
				<td><a href="<c:url value= '/manage_Product_edit/${product.id}'/>">Edit</a></td>
				
				<td> <a href="<c:url value='/manage_Product_delete/${product.id}'/>">Delete</a></td>
			</tr>

		</c:forEach>

	</table>
	</c:if>
</body>
</html>