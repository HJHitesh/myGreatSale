<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss"></spring:url>

<link href="${bootstrapCss}" rel="stylesheet">



<style>
.carousel-inner img {
	width: 80%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>
</head>
	<body>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="https://placehold.it/1200x400?text=IMAGE" alt="Image">
					<div class="carousel-caption">
						<h3>Sell $</h3>
						<p>Money Money.</p>
					</div>
				</div>

				<div class="item">
					<img src="https://placehold.it/1200x400?text=Another Image Maybe"
						alt="Image">
					<div class="carousel-caption">
						<h3>More Sell $</h3>
						<p>Lorem ipsum...</p>
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
	
		<spring:url value="/resources/core/js/jquery.js" var="JqueryJs"></spring:url>

		<script src="${JqueryJs}"></script>

		<spring:url value="/resources/core/js/bootstrap.min.js"
			var="bootstrapJs"></spring:url>
		<script src="${bootstrapJs}"></script>



	</body>
</div>

</html>