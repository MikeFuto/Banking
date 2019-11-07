package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderSevicesServlet
 */
@WebServlet("/OrderSevicesServlet")
public class OrderSevicesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderSevicesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		<input type="checkbox" name="overDraft" value="overDraft" id="woverDraft" class="overDraft" />
//		<lable for="overDraft">Y</lable>
//		
//		<input type="checkbox" name="orderChecks" value="orderCheck" id="worderCheck" class="orderCheck" />
//		<lable for="orderCheck">Y</lable>
//		
//		<input type="checkbox" name="orderDebit" value="orderDebit" id="orderDebit" class="orderDebit" />
//		<lable for="orderDebit">Y</lable>
//			
//		<input type="checkbox" name="orderCredit" value="orderCredit" id="orderCredit" class="orderCredit" />
//		<lable for="orderCredit">Y</lable>
//
//		<button type="submit" class="btn btn-default">Submit to Place Orders</button>	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
