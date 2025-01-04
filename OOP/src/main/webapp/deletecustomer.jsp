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
<h1 align = "center"> Customer Account Delete</h1>
<br>
<table border="2" align="center">
    <form action="cdelete" method="post">
        <tr>
            <td>Customer ID</td>
            <td><input type="text" name="cusid" value="<%= id %>" readonly></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>" readonly></td>
        </tr>
        <tr>
            <td>DOB</td>
            <td><input type="text" name="dob" value="<%= dob %>" readonly></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" name="gender" value="<%= gender %>" readonly></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>" readonly></td>
        </tr>
        <tr>
            <td>User Name</td>
            <td><input type="text" name="uname" value="<%= userName %>" readonly></td>
        </tr>
        </table>
            <br>
            <div align = "center"> 
                <input type="submit" name="cusid" value="Delete My Account" class = "submit-button" >
            </div>
        
    </form>


</body>
</html>
