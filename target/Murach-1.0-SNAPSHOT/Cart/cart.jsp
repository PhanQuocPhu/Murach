<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Cart</title>
		<link rel="stylesheet" href="styles/main.css" type="text/css"/>
	</head>
	<body>

		<h1>Your cart</h1>

		<table>
			<tr>
				<th>Quantity</th>
				<th>Description</th>
				<th>Price</th>
				<th>Amount</th>
				<th></th>
			</tr>
			<c:forEach var="cart" items="${cart}">
				<tr>
					<td>
						<form action="${pageContext.request.contextPath}/cart/update" method="post">
							<input type="hidden" name="cartid"
								   value="<c:out value='${cart.id}'/>">
							<input type=text name="quantity"
								   value="<c:out value='${cart.quantity}'/>" id="quantity">
							<input type="submit" value="Update">
						</form>
					</td>
					<td><c:out value='${cart.productByProductid.description}'/></td>
					<td>${cart.productByProductid.price}</td>
						<%--<td>${cart.totalCurrencyFormat}</td>--%>
					<td>
						<form action="${pageContext.request.contextPath}/cart/delete" method="post">
							<input type="hidden" name="cartid"
								   value="<c:out value='${cart.id}'/>">
							<input type="submit" value="Remove Item">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>

		<p><b>To change the quantity</b>, enter the new quantity
			and click on the Update button.</p>

		<form action="${pageContext.request.contextPath}/cart" method="get">
			<input type="submit" value="Continue Shopping">
		</form>

		<form action="${pageContext.request.contextPath}/cart/checkout" method="get">
			<input type="submit" value="Checkout">
		</form>

	</body>
</html>