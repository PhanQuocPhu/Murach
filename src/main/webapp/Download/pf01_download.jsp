<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Download Assignment</title>
        <link rel="stylesheet" href="<c:url value = "/Download/styles/main.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


    </head>
    <body style="width: 100%">
        <div class="container justify-content-center">
            <br>
            <div class="card">
                <div class="card-header">
                    <h3>Downloads Paddlefoot - The First CD</h3>
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
                                <td>64 Corvair</td>
                                <td><a class="btn btn-success" href="/musicStore/sound/${productCode}/corvair.mp3">MP3</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Whiskey Before Breakfast</td>
                                <td><a class="btn btn-success" href="/musicStore/sound/${productCode}/whiskey.mp3">MP3</a></td>
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
    </body>
    <footer>
        <script src="<c:url value = "/asset/swiper-Swiper4/dist/js/swiper.min.js"/>"></script>
        <script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.bundle.js"/>"></script>
        <script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.min.js"/>"></script>
    </footer>
</html>


