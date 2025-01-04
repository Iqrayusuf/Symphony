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


@WebServlet("/ArtistDetailsServlet")
public class ArtistDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");

        List<Artist> artDetails = ArtistDBUtil.getartist(uid); 

        request.setAttribute("artDetails", artDetails);

        RequestDispatcher dispatcher = request.getRequestDispatcher("artistaccount.jsp");
        dispatcher.forward(request, response);
        
	}

}
