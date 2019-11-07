<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
 <%@ page import="com.user.User" %>
  
    
<!DOCTYPE html>
<html>


<head>
		<meta charset="ISO-8859-1">
		<title>Withdrawal</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			
</head>

<br>

<body>

 <br>
	<form class="container" action="DepositServlet" method="post">
 <br>	
	<h2>Cash Withdrawal Info......................................</h2>
 <br>	
		<div class="form-group">
			<label for="cashWithdrawal"> Cash Withdrawal </label>
			<input type="text" class="form-control" name="cashWithdrawal" id="cashWithdrawal" placeholder="Cash Withdrawal Amount">
		</div>
<br>
		
	<h2>Transfer to Another Account of Yours at this Bank ........</h2>
 <br>	
		<div class="form-group">
			<label for="checkNum1"> Check Number </label>
			<input type="text" class="form-control" name="checkNum1" id="checkNum1" placeholder="Check Number">
		</div>
 <br>
		<div class="form-group">
			<label for="checkWithdrawal1">Check Deposit Amount</label>
			<input type="text" class="form-control" name="checkWithdrawal1" id="checkWithdrawal1" placeholder="Dollar Amount">
		</div>
 <br>		
		<div class="form-group">
			<label for="destinationAccount1">Destination Account#</label>
			<input type="text" class="form-control" name="destinationAccount1" id="destinationAccount1" placeholder="Account# to send to">
		</div>
<br>

	<h2>Transfers to Another Outside Account........................</h2>
 <br>		
		<div class="form-group">
			<label for="checkNum2"> Check Deposit Number </label>
			<input type="text" class="form-control" name="checkNum2" id="checkNum2" placeholder="Check Number">
		</div>
 <br>
		<div class="form-group">
			<label for="checkWithdrawal2">Check Deposit Amount</label>
			<input type="text" class="form-control" name="checkWithdrawal2" id="checkWithdrawal2" placeholder="Dollar Amount">
		</div>
 <br>		
		<div class="form-group">
			<label for="destinationAccount2">Destination Account#</label>
			<input type="text" class="form-control" name="destinationAccount2" id="destinationAccountNum2" placeholder="Destination Account#">
		</div>
 <br>		
		<div class="form-group">
			<label for="destinationRoutingNum2">Destination Routing#</label>
			<input type="text" class="form-control" name="destinationRoutingNum2" id="destinationRoutingNum2" placeholder=" Destination Routing#">
		</div>
 <br> 
 	</form>
 <br> 
 
 =======================================================================================================	
 	
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
 					
<br>		
		<footer>
<br>			
			To Return Without Withdrawing or Transferring...................
			<a href="selectionPage.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>


</body>
</html>