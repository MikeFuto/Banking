<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
 <%@ page import="com.user.Student" %>
        
    
<!DOCTYPE html>
<html>


<head>

		<meta charset="ISO-8859-1">
		<title>View Transactions</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
</head>

<br>

<body>
<br>
	<form action="PrintLastServlet" method="post">
	
		<h2>To display the previous transaction.......................</h2>
		
		<button type="submit" class="btn btn-default">Submit</button>	
		
	</form>
	
<br>	

	<form action="PrintManyServlet" method="post">
	
		<h2>To display a specified number of transactions.............</h2>
	
		<input type="text" class="form-control" name="numberTransactions" id="numberTransactions" placeholder="Number of Transactions">
		
		<button type="submit" class="btn btn-default">Create Report</button>
			
	</form>
	
<br>

	<form action="PrintMonthServlet" method="post">
	
		<h2>To display previous transactions.................</h2>
	 <p>
 	 	<label for="trip-start">Start transaction date: </label>
		<input type="date" id="trip-start" name="trip-start" value="yyyy-mm-dd" min="2018-01-01" max="2018-12-31">	
  	</p>	
		
	<p>
 	 	<label for="trip-end">End transaction date: </label>
		<input type="date" id="trip-end" name="trip-end" value="yyyy-mm-dd" min="2018-01-01" max="2018-12-31">	
  	</p>		
		
		<button type="submit">Create Report</button>	
	
	</form>
<br>
	
=======================================================================================================		
		<!-- insert table of transaction data here -->	
		
 			<!--  transaction action object definition of 7 pieces/transaction-->
 			<!--  date, time, type, dollarAmount, checkNumber, destinationAccount, destinationRouting  -->
 			<!--  type: cashWithdrawal, cashDeposit, checkDeposit, checkWithdrwal   -->
 <form>				<!-- insert table of transaction data here -->	
 		
 	<br>			


	<c:if test="${courses !=null}">
		<table>
		<tr>
			<th>Transx Date	 </th>
			<th>_____</th>
			<th>Transx Time	 </th>
			<th>_____</th>
			<th>Transx Type	 </th>
			<th>_____</th>
			<th>$ Amount  	 </th>
			<th>_____</th>
			<th>Check Number </th>
			<th>_____</th>
			<th>Account Num  </th>
			<th>_____</th>
			<th>Routing Num  </th>
		</tr>	
			
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>	

		<tr>
			<td> <c:out value="${date}"/> </td> 
			<th> </th>
			<td> <c:out value="${time}"/> </td> 
			<th> </th>
			<td> <c:out value="${'type'}"/> </td>
			<th> </th>
			<td> <c:out value="${'Amount'}"/> </td>
			<th> </th>
			<td> <c:out value="${'checkNum'}"/> </td>
			<th> </th>
			<td> <c:out value="${'AccountNum'}"/> </td>
			<th> </th>
			<td> <c:out value="${'RoutingNum'}"/> </td>
		</tr>

		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>	
		</table>
	
	</c:if>
	
<br>	
	</form>			
 				
=======================================================================================================			
		
<br>			
		<footer>
<br>			
			To Return to the Services Selection page...................
			<a href="selectionPage.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>
	
</body>


</html>