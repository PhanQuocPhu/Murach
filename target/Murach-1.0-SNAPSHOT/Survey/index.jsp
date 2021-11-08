<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Take a Survey</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			  crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
				integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
				crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
				integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
				crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
			  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
			  crossorigin="anonymous">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/Survey/styles/main.css">
		<style>
            .bd-navbar {
                padding: 0.75rem 0;
                background-color: #7952b3;

            }
		</style>
	</head>
	<body style="background: none">
		<header class="navbar navbar-expand-md navbar-dark bd-navbar">
			<nav class="container-xl flex-wrap flex-md-nowrap">
				<!-- Brand -->
				<a class="navbar-brand" href="/">
					<img class="mb-2" src="${pageContext.request.contextPath}/asset/pyro_200.png" style="width: 20%; height: 2	0%" alt="">
				</a>

				<!-- Links -->
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="emailList">Email</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="download">Download</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="cart">Cart</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="survey">Survey</a>
					</li>
				</ul>
			</nav>
		</header>

		<div style="background: whitesmoke; height: 80%; background-position: center; background-size: 90% 130%">
			<div class="container" style="background: none">
				<div class="row">
					<div class="col-md-12" style="background: white;border-style: outset;">
						<div class="card text-center"
							 style="background: white; padding-top: 40px; padding-bottom: 40px">
							<form onsubmit="preventDefault()" action="survey" method="post">
								<h1 style="color: mediumspringgreen"><b>Survey</b></h1>
								<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
								<p style="color: black;font-size: 20px"><b>Your information:</b></p>
								<input type="text" name="firstName" placeholder="FirstName" required="">
								<input type="text" name="lastName" placeholder="LastName" required="">
								<input type="text" name="email" placeholder="Email" required="">
								<p style="color: black; font-size: 20px; padding-top: 10px">
									<b>How did you hear about us?</b>
								</p>
								<div class="text-center justify-content-center row">
									<div class="col-sm-3"></div>
									<div class="justify-content-center col-sm-6 ">
										<select class="form-select" aria-label="Default select example"
												name="heardFrom">
											<option selected value="Search Engine">Search Engine</option>
											<option value="Friend">Word Of Mouth</option>
											<option value="Other">Other</option>
										</select>
									</div>
									<div class="col-sm-3"></div>
								</div>


								<p style="color: black;font-size: 20px; padding-top: 12px"><b>Would you like to
									receive
									announcements about new CDs and special offers?</b></p>
								<p><input type="checkbox" name="wantsUpdates" checked="">Yes, I'd like that.</p>

								<p>Please contact me by:
									<select name="contactVia">
										<option value="Email" selected="">Email only</option>
										<option value="Both">Email or postal mail</option>
										<option value="Postal Mail">Postal mail only</option>
									</select>
								</p>
								<input class="button-17" type="submit" value="Submit">

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>