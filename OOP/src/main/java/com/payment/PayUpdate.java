//IT22902320
//AMRA FARIS

package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PayUpdate")
public class PayUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentid = request.getParameter("id");
		String fullname = request.getParameter("fname");
		String dop = request.getParameter("dop");
		String email = request.getParameter("email");
		String mobile = request.getParameter("tel");
		String cardtype = request.getParameter("cardtype");
		String cardnum = request.getParameter("cardNumber");
		String exdate = request.getParameter("expiryDate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue =PaymentDBUtil.updatecustomer(paymentid, fullname, dop, email, mobile, cardtype, cardnum, exdate, cvv);
		
		if(isTrue == true) {
			List<Payment> cusDetails = PaymentDBUtil.getCustomerDetails(paymentid);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("paydetails.jsp");
			dis.forward(request, response);
		} 
		else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
