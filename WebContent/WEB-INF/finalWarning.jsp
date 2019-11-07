<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>


<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Warning!!!!!!! <% out.print("Warning!!!!!"); %></h1>
			<p>You are about to delete your account!!!!!!!!!!!!!!!!!. </p>
		</div>
	</div>


<head>
		<meta charset="ISO-8859-1">
		<title>Final Warning</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>



<body>

<br>
	<form action="PrintProfileServlet" method="post">
	
		<h2>To delete your account submit..........................</h2>
			
		<button type="submit" class="btn btn-default">Submit for deletion</button>	
		
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