<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<br>
<br>
<head>
<style type="text/css">
.txt {
	color: #673AB7;
	text-decoration: none;
}

.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
    border: solid;
    border-color: burlywood;
}

#anchor {
    background-color: #8BC34A;
    
}
</style>

</head>
<section>
<div class="col-sm-12 col-md-10 col-md-offset-1">



	<table class="table table-hover">
		<thead>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th class="text-center">Price</th>
				<th class="text-center">Total</th>
				<th> </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach  items="${cartList}" var="myCart">
				<tr>
					<td class="col-sm-8 col-md-6">
						<div class="media">
							<div class="media-body">
								
								<h3 class="media-heading">
								<a id="anchor" href="#" style="height:5px;width:5px">${myCart.name}</a>
								</h3>
								<span>Status:${myCart.status} </span>
								
							</div>
						</div>
					</td>
					<td class="col-sm-1 col-md-1" style="text-align: center"><input
						type="email" class="form-control" id="exampleInputEmail1"
						value="${myCart.quantity}"></td>
					 <td class="col-sm-1 col-md-1 text-center"><strong>${myCart.price}</strong></td> 
					<td class="col-sm-1 col-md-1 text-center"><strong>${myCart.price}</strong></td>
					<td class="col-sm-1 col-md-1"><a href="remove/${myCart.id}">
						<button type="button" class="btn btn-danger">
							<span class="glyphicon glyphicon-remove"></span> Remove
						</button>
						</a>
					</td>
				</tr>

			</c:forEach>
			<!-- <tr>
							<td class="col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object" src="resources/images/hpnotebook.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a  href="#">HP Notebook 15-ay011nr 15.6-Inch Laptop (6th
												Gen Intel Core i5-6200U Processor, 8GB DDR3L SDRAM, 1TB HDD,
												Windows 10), Silver</a>
										</h4>
										<h5 class="media-heading">
											by <a href="#">HP</a>
										</h5>
										<span>Status: </span><span class="text-warning"><strong>Leaves
												warehouse in 2 - 3 weeks</strong></span>
									</div>
								</div>
							</td>
							<td class="col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="2"></td>
							<td class="col-md-1 text-center"><strong>$525</strong></td>
							<td class="col-md-1 text-center"><strong>$1050</strong></td>
							<td class="col-md-1">
								<button type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remove
								</button>
							</td>
						</tr> -->
		</tbody>
		<tfoot>
			<tr>
				<td> </td>
				<td> </td>
				<td> </td>
				<td><h5>
						Subtotal<br>Estimated shipping
					</h5>
					<h3>Total</h3></td>
				<td class="text-right">
					<h3>Rs:${totalAmount}</h3></td>
			</tr>
			<tr>
				<td> </td>
				<td> </td>
				<td> </td>
				<td><a href="<c:url value= '/'/>">
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-shopping-cart"></span> Continue
							Shopping
						</button>
				</a></td>
				<td><a href="<c:url value= '/CheckoutPage'/>"><button type="button"
							class="btn btn-success">
							Checkout <span class="glyphicon glyphicon-play"></span>
						</button></a></td>
			</tr>
		</tfoot>
	</table>
</div>
</section>


