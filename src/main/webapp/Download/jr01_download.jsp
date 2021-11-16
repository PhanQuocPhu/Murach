
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>Download Assignment</title>
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
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
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
                         style="width: 20%; height: 20%" alt="">
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
            <div class="container justify-content-center">
                <br>
                <div class="card">
                    <div class="card-header">
                        <h3>Downloads Joe Rut - Genuine Wood Grained Finish</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">
                        <table class="table table-borderless border-0">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th>Song title</th>
                                    <th>Audio Format</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Filter</td>
                                    <td><a class="btn btn-success" href="/musicStore/sound/${productCode}/filter.mp3">MP3</a></td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>So Long Lazy Ray</td>
                                    <td><a class="btn btn-success" href="/musicStore/sound/${productCode}/so_long.mp3">MP3</a></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-center">
                            <a class="btn btn-primary col-sm-4" href="?action=viewAlbums"> View list of albums</a>
                            <a class="btn btn-primary col-sm-4" href="?action=viewCookies"> View all cookies</a>
                        </div>
                        <br>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <div class="row justify-content-center">
                            <a class="btn btn-danger col-sm-6" href="/"> Home</a>
                        </div>
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



