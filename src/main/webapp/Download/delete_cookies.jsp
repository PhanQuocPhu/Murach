<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cookie Deleted</title>
        <link rel="stylesheet" href="<c:url value = "/Download/styles/main.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


    </head>
    <body style="width: 100%">
        <div class="container justify-content-center">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center">All persistent cookies have been removed from this browser.</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body p-0">
                    <table class="table table-borderless border-0">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center"><a class="btn btn-primary" href="download?action=viewAlbums">View list of albums</a></td>
                                <td class="text-center"><a class="btn btn-primary" href="?action=viewCookies">View all cookies</a></td>
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

