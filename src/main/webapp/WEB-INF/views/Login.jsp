<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Great-Deal</title>
</head>

<body>
PLEASE LOGIN WITH YOUR CREDENTICIALS
<br>
$message

<c:url var="addAction" value="j_spring_security_check"></c:url>
 <form action="${addAction}" method="post">
 
UserID: <input class="form-control" type="text" name="username" ><br>
<br>
Password: <input class="form-control" type="text" name="password">
<br>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> <!-- (AFTER ADDING THIS IT GOT STARTING GETTING INTO METHOD--> 
<input type="submit"  value="LOGIN">										
<br>

 </form>
 

</body>
</form>
</html>