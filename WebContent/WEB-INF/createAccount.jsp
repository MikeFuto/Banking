<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>



<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, <% out.print(student.getFirstName()); %></h1>
			<p>Please create or modify and update your account from this page. </p>
		</div>
	</div>


	<head>
	
		<meta charset="ISO-8859-1">
		<title>Account Modification</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
	</head>

<br>

<body>


	<form class="container" action="NewAccountServlet" method="post">
	
<br>
	<h2>Create a New Account an account number will automatically be assigned.............</h2>
<br>
		<div class="form-group">
			<label for="NickName">NickName</label>	
			<input type="text" class="form-control" name="NickName" id="NickName" placeholder="NickName">
		</div>
<br>		
		<div class="form-group">
			<label for="OdStatus">OdStatus</label>
			<input type="text" class="form-control" name="OdStatus" id="OdStatus" placeholder="OdStatus">
		</div>	
<br>		
		<div class="form-group">
			<label for="Other">Other</label>
			<input type="text" class="form-control" name="Other" id="Other" placeholder="Other">
		</div>
<br>
		<label for="submit">Submit New Account</label>				
		<button type="submit">Submit</button>
	
<br>

		<label for="submit">Register Account Changes</label>				
		<button type="submit">Submit</button>

<br>

	</form>
<br>	
		<footer>
			
			To Return Without Creating an Account...................
<br>			
			<a href="index.jsp">Return to Login Menu</a>
<br>			
			<p>&copy; 2019 Green Backs Bank Inc. </p>
		</footer>
<br>	
	
</body>

</html>