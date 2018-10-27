<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<%@ page isELIgnored="false" %>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/nav.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Add Page</title>
</head>
<body>
            <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container" >
<hr>
<div class="modal fade bs-example-modal-lg" tabindex="1" role="dialog"
 aria-labelledby="myModal" aria-hidden="true" id="onload">
 
 <div class= "modal-dialog modal-sm">
 <div class="modal-content">
 <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal">Close</button>
 </div>
 <div class="modal-body">
 <span>Added successfully</span>
 </div>
 <div class="modal-footer">
 <a href="home" class="btn btn-info" role="button">Home</a>
 </div>
 
 </div>
 </div>
 </div>
 <script type="text/javascript">
 
 $(document).ready(function()
		 {
	 $('#onload').modal('show');
		 });
 
 </script>
</body>
</html>












