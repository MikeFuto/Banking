package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Address;
import com.user.User;






/**
 * Servlet implementation class PrintProfileSevlet
 */
@WebServlet("/PrintProfileSevlet")
public class PrintProfileSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrintProfileSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
    
    
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			//set up a user Object to work with
		User currentUser = new User();	
	
			//set up the sesssion and get user data from session
		HttpSession session = request.getSession(true);
		
			// this information needs to be passed back to the HTML
		System.out.println("Your Profile information............");
		System.out.println(" ");
		System.out.println("Your Full Name:       " + currentUser.getFirstName() + " " + currentUser.getLastName());
		System.out.println("UserId, phone, email: " + " " + currentUser.getPhone() + " " + currentUser.getEmail());
		System.out.println(" ");
		System.out.println("Your Address:         " + currentUser.getAddress().getStreet() + " " + currentUser.getAddress().getCity() + " " + currentUser.getAddress().getState() + " " + currentUser.getAddress().getZip());		
		System.out.println(" ");
				//for(int i= 0; i< user.account.number.length) {
		System.out.println("Your account# and Nick Name:    " + currentUser.getAccount().getAccountNum() + " " + currentUser.getAccount().getNickName());
		System.out.println("Your balance, overdraft status: " + currentUser.getAccount().getBalance() + currentUser.getAccount().getOdStatus());
		System.out.println(" ");
		//}
		
				// return to account other services page for table of data display
				//update the session with fresh user information
		session.setAttribute("users", currentUser);
		RequestDispatcher rs = request.getRequestDispatcher("otherServices.jsp");
		rs.forward(request,  response);;			
			
	}

	
	
	
	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
