


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Sport$-AreNA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss"></spring:url>

<link href="${bootstrapCss}" rel="stylesheet">

<spring:url value="/resources/images/" var="imag"></spring:url>
<style type="text/css">

.item{
width: 1200px;
height: 400px;

}

</style>
</head>
<body>
	<!---NAV BAR-->
	<div class="row">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">WebSiteName</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Page 1-1</a></li>
							<li><a href="#">Page 1-2</a></li>
							<li><a href="#">Page 1-3</a></li>
						</ul></li>
					<li><a href="#">Page 2</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<!--  CAROSEL -->
	<div class="row">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${imag}/img3.jpeg" alt="Image1 " width="1200px"
						height="400px" />
					<div class="carousel-caption">
						<h3>BEST BRAND</h3>
						<p>EXCLUSIVE SALE</p>
					</div>
				</div>
				<!-- item1 -->
				<div class="item">

					<img src="${imag}/img1.jpg" alt="Image" width="1200px" height="600px" />

					<div class="carousel-caption">
						<h3>SPROTS ARENA</h3>
						<p>FOR MENS AND WOMENS</p>
					</div>
				</div>
				<div class="item">
					<img src="${imag}/img4.jpg" alt="Image3 " width="1200" height="400" />
					<div class="carousel-caption">
						<h3>BEST BRAND</h3>
						<p>EXCLUSIVE SALE</p>
					</div>
				</div>
				<div class="item">
					<img src="${imag}/img6.jpg" alt="Image5 " width="1200px" height="600px" />
					<div class="carousel-caption">
						<h3>BEST BRAND</h3>
						<p>EXCLUSIVE SALE</p>
					</div>
				</div>
				<div class="item">
					<img src="${imag}/img5.jpg" alt="Image7 "width="1200px" height="600px" />
					<div class="carousel-caption">
						<h3>BEST BRAND</h3>
						<p>HURRY</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<spring:url value="/resources/core/js/jquery.js" var="JqueryJs"></spring:url>

	<script src="${JqueryJs}"></script>

	<spring:url value="/resources/core/js/bootstrap.min.js"
		var="bootstrapJs"></spring:url>
	<script src="${bootstrapJs}"></script>




</body>
</html>
