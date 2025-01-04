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


@WebServlet("/ArtistDeleteServlet")
public class ArtistDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("aid");
		boolean isTrue;
		
		isTrue = ArtistDBUtil.deleteartist(id);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("artistInsert.jsp");
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
