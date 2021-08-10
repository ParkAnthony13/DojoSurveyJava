<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container d-flex">
			<div class="survey m-5" style="outline: 2px solid black;">
				<form method="POST" action="/submit">
					<div class="d-flex flex-row m-2">
						<div class="d-flex flex-column m-2">
							<label>Your Name: </label>
							<label>Dojo Location: </label>
							<label>Favorite Language: </label>
						</div>
						<div class="d-flex flex-column m-2">
							<input type="text" name="name"/>
							
							<c:out value="${error}"/>
							
							<select name="location">
								<option value="San Jose">San Jose</option>
								<option value="Burbank">Burbank</option>
							</select>
							<select name="language">
								<option value="Python">Python</option>
								<option value="Java">Java</option>
							</select>
						</div>					
					</div>
					<div class="d-flex flex-column m-2">
						<label>Comment (optional):</label>
						<textarea name="comment" cols="30" rows="5"></textarea>
							<c:out value="${error2}"/>
					</div>
					<div class="d-flex flex-row-reverse">
						<button class="btn btn-primary m-2">Submit</button>
					</div>
				</form>
			</div>
		</div>
		
		<script src="/webjars/jquery/jquery.min.js"></script>
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
	</body>
</html>