package com.artist;

/*
Name W. J. K. FERNANDO
ITNUMBER IT22232472
Metro
*/ 

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ArtistInsertServlet")
public class ArtistInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String a_name = request.getParameter("a_name");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String qualification = request.getParameter("qualification");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = ArtistDBUtil.insertartist(name, a_name, dob, gender, phone, email, qualification, username, password);
		
		if(isTrue == true) {
			List<Artist> artDetails = ArtistDBUtil.getartist(username);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("artistaccount.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
