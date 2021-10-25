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
					<h3 class="float-left">CD list</h3>
					<a class="btn btn-success float-right" href="${pageContext.request.contextPath}/cart/detail">Check Cart</a>
				</div>
				<!-- /.card-header -->
				<div class="card-body p-0">
					<table class="table table-borderless border-0">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Description</th>
								<th scope="col">Price</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<tr>
									<td><c:out value='${product.id}'/></td>
									<td><c:out value='${product.description}'/></td>
									<td class="right">${product.price}</td>
									<td>
										<form action="${pageContext.request.contextPath}/cart/add" method="post">
											<input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
											<input type="hidden" name="proid" value="<c:out value='${product.id}'/>">
											<input type="hidden" name="quantity" value="1">
											<input type="submit" class="btn btn-primary" value="Add To Cart">
										</form>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>
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