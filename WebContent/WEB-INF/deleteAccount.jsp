<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>

<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Warning!!!!!!! <% out.print(student.getFirstName()); %></h1>
			<p>You are about to delete your account!!!!!!!!!!!!!!!!!. </p>
		</div>
	</div>


<head>

	<meta charset="ISO-8859-1">
	<title>Delete Account</title>
		<link rel="stylesheet" type="text/css" href="./styles/styles.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>

<br>

<body>

<!--  print it out directly and also off er to print a hard copy -->
<!--  check account balance and if any is left then a check will be sent to your last residence on file  -->

<br>
	<form action="PrintProfileServlet" method="post">
	
		<h2>To print out your Profile and account details before deletion........</h2>
		
		<button type="submit" class="btn btn-default">Submit for Print out</button>	
		
	</form>
	
<br>		

<br>
	
		<h2>To delete your account submit..........................</h2>
		
		<a href="finalWarning.jsp">Submit for Deletion of Account</a>
		
	</form>
	
<br>	


		<footer>
<br>			
			To Return Without Deleting...................
			<a href="selectionPage.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>

</body>


</html>