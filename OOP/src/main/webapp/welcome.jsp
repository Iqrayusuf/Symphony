<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!--
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
-->
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif; 
            background-color: #8B4513; 
            color: #ffffff; 
            text-align: center; 
        }
        button[type="submit"] {
            background-color: #D2B48C; 
            color: #000000; 
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin: 10px; 
        }
        button[type="submit"]:hover {
            background-color: #CD853F; 
        }
    </style>
</head>
<body>
    <h2>You Have Successfully added Music!</h2> 
    <form action="main.jsp">
        <button type="submit">Go to Main Page</button>
    </form>
    <form action="${pageContext.request.contextPath}/retrieveMusic">
        <button type="submit" >View Music Album</button>
    </form>
</body>
</html>

