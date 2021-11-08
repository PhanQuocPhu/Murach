<jsp:useBean id="user" scope="request" type="Email.bussiness.User"/>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

		<link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">
	</head>
	<style>
        .bd-navbar {
            padding: 0.75rem 0;
            background-color: #7952b3;
        }

        .swiper-container {
            width: 100%;
            padding-top: 50px;
        }

        .swiper-slide {
            background-position: center;
            background-size: cover;
            width: 300px;
            height: 500px;
        }

        .img-card {
            width: 296px;
            height: 350px;
        }

        img {
            width: 100%;
            height: auto;
        }
	</style>
	<body style="background: none">
		<header class="navbar navbar-expand-md navbar-dark bd-navbar">
			<nav class="container-xl flex-wrap flex-md-nowrap">
				<!-- Brand -->
				<a class="navbar-brand" href="/">
					<img class="mb-2" src="${pageContext.request.contextPath}/asset/pyro_200.png"
						 style="width: 20%; height: 2	0%" alt="">
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
				<div style="background: white;border-style: outset;">

					<div class="container row align-content-center">
						<div class="col-md-3"></div>
						<div class="card" style="width: 50%">
							<div class="card-header">
								<h3 class=" text-center">Thanks for joining our email list</h3>
							</div>
							<div class="card-body">
								<p>Here is the information that you entered:</p>
								<p>Email: <span>${user.email}</span></p>
								<p>First Name: <span>${user.firstName}</span></p>
								<p>Last Name: <span>${user.lastName}</span></p>
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
									<button class="btn btn-primary" type="submit" name="action" value="join"
											id="submit"> Back
									</button>
								</form>
							</div>
							<div class="card-footer">
								<div class="row justify-content-center">
									<a class="btn btn-danger col-sm-6" href="/"> Home</a>
								</div>
							</div>
						</div>
						<div class="col-md-3"></div>

					</div>
				</div>
			</div>
		</div>
	</body>
	<footer>
		<script src="<c:url value = "/asset/swiper-Swiper4/dist/js/swiper.min.js"/>"></script>
		<script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.bundle.js"/>"></script>
		<script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.min.js"/>"></script>
		<!-- Initialize Swiper -->
		<script>
            var swiper = new Swiper('.swiper-container', {
                effect: 'coverflow',
                grabCursor: true,
                centeredSlides: true,
                slidesPerView: 'auto',
                coverflowEffect: {
                    rotate: 50,
                    stretch: 0,
                    depth: 100,
                    modifier: 1,
                    slideShadows: true,
                },
                pagination: {
                    el: '.swiper-pagination',
                },
            });
		</script>
	</footer>
</html>
