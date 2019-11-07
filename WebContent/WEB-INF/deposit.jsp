<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
 <%@ page import="com.user.Student" %>
       
    
    
<!DOCTYPE html>
<html>


<head>

		<meta charset="ISO-8859-1">
		<title>Register Deposit</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
			
</head>

<br>

<body>

	<form class="container" action="DepositServlet" method="post">
<br>	
	<h2>Cash Deposit Info.............</h2>
	
		<div class="form-group">
			<label for="cashDeposit"> Cash Deposit </label>
			<input type="text" class="form-control" name="cashDeposit" id="cashDeposit" placeholder="Cash Deposit Amount">
		</div>
<br>
		
	<h2>Check 1 Deposit Info....................................</h2>
	
		<div class="form-group">
			<label for="checkNum1"> Check Deposit Number1 </label>
			<input type="text" class="form-control" name="checkNum1" id="checkNum1" placeholder="Check Number1">
		</div>

		<div class="form-group">
			<label for="checkDeposit1">Check Deposit Amount1</label>
			<input type="text" class="form-control" name="checkDeposit1" id="checkDeposit1" placeholder="Dollars">
		</div>
<br>

	<h2>Check 2 Deposit Info....................................</h2>
		
		<div class="form-group">
			<label for="checkNum2"> Check Deposit Number1 </label>
			<input type="text" class="form-control" name="checkNum2" id="checkNum2" placeholder="Check Number2">
		</div>

		<div class="form-group">
			<label for="checkDeposit2">Check Deposit Amount</label>
			<input type="text" class="form-control" name="checkDeposit2" id="checkDeposit2" placeholder="Dollars">
		</div>
 <br> 
 
	<h2>Check 3 Deposit Info....................................</h2> 
	
   		<div class="form-group">
			<label for="checkNum3"> Check Deposit Number2 </label>
			<input type="text" class="form-control" name="checkNum3" id="checkNum3" placeholder="Check Number3">
		</div>

		<div class="form-group">
			<label for="checkDeposit3">Check Deposit Amount</label>
			<input type="text" class="form-control" name="checkDeposit3" id="checkDeposit3" placeholder="Dollars">
		</div>
   		
<br>

		<label for="submit">Register Account Changes</label>				
		<button type="submit">Submit</button>

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
		<footer>
<br>			
			To Return Without Depositing...................
			<a href="selectionPage.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>		
		

</body>


</html>