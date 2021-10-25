<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">
		<title>Assignment</title>

	</head>
	<style>
        body {
            background: #fff;
            font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #000;
            margin: 0;
            padding: 0;
        }

        .swiper-container {
            width: 100%;
            padding-top: 50px;
            padding-bottom: 50px;
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
	<body>
		<div class="container">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide card">
						<div class="img-card">
							<img src="<c:url value = "/asset/images/Email-Ex.png"/>" class="card-img-top"
								 alt="Email-List">
						</div>
						<div class="card-body text-center">
							<h5 class="card-title">Email List</h5>
							<a href="emailList" class="btn btn-primary">Go Check out</a>
						</div>
					</div>
					<div class="swiper-slide card">
						<img src="<c:url value = "/asset/images/Download-Ex.png"/>" class="card-img-top" alt="...">
						<div class="card-body text-center">
							<h5 class="card-title">Download</h5>
							<a href="download" class="btn btn-primary">Go Check out</a>
						</div>
					</div>
					<div class="swiper-slide card">
						<img src="" class="card-img-top" alt="...">
						<div class="card-body text-center">
							<h5 class="card-title">Cart</h5>
							<a href="loadProducts" class="btn btn-primary">Go Check out</a>
						</div>
					</div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
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