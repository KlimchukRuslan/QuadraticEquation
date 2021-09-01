<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Ruslan Klimchuk">

	<title>Quadratic equation</title>
	<style>
		<%@include file='/WEB-INF/css/bootstrap.css' %>
		<%@include file='/WEB-INF/css/signin.css' %>
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

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>

<body style="padding-top: 10px;">

<div class="container">

		<h2 style="text-align: center;" class="form-signin-heading">${message}</h2>

		<form:form method="post"  modelAttribute="Coefficients">

			<div class="form-group" style=" text-align: -webkit-center;">
				<label>a</label>
				<form:input type="number"  step="0.1" cssStyle="width: 150px; text-align: center" class="form-control" path="a" />
			</div>

			<div class="form-group" style=" text-align: -webkit-center;">
				<label>b</label>
				<form:input type="number" step="0.1" cssStyle="width: 150px; text-align: center" class="form-control" path="b" />
			</div>

			<div class="form-group" style=" text-align: -webkit-center;">
				<label>c</label>
				<form:input type="number" step="0.1" cssStyle="width: 150px; text-align: center" class="form-control" path="c" />
			</div>

			<p style="text-align: -webkit-center">
				<button style="width: 200px"  class="btn btn-lg btn-primary btn-block"  type="submit">Submit</button>
			</p>
		</form:form>

	<h4 style="text-align: center;" class="form-signin-heading">history</h4>

	<c:if test="${!empty listCof}">
	<table class="table table-striped">
		<thead>
			<th>ID</th>
			<th>a</th>
			<th>b</th>
			<th>c</th>
			<th>Результат:</th>
		</thead>
		<c:forEach items="${listCof}" var="cof">
			<tr>
				<td>${cof.id}</td>
				<td>${cof.a}</td>
				<td>${cof.b}</td>
				<td>${cof.c}</td>
				<td style="width: 50%" >${cof.result}</td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</div>
</body>
</html>
