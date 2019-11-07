<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html>
<html>


<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, <% out.print(user.getFirstName()); %></h1>
			<p>Please Select what you would like to do from here. </p>
		</div>
	</div>


<head>

		<meta charset="ISO-8859-1">
		<title>Select Functionality</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<br>
<br>

<body>

<br>	
	<h2>Choose which Services you would like to render in this account.............</h2>
<br>			
		Click here to deposit into this account
		<a href="deposit.jsp">Make a Deposit</a>	
<br>		
		Click here to withdraw or make a transfer form this account
		<a href="withdrawal.jsp">Transfer or Withdrawal</a>	
<br>							
		Click here to see past transactions for this account
		<a href="transactionReports.jsp">Print Past Transactions</a>	
<br>	
<br>
		Click here to see other customer services for this account
		<a href="otherServices.jsp">Other Services</a>	
<br>
		Click here to update information for this account	
		<a href="updateProfile.jsp">Other Services</a>					
<br>
		Click here to log out from this account	
		<a href="logout.jsp">Other Services</a>			

<br>
					
<br>
	<footer>
<br>		
		Click here to set up or clone another account
		<a href="createAccount.jsp">Create New Account</a>	
<br>	
		<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
	</footer>
<br>

</body>

</html>


