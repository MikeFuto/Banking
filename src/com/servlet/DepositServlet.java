package com.servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Account;

import com.user.Transaction;
import com.user.User;



/**
 * Servlet implementation class DepositServlet
 */
@WebServlet("/DepositServlet")
public class DepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepositServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
			//instantiate a user object and transaction object to work with
		User currentUser = new User();	
		User user = new User();
		Transaction transaction = new Transaction();
		
			//set up the session and get user data from session
		HttpSession session = request.getSession(true);
		double currentBalance = currentUser.getAccount().getBalance();
		
				//Account tempAccount = new Account();	
			//get deposit amounts from the session / deposit page
		double tempCash = Double.valueOf("cash");
		double tempCheck1 = Double.valueOf("check1");
		double tempCheck2 = Double.valueOf("check2");
		double tempCheck3 = Double.valueOf("check3");
		
			//add deposits to the current balance and save new balance back to the session
		double NewBalance = currentBalance + tempCash + tempCheck1 + tempCheck2 + tempCheck3;
		//currentUser.getAccount().setBalance(NewBalance);

//===================================================================================================================		
		//write the transaction file to record the information
				
		//get transaction details from the session set into the transaction object
		//-------------------------------------------------------------	
		transaction.setDate(request.getParameter("date"));
		transaction.setTime(request.getParameter("time"));
		transaction.setEmail(request.getParameter("email"));
		//transaction.setTransactionType(request.getParameter("TransactionType"));
		transaction.setTransactionType("deposit");
		
//		double tempTransactionAmount = Double.valueOf("transactionAmount");		
//		transaction.setTransactionAmount(Double.valueOf("transactionAmount"));

		transaction.setTransactionAmount(Double.parseDouble("transactionAmount"));     
		transaction.setCheckNum(Integer.parseInt("checkNum"));
		transaction.setCheckAccount(Integer.parseInt("checkAccount"));
		transaction.setCheckRouting(Integer.parseInt("checkRouting"));
		
			// set transaction status to successful or set to unsuccessful in the catch section			
		transaction.setTransactionStatus("successful");
		
		//-------------------------------------------------------------	
		//set up transaction file path, name and contents and then append this to the transaction file
		//date,time,email,transactionType,transactionAmount,checkNum,checkAccount,checkRouting

		//set up file path, name and contents
		String addTransaction = transaction.getDate() + "," + transaction.getTime() + "," + transaction.getEmail()
				+ "," + transaction.getTransactionType() + "," + transaction.getTransactionAmount()
				+ "," + transaction.getCheckNum() + "," + transaction.getCheckAccount() + "," + transaction.getCheckRouting();
		
				String path1 = "C:\\Training\\Streams\\";
				String fileName1 = path1 + "transactions";
						//request.getParameter("transactions");
	
				//-------------------------------------------------------------	
			try {	
					
//				FileWriter fw  = new FileWriter(fileName1,true);	//Set true for append mode				    
//					PrintWriter printWriter = new PrintWriter(fw);
//				    printWriter.println(addTransaction);  					//New line
//				
//				    printWriter.close();				
							
				//-------------------------------------------------------------					
		
//			// examples of appending to a file	
//				String textToAppend = "Happy Learning !!";
//				     
//				    FileWriter fileWriter = new FileWriter("c:/temp/samplefile.txt", true);   //Set true for append mode
//				    
//					PrintWriter printWriter = new PrintWriter(fileWriter);
//				    printWriter.println(textToAppend);  //New line
//				
//				    printWriter.close();		
//				
//						
//				String textToAppend = "Happy Learning !!";
//				     
//				    BufferedWriter writer = new BufferedWriter(
//				    new FileWriter("c:/temp/samplefile.txt", true) //Set true for append mode
//				                            ); 
//				    writer.newLine();   //Add new line
//				    writer.write(textToAppend);
//				    writer.close();
//				
				
		//-------------------------------------------------------------	
				//try to write file for transaction
				//System.out.println("Try writing to file!!!--------");	
		
				//write newly entered attributes of user to file
				//C:\Training\Streams                             
			BufferedWriter bw = new BufferedWriter(new FileWriter(fileName1, true));
				//bw.write(this.formatData());
			//bw.newLine();  						 //Add new line
			bw.write(addTransaction);
			bw.close();
			
				//set newly entered attributes of user to session and return
				//and return to the selection page of account services
			transaction.setTransactionStatus("successful");
			session.setAttribute("transactions", transaction);
			RequestDispatcher rs = request.getRequestDispatcher("deposit.jsp");  //need to show info entered somewhere
			rs.forward(request,  response);			
			
		}catch(IOException E) {
				// set transaction status to unsuccessful		
			transaction.setTransactionStatus(request.getParameter("transactionStatus"));
			transaction.setTransactionStatus("unsuccessful");
			System.out.println("ERROR writing to file!!!");	
			
				// Return to create User page with entered values saved in session to try again
				//I need to pass this message back to the HTML
			transaction.setTransactionStatus("unsuccessful");
			session.setAttribute("users", user);
			RequestDispatcher rs = request.getRequestDispatcher("deposit.jsp");
			rs.forward(request, response);				
		}		
		
		
