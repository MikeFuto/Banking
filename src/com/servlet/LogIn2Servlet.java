package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.User;



/**
 * Servlet implementation class LogIn2Servlet
 */
@WebServlet("/LogIn2Servlet")
public class LogIn2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		HttpSession session = request.getSession(true);
				
		String tempUserId = request.getParameter("userId");
		String tempUserPassword = request.getParameter("password");
	
			//search for user in the stored file
		String path = "C:\\Training\\Streams\\";
		String fileName = path + "userList.txt";
		
		boolean foundUser = false;
		boolean foundPassword = false;
		User currentUser = new User();
		
		Scanner scanner = new Scanner((new File(fileName)));
		String line = scanner.nextLine();
		
		while(scanner.hasNextLine()){	
			String[] parsedLine = line.split(",");
			String nextUserEmail = (parsedLine[0]);
			String nextUserPassword = (parsedLine[1]);
			
				//Check if UserId and Password matches any in file
			if ( nextUserEmail.equals(tempUserId) ) {
				foundUser = true;
				if (nextUserPassword.equals(tempUserPassword) ){
					foundPassword = true;
					
						//set up user
					currentUser.setEmail(parsedLine[0]);
					currentUser.setPassword(parsedLine[1]);
					
					currentUser.setFirstName(parsedLine[2]);
					currentUser.setLastName(parsedLine[3]);
					currentUser.setPhone(parsedLine[4]);
					
					currentUser.setLastName(parsedLine[5]);
					currentUser.setLastName(parsedLine[6]);
					currentUser.setLastName(parsedLine[7]);
					currentUser.setLastName(parsedLine[8]);
					
					currentUser.getAccount().setAccountNum(Integer.valueOf(parsedLine[9]));
					currentUser.getAccount().setNickName(parsedLine[10]);
					currentUser.getAccount().setBalance(Double.valueOf(parsedLine[11]));
					currentUser.getAccount().setOdStatus(parsedLine[12]);
						
				}
			}
			scanner = new Scanner((new File(fileName)));
			line = scanner.nextLine();				
		}
		
			// choose where to go next based on valid email, password, accounts
		if(foundUser && foundPassword) {
			
				//setting the session up
			session.setAttribute("users", currentUser);
			RequestDispatcher rs = request.getRequestDispatcher("selectionPage.jsp");
			rs.forward(request,  response);;			
		}
		else {
			System.out.println("Invalid UserId or Invalid Password");
				//I need to pass this message back to the HTML
			RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
			rs.forward(request,  response);			
		}	
		
	}
	
//this the user object definition of the file
//email,password,firstName,lastName,phone,street,city,state,zip,accountNum,nickName,balance,odStatus	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



//this data entry for testing to add a customer
//"John Doe , 5 , 6366435698 , 114 Market St , St. Louis, MO, 63403";

//this data for testing to add a customer
//"JohnE Doe  , 15 , 8475390126 , 324 Main St , St. Charles , MO , 63303 ";

//this data for testing to add a customer
//"John Michael West Doe , 25 , 5628592375 , 574 Pole ave , St.Peters ,  MO ,  63333 ";

//this data for testing to add a customer
//"Tom Jones , 35 , 3146313921 , 9233 Mackinaw ,  St. Louis ,  MO ,  63123 ";

//this data for testing to add a customer
//"Mike Futo , 45 , 6366755929 , 9231 Pinto ,  St. Louis ,  MO , 63123 ";








