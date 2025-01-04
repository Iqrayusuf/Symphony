//IT22902320
//AMRA FARIS

package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PayInsert")
public class PayInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentid = request.getParameter("id");
		String fullname = request.getParameter("fname");
		String dateofpurchase = request.getParameter("dop");
		String email = request.getParameter("email");
		String mobileno = request.getParameter("tel");
		String cardtype = request.getParameter("cardtype");
		String cardnum = request.getParameter("cardNumber");
		String expirydate = request.getParameter("expiryDate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertcustomer(paymentid, fullname, dateofpurchase, email, mobileno, cardtype, cardnum, expirydate, cvv);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}