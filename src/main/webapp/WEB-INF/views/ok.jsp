<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quadratic equation</title>

    <style>
        <%@include file='/WEB-INF/css/bootstrap.css' %>
        <%@include file='/WEB-INF/css/jumbotron-narrow.css' %>
        /*mobile*/
        @media screen and (max-width: 768px) {
            .container{
                width: 100%;
            }
            form{
                width: 100%;
            }
        }
        /* pc */
        @media screen and (min-width: 1240px)  {
            .container{
                width: 450px;
            }
            form{
                width: 400px;
            }
        }
    </style>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="container">
        <div class="jumbotron" style="margin-top: 20px;">
            <p class="lead">Если мы все правильно рассчитали то ответ:</p>
            <p class="lead">${result}</p>
            <p class="lead">
                <a style="margin-bottom: 10px;" class="btn btn-lg btn-success" href="<c:url value="/" />" role="button">Главная</a>
            </p>
        </div>
    </div>
</body>
</html>
