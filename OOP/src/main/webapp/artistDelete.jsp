<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Artist Account Deletion</title>
    <style>
 
/*
Name W. J. K. FERNANDO
ITNUMBER IT22232472
Metro
*/ 

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background: linear-gradient(to bottom, #333333, #222222, #111111);
            color: #fff;
            padding: 10px 20px;
        }
        .login-buttons {
            position: absolute;
            top: 20px;
            right: 10px;
            text-align: right;
        }
        .login-buttons a {
            display: block;
            padding: 5px 15px;
            background-color: #333;
            color: white;
            text-decoration: none;
            margin-top: 5px;
            border-radius: 5px;
        }
        .login-buttons i {
            font-size: 24px;
        }
        /* Specific style for the upload button */
        .upload-button {
            background-color: #5cb85c;
        }
        header h1 {
            margin: 0;
        }
        nav ul {
            list-style: none;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
        }
        section {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        section h2 {
            color: #333;
        }
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            color: #fff;
            bottom: 0;
            width: 100%;
        }

        /* CSS for the form */
        form {
            margin: 20px auto;
            max-width: 600px;
        }
        form input[type="text"] {
            width: calc(100% - 22px); /* Adjust width to accommodate the border and padding */
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Ensure padding and border are included in width */
        }
        form input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        form input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>Symphony</h1>
        <div class="login-buttons">
            <a href="upload-music.html" class="upload-button">Upload Music</a>
        </div>
        <br>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <%
        String id = request.getParameter("aid");
        String name = request.getParameter("name");
        String aname = request.getParameter("aname");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String qualification = request.getParameter("qualification");
        String username = request.getParameter("username");
    %>
    
    <h1>Artist Account Deletion</h1>
    
    <form action="delete" method="post">
        Artist ID: <input type="text" name="aid" value="<%= id%>" readOnly><br>
        Artist's Name: <input type="text" name="name" value="<%= name%>" readOnly><br>
        Artist name: <input type="text" name="aname" value="<%= aname%>" readOnly><br>
        Date of Birth: <input type="text" name="dob" value="<%= dob%>" readOnly><br>
        Gender: <input type="text" name="gender" value="<%= gender%>" readOnly><br>
        Phone Number: <input type="text" name="phone" value="<%= phone%>" readOnly><br>
        Email Address: <input type="text" name="email" value="<%= email%>" readOnly><br>
        Qualification: <input type="text" name="qualification" value="<%= qualification%>" readOnly><br>
        Username: <input type="text" name="username" value="<%= username%>" readOnly><br>
        
        <input type="submit" name="submit" value="Delete">
    </form>
    
    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>
</body>
</html>
