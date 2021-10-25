<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration</title>
        <link rel="stylesheet" href="<c:url value = "/Download/styles/main.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


    </head>
    <body style="width: 100%">
        <div class="container justify-content-center">
            <br>
            <div class="card">
                <div class="card-header">
                    <h3>Download registration</h3>
                    <p>To register for our downloads, enter your name and email
                        address below. Then, click on the Submit button.</p>
                </div>
                <!-- /.card-header -->
                <div class="card-body p-0">
                    <form action="download" method="post">
                        <input type="hidden" name="action" value="registerUser">
                        <label class="pad_top">Email:</label>
                        <input type="email" name="email" value="<c:out value='${user.email}'/>"><br>
                        <label class="pad_top">First Name:</label>
                        <input type="text" name="firstName" value="<c:out value='${user.firstName}'/>"><br>
                        <label class="pad_top">Last Name:</label>
                        <input type="text" name="lastName" value="<c:out value='${user.lastName}'/>"><br>
                        <label>&nbsp;</label>
                        <input type="submit" value="Register" class="margin_left">
                    </form>
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
