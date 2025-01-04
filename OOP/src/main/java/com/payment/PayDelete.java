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

@WebServlet("/PayDelete")
public class PayDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String paymentid = request.getParameter("pid");
	    boolean isDeleted = PaymentDBUtil.deleteCustomer(paymentid);
	    
	    if (isDeleted) {
	        // If deletion is successful, forward to customerinsert.jsp
	        RequestDispatcher dispatcher = request.getRequestDispatcher("payinsert.jsp");
	        dispatcher.forward(request, response); 
	    } else {
	        // If deletion is unsuccessful, forward to useraccount.jsp
	        List<Payment> cusDetails = PaymentDBUtil.getCustomerDetails(paymentid);
	        request.setAttribute("cusDetails", cusDetails);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("paydetails.jsp");
	        dispatcher.forward(request, response);
	    }
	}


}
