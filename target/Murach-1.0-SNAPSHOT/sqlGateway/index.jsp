<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Download Assignment</title>
        <link rel="stylesheet" href="<c:url value = "/sqlGateway/styles/main.css"/>" type="text/css"/>
        <link rel="stylesheet" href="<c:url value = "/asset/bootstrap-4.6.0/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value = "/asset/swiper-Swiper4/dist/css/swiper.min.css"/>">


    </head>
    <body style="width: 100%">
        <div class="container justify-content-center">
            <br>
            <c:if test="${sqlStatement == null}">
                <c:set var="sqlStatement" value="select * from User"/>
            </c:if>

            <h1>The SQL Gateway</h1>
            <p>Enter an SQL statement and click the Execute button.</p>

            <p><b>SQL statement:</b></p>
            <form action="sqlGateway" method="post">
                <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
                <input type="submit" value="Execute">
            </form>

            <p><b>SQL result:</b></p>
            ${sqlResult}

            <div class="sqlResult">
                <%@ include file="/sqlGateway/sqlResult.jsp" %>
            </div>
        </div>
    </body>
    <footer>
        <script src="<c:url value = "/asset/swiper-Swiper4/dist/js/swiper.min.js"/>"></script>
        <script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.bundle.js"/>"></script>
        <script src="<c:url value = "/asset/bootstrap-4.6.0/js/bootstrap.min.js"/>"></script>
    </footer>
</html>
