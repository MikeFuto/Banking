<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
 <%@ page import="com.user.User" %>
 
    
<!DOCTYPE html>
<html>

<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, <% out.print("Sign Up Here! "); %></h1>
			<p>Please enter new user information from this page. </p>
		</div>
	</div>


<head>
		<meta charset="ISO-8859-1">
		<title>User creation</title>
			<link rel="stylesheet" type="text/css" href="./styles/styles.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
</head>

<br>
<body>

	<form class="container" action="NewUserServlet" method="post">
<br>
		<h2>User Id, Password, Name, and Phone# Info.............</h2>
<br>		
		<div class="form-group">
			<label for="userId">User Id</label>
			<input type="text" class="form-control" name="userId" id="userId" placeholder="User Id">
		</div>

	<!--  should set up a verification of uniqueness -->

		<div class="form-group">
			<label for="password">Password </label>
			<input type="password" class="form-control" name="password" id="password" placeholder="Password">
		</div>

<br>

		<div class="form-group">
			<label for="firstName">firstName </label>
			<input type="text" class="form-control" name="firstName" id="firstName" placeholder="firstName">
		</div>


		<div class="form-group">
			<label for="lastName">lastName </label>
			<input type="text" class="form-control" name="lastName" id="lastName" placeholder="lastName">
		</div>

		<div class="form-group">
			<label for="phone">phone </label>
			<input type="text" class="form-control" name="phone" id="phone" placeholder="phone">
		</div>

<br>
<h2>Address and Contact Info..............</h2>
<br>
	<div class="form-group">
		<label for="street">Street</label>
		<input type="text" class="form-control" name="street" id="street" placeholder="Street">
	</div>

	<div class="form-group">
		<label for="city">City</label>
		<input type="text" class="form-control" name="city" id="city" placeholder="City">
	</div>

	<div class="form-group">
		<label for="state">State</label>
		<input type="text" class="form-control" name="state" id="state" placeholder="State">
	</div>

	<div class="form-group">
		<label for="zipCode">Zip Code</label>
		<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="ZipCode">
	</div>
	
	<div class="form-group">
		<label for="email">Email address </label>
	<input type="text" class="form-control" name="email" id="Email" placeholder="Email">
	</div>
<br>

<h2>New Account Info..............</h2>
<br>
	<div class="form-group">
		<label for="nickName">Nick Name or Identifying Tag?</label>
		<input type="text" class="form-control" name="nickName" id="nickName" placeholder="Personal, Business etc.">
	</div>

	<div class="form-group">
		<label for="odStatus">Overdraft protection?</label>
		<input type="text" class="form-control" name="odStatus" id="odStatus" placeholder="Yes or No">
	</div>
<br>
		<label for="submit">Submit New User </label>				
			<button type="submit">Submit</button>

<br>

	</form>

=======================================================================================================	
<!-- insert table of transaction data here -->	

 <!--       <c:if test="${courses !=null}">		-->

	<table>	<!--  add table of selected courses and teachers and times and rooms -->


			<th>Course Name  </th>
		<tr>
			<th>First Name   </th>
			<th>_____</th>
			<th>Last name    </th>
			<th>_____</th>
			<th>email        </th>
			<th>_____</th>
			<th>password     </th>
			<th>_____</th>
			<th>phone#       </th>
			
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
		</tr>
		
<!--	<c:forEach var="course" items="${courses}">		-->
		<tr>
			<td> <c:out value="${user.firstName}"/> </td>
			<th> </th>
			<td> <c:out value="${user.lastName}"/> </td>
			<th> </th>
			<td> <c:out value="${user.email}"/> </td> 
			<th> </th>
			<td> <c:out value="${user.password}"/> </td>
			<th> </th>
			<td> <c:out value="${user.phone}"/> </td>
		</tr>	
		
<!--  	</c:forEach>	-->
	
	</table>


<table>	<!--  add table of selected courses and teachers and times and rooms -->


			<th>Course Name  </th>
		<tr>
			<th>Street   	 </th>
			<th>_____</th>
			<th>City         </th>
			<th>_____</th>
			<th>State        </th>
			<th>_____</th>
			<th>Zip          </th>
		</tr>
		
		<tr>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
			<th>-----</th>
		</tr>
		
<!--	<c:forEach var="course" items="${courses}">		-->
		<tr>
			<td> <c:out value="${user.address.street}"/> </td>
			<th> </th>
			<td> <c:out value="${user.address.city}"/> </td>
			<th> </th>
			<td> <c:out value="${user.address.state}"/> </td> 
			<th> </th>
			<td> <c:out value="${user.zip}"/> </td>
		</tr>	
		

<!--  	</c:forEach>	-->

	
	</table>


=======================================================================================================		
<br>
		<footer>
<br>			
			To Return Without Setting up UserId...................
			<a href="index.jsp">Return to Selection Menu</a>
<br>			
			<p>&copy; 2019 Pannonia Express Inc. </p>
<br>			
		</footer>
<br>		


</body>
</html>