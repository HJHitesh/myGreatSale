<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CUstom Css For the Nav bar -->

<jsp:include page="Linking.jsp"></jsp:include>

<spring:url value="/resources/core/css/Custom1.css" var="Custom1"></spring:url>
<link href="${Custom1}" rel="stylesheet">

<!-- Images Connector -->
<spring:url value="/resources/images/" var="imag"></spring:url>


</head>

	<!---NAV BAR-->
	<div class="row">
		<nav class="navbar navbar-inverse">
				<ul class="nav navbar-nav">

					<li class="active"><a href="#">Home</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Our Info<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Contact us</a></li>
							<li><a href="#">History</a></li>
						</ul></li>

					<li><a href="CategoryMens">Mens</a></li>

					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Women <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Women Collection</li>
									<div id="womenCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
													€</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
													€</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
													€</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->

										<a class="left carousel-control" 
											href="#womenCollection" role="button" data-slide="prev">
											<span class="glyphicon glyphicon-chevron-left"
											aria-hidden="true"></span> <span class="sr-only">Previous</span>
										</a> <a class="right carousel-control"  href="
											#womenCollection"
												role="button"
											data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->

									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
					<li><a href="CategoryKids">Kids</a></li>
					<li><a href="CategoryKids">Accessories</a></li>
				</ul>
				<!--  	<ul class="nav navbar-nav navbar-right">
						<li><a href="Signup"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul> -->
			
		</nav>
	</div>

	</body>
</html>