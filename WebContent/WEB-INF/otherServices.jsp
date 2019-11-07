<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>


<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>

<br>

<body>
	<h2>Other Account Services .....................</h2>
<br>
	<form action="OrderServicesServlet" method="post">
<br>	
		<input type="checkbox" name="overDraft" value="overDraft" id="woverDraft" class="overDraft" />
		<lable for="overDraft">Y</lable>
<br>	
		<input type="checkbox" name="orderChecks" value="orderCheck" id="worderCheck" class="orderCheck" />
		<lable for="orderCheck">Y</lable>
<br>		
		<input type="checkbox" name="orderDebit" value="orderDebit" id="orderDebit" class="orderDebit" />
		<lable for="orderDebit">Y</lable>
<br>			
		<input type="checkbox" name="orderCredit" value="orderCredit" id="orderCredit" class="orderCredit" />
		<lable for="orderCredit">Y</lable>
<br>
		<button type="submit" class="btn btn-default">Submit to Place Orders</button>	
<br>		
	</form>

<br>
	<form action="PrintProfileServlet" method="post">
	
		<h2>Your Profile data summary.....................</h2>
		
		<button type="submit" class="btn btn-default">Submit for Print out</button>	
		
		<!--  perhaps create a table here for viewing account balances and OD preferences  -->
		
	</form>

<br>
	<form action="PrintAccountServlet" method="post">
	
		<h2>This Account data summary.....................</h2>
		
		<button type="submit" class="btn btn-default">Submit for Print out</button>	
		
		<!--  perhaps create a table here for viewing account balances and OD preferences  -->
		
	</form>
	
<br>	
<br>
		<footer>
<br>			
			To Return Without Printing Profile...................
			<a href="selectionPage.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>		

</body>
</html>