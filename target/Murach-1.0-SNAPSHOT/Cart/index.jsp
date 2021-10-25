<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Cart - Group 9</title>
		<link rel="stylesheet" href="styles/main.css" type="text/css"/>
	</head>
	<body>

		<h1>CD list</h1>


		<table>
			<tr>
				<th>Description</th>
				<th class="right">Price</th>
				<th>&nbsp;</th>
			</tr>

			<c:forEach var="product" items="${products}">
				<tr>
					<td><c:out value='${product.description}'/></td>
					<td class="right">${product.price}</td>
					<td>
						<form action="${pageContext.request.contextPath}/cart/add" method="post">
							<input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
							<input type="hidden" name="proid" value="<c:out value='${product.id}'/>">
							<input type="hidden" name="quantity" value="1">
							<input type="submit" value="Add To Cart">
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>

	</body>
</html>