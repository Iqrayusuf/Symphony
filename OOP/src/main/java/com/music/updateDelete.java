package com.music;

/*
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
*/

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateDelete")
public class updateDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String musicID = request.getParameter("musicID");
        String musicName = request.getParameter("musicName");
        String singerName = request.getParameter("singerName");
        String composerName = request.getParameter("composerName");
        String genre = request.getParameter("genre");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicdb", "root",
                    "password")) {
                if (connection != null) {
                    if ("update".equals(action)) {
                        String updateQuery = "UPDATE album SET musicName=?, singerName=?, composerName=?, genre=? WHERE musicID=?";
                        PreparedStatement statement = connection.prepareStatement(updateQuery);
                        statement.setString(1, musicName);
                        statement.setString(2, singerName);
                        statement.setString(3, composerName);
                        statement.setString(4, genre);
                        statement.setString(5, musicID);
                        int rowsUpdated = statement.executeUpdate();
                        if (rowsUpdated > 0) {
                            // Display success message
                            response.setContentType("text/html");
                            response.getWriter().println("<!DOCTYPE html>");
                            response.getWriter().println("<html>");
                            response.getWriter().println("<head>");
                            response.getWriter().println("<title>Update/Delete Result</title>");
                            response.getWriter().println("<style>");
                            response.getWriter().println("body { background-color: #a76d3c; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; padding: 0; }");
                            response.getWriter().println(".message-container { background-color: #8B4513; padding: 20px; border-radius: 10px; text-align: center; }");
                            response.getWriter().println("</style>");
                            response.getWriter().println("</head>");
                            response.getWriter().println("<body>");
                            response.getWriter().println("<div class='message-container'>");
                            response.getWriter().println("Data updated successfully");
                            response.getWriter().println("</div>");
                            response.getWriter().println("</body>");
                            response.getWriter().println("</html>");
                        } else {
                            // Display error message
                            response.setContentType("text/html");
                            response.getWriter().println("<!DOCTYPE html>");
                            response.getWriter().println("<html>");
                            response.getWriter().println("<head>");
                            response.getWriter().println("<title>Update/Delete Result</title>");
                            response.getWriter().println("<style>");
                            response.getWriter().println("body { background-color: #a76d3c; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; padding: 0; }");
                            response.getWriter().println(".message-container { background-color: #8B4513; padding: 20px; border-radius: 10px; text-align: center; }");
                            response.getWriter().println("</style>");
                            response.getWriter().println("</head>");
                            response.getWriter().println("<body>");
                            response.getWriter().println("<div class='message-container'>");
                            response.getWriter().println("Failed to update data");
                            response.getWriter().println("</div>");
                            response.getWriter().println("</body>");
                            response.getWriter().println("</html>");
                        }
                    } else if ("delete".equals(action)) {
                  
                    	 String deleteQuery = "DELETE FROM album WHERE musicID=?";
                         PreparedStatement statement = connection.prepareStatement(deleteQuery);
                         statement.setString(1, musicID);
                         int rowsDeleted = statement.executeUpdate();
                         if (rowsDeleted > 0) {
                             // Display success message
                             response.setContentType("text/html");
                             response.getWriter().println("<!DOCTYPE html>");
                             response.getWriter().println("<html>");
                             response.getWriter().println("<head>");
                             response.getWriter().println("<title>Update/Delete Result</title>");
                             response.getWriter().println("<style>");
                             response.getWriter().println("body { background-color: #a76d3c; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; padding: 0; }");
                             response.getWriter().println(".message-container { background-color: #8B4513; padding: 20px; border-radius: 10px; text-align: center; }");
                             response.getWriter().println("</style>");
                             response.getWriter().println("</head>");
                             response.getWriter().println("<body>");
                             response.getWriter().println("<div class='message-container'>");
                             response.getWriter().println("Data deleted successfully");
                             response.getWriter().println("</div>");
                             response.getWriter().println("</body>");
                             response.getWriter().println("</html>");
                         } else {
                             // Display error message
                             response.setContentType("text/html");
                             response.getWriter().println("<!DOCTYPE html>");
                             response.getWriter().println("<html>");
                             response.getWriter().println("<head>");
                             response.getWriter().println("<title>Update/Delete Result</title>");
                             response.getWriter().println("<style>");
                             response.getWriter().println("body { background-color: #a76d3c; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: white; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; padding: 0; }");
                             response.getWriter().println(".message-container { background-color: #8B4513; padding: 20px; border-radius: 10px; text-align: center; }");
                             response.getWriter().println("</style>");
                             response.getWriter().println("</head>");
                             response.getWriter().println("<body>");
                             response.getWriter().println("<div class='message-container'>");
                             response.getWriter().println("Failed to delete data");
                             response.getWriter().println("</div>");
                             response.getWriter().println("</body>");
                             response.getWriter().println("</html>");
                         }
                    }
                } else {
                    response.getWriter().println("Failed to make connection!");
                }
            } catch (SQLException e) {
                response.getWriter().println("Error: " + e.getMessage());
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            response.getWriter().println("Mysql Driver Not Found");
            e.printStackTrace();
        }
    }
}

