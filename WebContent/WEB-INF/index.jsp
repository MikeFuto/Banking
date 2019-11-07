<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
    
<!DOCTYPE html>
<html>



<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, <% out.print("Welcome "); %></h1>
			<p>Please log into your account or create a new userId from this page. </p>
		</div>
	</div>




<head>

	<meta charset="ISO-8859-1">
	<title>Log In for Pannonia Express</title>
		<link rel="stylesheet" type="text/css" href="./styles/styles.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<br>

<body>

	<form class="container" action="Login2Servlet" method="post">

		<h2>Please enter User Id and Password Info.............</h2>
<br>		
		<div class="form-group">
			<label for="userId">User Id</label>
			<input type="text" class="form-control" name="userId" id="userId" placeholder="User Id">
		</div>

	AND

		<div class="form-group">
			<label for="password">Password </label>
			<input type="password" class="form-control" name="password" id="password" placeholder="Password">
		</div>

<br>

		<label for="submit">Submit Login info</label>				
			<button type="submit">Login</button>

	</form>
	
<br>


	<footer>
<br>	
		Click here to create an account and a userId
		<a href="createUser.jsp">Sign up</a>
<br>		
		<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
	</footer>

<br>

</body>

</html>




