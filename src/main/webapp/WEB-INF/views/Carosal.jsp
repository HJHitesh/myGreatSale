<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">



<!-- Custom CSS FILE -->
<spring:url value="/resources/core/css/Custom.css" var="Custom"></spring:url>
<link href="${Custom}" rel="stylesheet">

<!-- Images Connector -->
<spring:url value="/resources/images/" var="imag"></spring:url>

</head>
<body>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
					<li data-target="#myCarousel" data-slide-to="6"></li>
					<li data-target="#myCarousel" data-slide-to="7"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
				<div class="item active">
						<img src="${imag}/carosal_img.jpg" class="img-responsive" alt="Image8 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>HURRY</p>
						</div>
					</div>
					<div class="item ">
						<img src="${imag}/carosal_img2.jpg" class="img-responsive" alt="Image9 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>EXCLUSIVE SALE</p>
						</div>
					</div>
					<div class="item ">
						<img src="${imag}/carosal_img3.jpg" class="img-responsive" alt="Image10 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>EXCLUSIVE SALE</p>
						</div>
					</div>
					
					<div class="item ">
						<img src="${imag}/img3.jpeg" class="img-responsive" alt="Image1 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>EXCLUSIVE SALE</p>
						</div>
					</div>
					<!-- item1 -->
					<div class="item">
						<img src="${imag}/img1.jpg" class="img-responsive" alt="Image" />
						<div class="carousel-caption">
							<h3>SPROTS ARENA</h3>
							<p>FOR MENS AND WOMENS</p>
						</div>
					</div>
					<div class="item">
						<img src="${imag}/img4.jpg" class="img-responsive" alt="Image3 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>EXCLUSIVE SALE</p>
						</div>
					</div>
					<div class="item">
						<img src="${imag}/img6.jpg" class="img-responsive" alt="Image5 " />
						<div class="carousel-caption">
							<h3>BEST BRAND</h3>
							<p>EXCLUSIVE SALE</p>
						</div>
					</div>
					<div class="item">
						<img src="${imag}/img5.jpg" class="img-responsive" alt="Image7 " />
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
	
	



</body>

</html>