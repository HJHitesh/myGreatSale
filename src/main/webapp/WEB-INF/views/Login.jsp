<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Great-Deal</title>
</head>

<body>
<div class="panel panel-default col-sm-8 col-sm-offset-2">

		<div class="row panel-heading"><h3><span class="glyphicon glyphicon-dashboard"></span>  <b>Login DEtails</b></h3></div>

		<div class="panel-body">

<c:url var="addAction" value="j_spring_security_check?${_csrf.parameterName}=${_csrf.token}"></c:url>
 <form action="${addAction}" method="post">
 
UserID: <input class="form-control" type="text" name="username" ><br>
<br>
Password: <input class="form-control" type="text" name="password">
<br>

 <!-- (AFTER ADDING THIS IT GOT STARTING GETTING INTO METHOD--> 
<input type="submit"  value="LOGIN" class="btn btn-primary" >										
<br>

 </form>
 
</div>
</div>

</body>
</form>
</html>