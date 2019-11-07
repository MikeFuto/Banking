package com.servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.user.Account;
import com.user.Address;
import com.user.User;



/**
 * Servlet implementation class NewUserSevlet
 */
@WebServlet("/NewUserSevlet")
public class NewUserSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewUserSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		//auto create new account numbers to assign to new users with fresh balance of $0.00
	int nextAccountNum = 1000;	
		// fetch the sesssion
	HttpSession session = request.getSession(true);

		//create a new user object and populate with newly entered information
		//really need to validate this user id as unique or use account number instead
	User user = new User();
		//Account account = new Account();
	
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
	++nextAccountNum;							//user.getAccountNum(request.getParameter("accountNum")); value of
	user.getAccount().setAccountNum(nextAccountNum);				
	user.getAccount().setNickName(request.getParameter("nickName"));
	double balance = 0;
	user.getAccount().setBalance(balance);  	 //user.setAccount(request.getParameter("balance"));  value of 	            
	user.getAccount().setOdStatus(request.getParameter("odStatus"));	
	user.setUserStatus("successful");
	
//-------------------------------------------------------------	
	//set up file path, name and contents
	String addUser =  user.getEmail() + "," + user.getPassword()
					// contact info
			 + "," + user.getFirstName() + "," + user.getLastName() + "," + user.getPhone() + "," 
					// + "," + this.address
			 + "," + user.getAddress().getStreet() + "," + user.getAddress().getCity() + "," + user.getAddress().getState() + "," + user.getAddress().getZip()
			 		// + "," + this.account;
			 + "," + user.getAccount().getAccountNum() + "," + user.getAccount().getNickName() + "," + user.getAccount().getBalance() + "," + user.getAccount().getOdStatus();
	
	String path = "C:\\Training\\Streams\\";
	String fileName = path + request.getParameter("email");
	
	//-------------------------------------------------------------	
			//write file for user		
	try {  
		//System.out.println("Try writing to file!!!--------");	
		BufferedWriter bw = new BufferedWriter(new FileWriter(fileName,true));
			//bw.write(this.formatData());
		//bw.newLine();  						 //Add new line
		bw.write(addUser);
		bw.close();
			//set newly entered attributes of user to session and return to the selection page of account services
			//I need to pass this message back to the HTML that they were added to the system successfully
		user.setUserStatus("successful");
		session.setAttribute("users", user);
		RequestDispatcher rs = request.getRequestDispatcher("createUser.jsp");  //need to show info entered somewhere
		rs.forward(request,  response);			
		
	}catch(IOException E) {
		System.out.println("ERROR writing to file!!!");
			// Return to create User page with entered values saved in session to try again
			//I pass this message back to the HTML
		user.setUserStatus("unsuccessful");
		session.setAttribute("users", user);
		RequestDispatcher rs = request.getRequestDispatcher("createUser.jsp");
		rs.forward(request, response);				
	}
	
		//this would be needed perhaps but try to append to a file instead
//	ArrayList<User> userList = (ArrayList<User>)session.getAttribute("userList");
//	if (userList == null) {
//		userList = new ArrayList<>();	
//	}
////	userList.add(user);
//	session.setAttribute("users", userList);
//
//		// go on to the selection page
//	RequestDispatcher rs = request.getRequestDispatcher("selectionPage.jsp");
//	rs.forward(request,  response);			
//		
		
	}

	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
