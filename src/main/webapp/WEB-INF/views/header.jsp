<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<spring:url value="/"></spring:url>">Yaruis</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a
						href="<spring:url value="/admin/gotologin"></spring:url>">Products</a></li>
				
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<c:forEach var="catVal" items="${catList }">
									<li><a
										href="${pageContext.request.contextPath}/productcustList?cid=${catVal.cid }">${catVal.name }</a>
									</li>
								</c:forEach>
							</ul>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<spring:url value="/gotologin"></spring:url>">Admin</a></li>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="<spring:url value="/register"></spring:url>">Register</a></li>
					</ul>
			</div>
		</div>
	</nav>





	</div>

	</nav>

</body>
</html>







