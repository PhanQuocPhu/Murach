<jsp:useBean id="user" scope="request" type="Email.bussiness.User"/>
<%@page contentType="text/html" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Murach's Java Servlets and JSP</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Email/style/main.css" type="text/css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/asset/bootstrap-4.6.0/css/bootstrap.min.css">
	</head>

	<body>
		<div class="container align-content-center">
			<br>
			<div class="card">
				<div class="card-header">
					<h3 class=" text-center">Thanks for joining our email list</h3>
				</div>
				<div class="card-body">
					<p>Here is the information that you entered:</p>

					<label>Email:</label>
					<span>${user.email}</span><br>
					<label>First Name:</label>
					<span>${user.firstName}</span><br>
					<label>Last Name:</label>
					<span>${user.lastName}</span><br>
					<p>This email address was added to our list on ${requestScope.currentDate}</p>


					<p>
						The first address on our list is ${sessionScope.users[0].email}<br>
						The second address on our list is ${sessionScope.users[1].email}
					</p>

					<p>For customer service, contact ${initParam.custServEmail}</p>

					<p>To enter another email address, click on the Back
						button in your browser or the Return button shown
						below.</p>

					<form action="emailList" method="post">
						<button class="btn btn-primary" type="submit" name="action" value="join" id="submit"> Back</button>
					</form>
				</div>
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