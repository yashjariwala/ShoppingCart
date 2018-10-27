<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductDetails</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
rel="stylesheet">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
            <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="container">

<h4><img alt="" src="${pageContext.request.contextPath}/resources/cart.jpg"> &nbsp; YOUR CART  </h4>
<h1>Your product is successfully added to the cart.</h1>
<br>

<a href="${pageContext.request.contextPath}/checkout" class="btn btn-success btn-block">Checkout
<i class="fa fa-angle-right"></i>
</a>

<div><br/><br/><br/></div>
</div>
</body>
</html>