<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="cd" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yaruis</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
  <style>
    .footer-social { float: right; margin-top:5px;}
    .footer-social li { display: inline;}
    .footer-social span { margin-top: -20px;}
  .navbar {
  background-color: #000000;
  
  }
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #000000;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
	
	#footerline {
    width: 100%;
    overflow: hidden;
    margin: 5px auto 10px auto;
    text-align: center;


  </style>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<spring:url value="/resources/img1.jpg/"></spring:url>" alt="Iphone7">
        <div class="carousel-caption">
          <h1>iPhone 7</h1>
          <h2> Cases Available Now</h2>
        </div>
      </div>

      
	  
	   <div class="item">
        <img src="<spring:url value="/resources/img2.jpg/"></spring:url>" alt="Image">
        <div class="carousel-caption">
		
          <h1>Honor 8</h1>
          <h2> Pre order your Skin today!</h2>
        </div>
      </div>
	  
	  
	  <div class="item">
        <img src="<spring:url value="/resources/img3.jpg/"></spring:url>" alt="Image">
        <div class="carousel-caption">
		
          <h1>One Plus 3</h1>
          <h2>Skins!</h2>
        </div>
      </div>
	  
	  
	  
	  
	  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<jsp:include page="/WEB-INF/views/footer.jsp" ></jsp:include>
</body>
</html>


