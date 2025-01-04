package com.music;

/*
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
*/

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/retrieveMusic")
public class retrieveMusic extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        InputStream input = null;
        try {
            System.out.println("-------- MySQL JDBC Connection Program Started ------------");

            try {
                
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                out.println("Mysql Driver Not Found");
                e.printStackTrace();
                return;
            }

            System.out.println("MySQL JDBC Driver Found!!!");
            Connection connection = null;

            try {
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicdb","root", "password");

                if (connection != null) {
                    Statement stmt = null;
                    ResultSet rs = null;
                    stmt = connection.createStatement();
                    if (stmt.execute("select * from album")) {
                        rs = stmt.getResultSet();
                    } else {
                        System.err.println("select failed");
                    }

                   
                    out.print("<!DOCTYPE html>");
                    out.print("<html>");
                    out.print("<head>");
                    out.print("<title>View Our Music</title>");
                    out.print("<style>");
                    out.print("body { background-image: url('images/img4.jpg');background-repeat: no-repeat; background-size: cover; background-color: #a76d3c; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }");
                    out.print("table { width: 50%; margin: 80px auto; background-color: #8B4513; color: white; border-collapse: collapse; }");
                    out.print("th, td { padding: 10px; border: 1px solid #000000; text-align: center; }");
                    out.print("th { background-color: #4d2600; }");
                    out.print("input[type=\"submit\"] { background-color: #8B4513; color: white; border: none; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin-top: 10px; cursor: pointer; border-radius: 5px; }");
                    out.print("input[type=\"submit\"]:hover { background-color: #a76d3c; }");
                    out.print("</style>");
                    out.print("</head>");
                    out.print("<body>");

                  
                    out.print("<div style=\"text-align: center;\">");

                    
                    out.print("<table border='1'>");
                    out.print("<tr><th>MusicID</th><th>MusicName</th><th>SingerName</th><th>ComposerName</th><th>Genre</th></tr>");
                    while (rs.next()) {
                        out.print("<tr><td>"+rs.getString("musicID")+" </td> <td>"+rs.getString("musicName")+" </td><td>  "+rs.getString("singerName")+" </td><td> "+rs.getString("composerName")+" </td><td> "+rs.getString("genre"));
                    }

                 
                    out.print("</table>");
                    out.print("</div>");

                  
                    out.print("<br>");

                
                    out.print("<form action=\"retrieveMusic\" method=\"get\">");
                    out.print("<div style=\"text-align: center;\">");
                    out.print("<input type=\"submit\" value=\"Refresh\" style=\"background-color: #8B4513; color: white; border: none; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin-top: 10px; cursor: pointer; border-radius: 5px;\">");
                    out.print("</div>");
                    out.print("</form>");

                
                    out.print("<form action=\"main.jsp\">");
                    out.print("<div style=\"text-align: center;\">");
                    out.print("<input type=\"submit\" value=\"Back to Main\" style=\"background-color: #8B4513; color: white; border: none; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin-top: 10px; cursor: pointer; border-radius: 5px;\">");
                    out.print("</div>");
                    out.print("</form>");

                 
                    out.print("<center><p>To Update or Delete our music Album, <a href=\"ud.jsp\">click here</a></p></center>");

                 
                    out.print("</body>");
                    out.print("</html>");

                } else {
                    out.println("Failed to make connection!");
                }
            } catch (SQLException e) {
                out.println("Cannot Connect To Mysql Server:- Please check whether the server is up and running");
                out.println("<p>Error Details</P>"+e);
                System.out.println("Connection Failed! Check output console");
                e.printStackTrace();
                return;
            }

        }
        finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
