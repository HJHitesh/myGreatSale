<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Category Page</title>

<jsp:include page="../Linking.jsp"></jsp:include><!--   means it is out of its current directory -->

</head>
<body>
${msg}<br>
${message }<br>
	<h1>Add a Category</h1>
	<c:url var="addAction" value="/add_Category_Value"></c:url>
	<form:form action="${addAction}" commandName="category"  method="post">
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
			
				<td><form:label path="description"> <spring:message text="Description"/></form:label></td>
		
				<td><form:input path="description" required="true" /></td>
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
	
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
	<table   class="table table-striped" >
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
				
				<td><a href="<c:url value= '/manage_category_edit/${category.id}'/>">Edit</a></td>
				<td> <a href="<c:url value='/manage_category_delete/${category.id}'/>">Delete</a></td>
			</tr>

		</c:forEach>

	</table>
	</c:if>
</body>
</html>