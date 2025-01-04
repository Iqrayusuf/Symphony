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

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentid = request.getParameter("id");
		String mobilenum = request.getParameter("tel");
		
		try {
		List<Payment> cusDetails = PaymentDBUtil.validate(paymentid, mobilenum);
		request.setAttribute("cusDetails", cusDetails);
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("paydetails.jsp");
		dis.forward(request, response);
	}

}
