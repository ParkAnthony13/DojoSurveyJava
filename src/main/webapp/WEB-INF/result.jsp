<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container">
			<div class="m-5" style="outline: 2px solid black;">
				<h3 style="outline-bottom: 1px solid black;">Submitted Info</h3>
				<div class="d-flex flex-row">
					<div class="d-flex flex-column m-2">
						<p>Name: </p>
						<p>Dojo Location: </p>
						<p>Favorite Language: </p>
						<p>Comment: </p>
					</div>
					<div class="d-flex flex-column m-2">
						<p><c:out value="${resultName}"/></p>
						<p><c:out value="${resultLocation}"/></p>
						<p><c:out value="${resultLanguage}"/></p>
						<p><c:out value="${resultComment}"/></p>
					</div>
				</div>
			</div>
		</div>
		
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
	</body>
</html>