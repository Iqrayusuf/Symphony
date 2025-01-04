<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--
Name M.Y iqra
ITNUMBER IT22071620
Metro
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .submit-button {
        background-color: blue;
        color: white;
        font-size: 16px;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .submit-button:hover {
        background-color: darkblue;
    }
    table {
        width: 30%; /* Adjust the width as needed */
        margin: 0 auto; /* Center the table horizontally */
        
    }
</style>
</head>
<body>

<%

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userName = request.getParameter("uname");
    String password = request.getParameter("pass");
    
%>
<h1 align = "center"> Customer update </h1>
<br>
<form action="cupdate" method="post">
    <table border="2" align="center">
        <tr>
            <td>Customer ID</td>
            <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>"></td>
        </tr>
        <tr>
            <td>DOB</td>
            <td><input type="text" name="dob" value="<%= dob %>"></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" name="gender" value="<%= gender %>"></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone" value="<%= phone %>"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>"></td>
        </tr>
        <tr>
            <td>User Name</td>
            <td><input type="text" name="uname" value="<%= userName %>"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="text" name="pass" value="<%= password %>"></td>
        </tr>
         </table>
         <br>
            <div align = "center"> 
                <input type="submit" name="update" value="Update My Data" class = "submit-button">
            </div>
        
    
</form>

</body>
</html>
