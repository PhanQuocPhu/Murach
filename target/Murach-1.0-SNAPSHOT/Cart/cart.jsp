<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Cart Assignment</title>
		<link rel="stylesheet" href="<c:url value = "/Download/styles/main.css"/>" type="text/css"/>
		<link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


	</head>
	<body style="width: 100%">
		<div class="container justify-content-center">
			<br>
			<div class="card">
				<div class="card-header">
					<h3>Cart Detail</h3>
				</div>
				<!-- /.card-header -->
				<div class="card-body p-0">
					<table class="table table-borderless border-0">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Quantity</th>
								<th scope="col">Description</th>
								<th scope="col">Price</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cart" items="${cart}">
								<tr>
									<td><c:out value='${cart.id}'/></td>
									<td>
										<form action="${pageContext.request.contextPath}/cart/update" method="post">
											<input type="hidden" name="cartid"
												   value="<c:out value='${cart.id}'/>">
											<input type=text name="quantity"
												   value="<c:out value='${cart.quantity}'/>" id="quantity">
											<input type="submit" class="btn btn-primary" value="Update">
										</form>
									</td>
									<td><c:out value='${cart.productByProductid.description}'/></td>
									<td>${cart.productByProductid.price}</td>
									<td>${cart.productByProductid.price * cart.quantity}</td>
									<td>
										<form action="${pageContext.request.contextPath}/cart/delete" method="post">
											<input type="hidden" name="cartid"
												   value="<c:out value='${cart.id}'/>">
											<input type="submit" class="btn btn-danger" value="Remove Item">
										</form>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td>
									<form action="${pageContext.request.contextPath}/cart" method="get">
										<input type="submit" class="btn btn-success" value="Continue Shopping">
									</form>
								</td>
								<td>
									<form action="${pageContext.request.contextPath}/cart/checkout" method="get">
										<input type="submit" class="btn btn-warning" value="Checkout">
									</form>
								</td>
								<td>

								</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>

				</div>
				<!-- /.card-body -->
				<div class="card-footer">
					<div class="row justify-content-center">
						<a class="btn btn-danger col-sm-6" href="/"> Home</a>
					</div>
				</div>
			</div>
		</div>
	</body>
	<footer>
		<script src="<c:url value = "/asset/swiper-Swiper4/dist/js/swiper.min.js"/>"></script>
		<script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.bundle.js"/>"></script>
		<script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.min.js"/>"></script>
	</footer>
</html>