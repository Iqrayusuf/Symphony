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


@WebServlet("/ArtistUpdateServlet")
public class ArtistUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("aid");
		String name = request.getParameter("name");
		String aname = request.getParameter("aname");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String qualification = request.getParameter("qualification");
		String uname = request.getParameter("username");
		
		boolean isTrue;
		
		isTrue = ArtistDBUtil.updateartist(id, name, aname, dob, gender, phone, email, qualification, uname);
		
		if(isTrue == true) {
			
			List<Artist> artDetails = ArtistDBUtil.getartist(uname);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("artistaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Artist> artDetails = ArtistDBUtil.getartist(id);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("artistaccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
