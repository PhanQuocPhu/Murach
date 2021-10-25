<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<c:url value = "/Email/style/main.css"/>">
		<link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
		<title>Murach Email - Group 9 - Thursday afternoon</title>
	</head>
	<body>
		<div class="container align-content-center">
			<br>
			<div class="card">
				<div class="card-header">
					<h1 class=" text-center">Join our Email</h1>
				</div>
				<form action="emailList" method="POST">
					<div class="card-body">
						<p>To join our email list, enter your name and email address bellow.</p>
						<p><i>${message}</i></p>

						<input type="hidden" name="action" value="add">

						<label>Email: </label>
						<input type="email" name="email" value="${user.email}" required><br>

						<label>First Name: </label>
						<input type="text" name="firstName" value="${user.firstName}" required><br>

						<label>Last Name: </label>
						<input type="text" name="lastName" value="${user.lastName}" required><br>
						<br>
						<input class="btn btn-success" type="submit" value="Join Now" id="submit" required>
					</div>
				</form>
				<div class="card-footer">
					<div class="row justify-content-center">
						<a class="btn btn-danger col-sm-6" href="/"> Home</a>
					</div>
				</div>

			</div>

		</div>

	</body>
	<footer>
		<script src="${pageContext.request.contextPath}/asset/bootstrap-4.6.0/js/bootstrap.bundle.js"></script>
		<script src="${pageContext.request.contextPath}/asset/bootstrap-4.6.0/js/bootstrap.min.js"></script>
	</footer>
</html>