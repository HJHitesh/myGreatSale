

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Supplier Page</title>

<jsp:include page="../Linking.jsp"></jsp:include><!--   means it is out of its current directory -->

</head>
<body>
${msg}
<br>

${message}

<br>


	<h1>Add a Supplier</h1>
	<c:url var="addAction" value="/add_Supplier_Value"></c:url>
	
	<form:form action="${addAction}" commandName="supplier"  method="post">
		<table>
			<tr>
				<td><form:label path="id"> <spring:message text="id" />	</form:label></td>
				
						<td><form:input path="id"  pattern=".{5,20}" required="true" 
						
						title="id should contains 5 to 20 characters" /></td>
								
			</tr>					
			<tr>
			
				<td><form:label path="name" value="name">	<spring:message text="Name" /> </form:label></td>
				<td><form:input path="name" required="true" /></td>
			
			</tr>
			
			<tr>
			
				<td><form:label path="address" value="address"> <spring:message text="Address"/></form:label></td>
				<td><form:input path="address" required="true" /></td>
				
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
	
	<h3>Supplier List</h3>
 	<c:if test="${!empty supplierList}"> 
	<table   class="table table-striped" >
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Address</td>
				<td>Action</td>

			</tr>
		</thead>

		<c:forEach var="supplier" items="${supplierList}">
			<tr>
				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				
				<td><a href="<c:url value= '/manage_Supplier_edit/${supplier.id}'/>">Edit</a></td>
				
				<td> <a href="<c:url value='/manage_Supplier_delete/${supplier.id}'/>">Delete</a></td>
			</tr>

		</c:forEach>

	</table>
	</c:if>
</body>
</html>