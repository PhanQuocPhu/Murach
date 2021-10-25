<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Cookie</title>
        <link rel="stylesheet" href="<c:url value = "/Download/styles/main.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


    </head>
    <body style="width: 100%">
        <div class="container justify-content-center">
            <br>
            <div class="card">
                <div class="card-header">
                    <h3>All Cookies</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body p-0">
                    <table class="table table-borderless border-0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Value</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${cookie}">
                                <tr>
                                    <td><c:out value='${c.value.name}'/></td>
                                    <td><c:out value='${c.value.value}'/></td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td><a class="btn btn-primary" href="download?action=viewAlbums">View list of albums</a></td>
                                <td><a class="btn btn-danger" href="download?action=deleteCookies">Delete all persistent cookies</a></td>
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