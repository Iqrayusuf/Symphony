
<!--
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
-->

<%@ page import="java.sql.*"
		import="javax.sql.*" %>



<%
	String musicID = request.getParameter("musicID"); 
	String musicName = request.getParameter("musicName"); 
	String singerName = request.getParameter("singerName"); 
	String composerName = request.getParameter("composerName"); 
	String genre = request.getParameter("genre"); 
	
	
	
	try{
		
	
	
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/musicdb", "root", "password");
	
	
	Statement st = con.createStatement(); 
	int i = st.executeUpdate("insert into ALBUM(musicName, singerName, composerName, genre) values ('" + musicName + "','" + singerName + "','" + composerName + "','" + genre + "')");
	if (i > 0) { 
				response.sendRedirect("welcome.jsp"); 
			} 
	else { 
		response.sendRedirect("main.jsp"); 
		}
	

	
	
	con.close();
	
	}catch(Exception e){ System.out.println(e);}  

%>

</body>
</html>