//===================================================================================================================		
			//write the user file to update the balance information
		//-------------------------------------------------------------				
		//2 fields
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
			//3 fields
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setPhone(request.getParameter("phone"));
		
			//4 fields
			//	user.setAddress(request.getParameter("address"));	
		user.getAddress().setStreet(request.getParameter("street"));	
		user.getAddress().setCity(request.getParameter("city"));	
		user.getAddress().setState(request.getParameter("state"));	
		user.getAddress().setZip(request.getParameter("zip"));		
			//4 fields
			//user.setAccount(request.getParameter("account"));
		//++nextAccountNum;							//user.getAccountNum(request.getParameter("accountNum"));
		user.getAccount().setAccountNum(Integer.parseInt("accountNum"));
		user.getAccount().setNickName(request.getParameter("nickName"));
		
		user.getAccount().setBalance(NewBalance);  		            
		user.getAccount().setOdStatus(request.getParameter("odStatus"));
		
		//-------------------------------------------------------------	
		//set up file path, name and contents
		String addUser =  user.getEmail() + "," + user.getPassword()
						// contact info
				 + "," + user.getFirstName() + "," + user.getLastName() + "," + user.getPhone() + "," 
						// + "," + this.address
				 + "," + user.getAddress().getStreet() + "," + user.getAddress().getCity() + "," + user.getAddress().getState() + "," + user.getAddress().getZip()
				 		// + "," + this.account;
				 + "," + user.getAccount().getAccountNum() + "," + user.getAccount().getNickName() + "," + user.getAccount().getBalance() + "," + user.getAccount().getOdStatus();
		
		String path2 = "C:\\Training\\Streams\\";
		String fileName2 = path2 + request.getParameter("email");
			
		//-------------------------------------------------------------	
		//try to write file for user
		//System.out.println("Try writing to file!!!--------");	
try {
		//write newly entered attributes of user to file
		//C:\Training\Streams                             
	BufferedWriter bw = new BufferedWriter(new FileWriter(fileName2,true));
		//bw.write(this.formatData());
	//bw.newLine();  						 //Add new line
	bw.write(addUser);
	bw.close();
	
		//set newly entered attributes of user to session
		//and return to the selection page of account services
		//I need to pass this message back to the HTML that they were added to the system successfully
	user.setUserStatus("successful");
	session.setAttribute("users", user);
	RequestDispatcher rs = request.getRequestDispatcher("selectionPage.jsp");  //need to show info entered somewhere
	rs.forward(request,  response);			
	
}catch(IOException E) {
	System.out.println("ERROR writing to file!!!");	
		// Return to create User page with entered values saved in session to try again
		//I need to pass this message back to the HTML
	user.setUserStatus("unsuccessful");
	session.setAttribute("users", user);
	RequestDispatcher rs = request.getRequestDispatcher("deposit.jsp");
	rs.forward(request, response);				
}		
	
		
	}

	

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
