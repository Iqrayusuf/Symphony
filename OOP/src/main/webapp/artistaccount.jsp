<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Artist Details</title>
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
        .artist-info {
            margin-bottom: 20px;
        }
        .artist-info h2 {
            margin-top: 0;
        }
        .artist-music ul {
            list-style-type: none;
            padding: 0;
        }
        .artist-music ul li {
            margin-bottom: 10px;
        }
        .artist-music ul li a {
            color: #666;
            text-decoration: none;
        }
        .artist-music ul li a:hover {
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

        /* CSS for displaying artist details */
        .artist-details {
            margin: 20px auto;
            max-width: 600px;
        }
        .artist-details table {
            width: 100%;
            border-collapse: collapse;
        }
        .artist-details th, .artist-details td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        .artist-details th {
            background-color: #f2f2f2;
            color: #333;
        }
        .artist-details td {
            background-color: #fff;
            color: #666;
        }
        .artist-details td:first-child {
            font-weight: bold;
        }
        .artist-details tr:nth-child(even) td {
            background-color: #f9f9f9;
        }
        .artist-details tr:hover td {
            background-color: #f2f2f2;
            color: #333;
        }
        .artist-details .update-delete-buttons {
            margin-top: 20px;
            text-align: center;
        }
        .artist-details .update-delete-buttons a {
            display: inline-block;
            padding: 8px 16px;
            margin-right: 10px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        .artist-details .update-delete-buttons a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<header>
    <h1>Symphony</h1>
    <div class="login-buttons">
        <a href="uploadMusic.jsp" class="upload-button">Upload Music</a>
    </div>
    <br>
    <nav>
        <ul>
            <li><a href="homepage.jsp">Home</a></li>
            <li><a href="#">Shop</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<section class="artist-details">
    <h1>Artist Details</h1>
    <table>
        <c:forEach var="art" items="${artDetails}">
        <c:set var="aid" value="${art.AID}"/>
		<c:set var="name" value="${art.name}"/>
		<c:set var="aname" value="${art.artist_name}"/>
		<c:set var="dob" value="${art.dob}"/>
		<c:set var="gender" value="${art.gender}"/>
		<c:set var="phone" value="${art.phone}"/>
		<c:set var="email" value="${art.email}"/>
		<c:set var="qualification" value="${art.qualification}"/>
		<c:set var="username" value="${art.username}"/>
        
            <tr>
                <td>Artist ID</td>
                <td>${art.AID}</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>${art.name}</td>
            </tr>
            <tr>
                <td>Artist Name</td>
                <td>${art.artist_name}</td>
            </tr>
            <tr>
                <td>Date of Birth</td>
                <td>${art.dob}</td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>${art.gender}</td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>${art.phone}</td>
            </tr>
            <tr>
                <td>Email Address</td>
                <td>${art.email}</td>
            </tr>
            <tr>
                <td>Qualifications</td>
                <td>${art.qualification}</td>
            </tr>
            <tr>
                <td>Username</td>
                <td>${art.username}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="update-delete-buttons">
        <c:url value="artistUpdate.jsp" var="artupdate">
            <c:param name="aid" value="${aid}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="aname" value="${aname}"/>
            <c:param name="dob" value="${dob}"/>
            <c:param name="gender" value="${gender}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="qualification" value="${qualification}"/>
            <c:param name="username" value="${username}"/>
        </c:url>
        <a href="${artupdate}">
		<input type="button" name="update" value="Update My Data">
	</a>


        <c:url value="artistDelete.jsp" var="artdelete">
            <c:param name="aid" value="${aid}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="aname" value="${aname}"/>
            <c:param name="dob" value="${dob}"/>
            <c:param name="gender" value="${gender}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="qualification" value="${qualification}"/>
            <c:param name="username" value="${username}"/>
        </c:url>
        <a href="${artdelete}">
		<input type="button" name="delete" value="Delete My Account">
	</a>

    </div>
</section>

<footer>
    <p>&copy; 2024 Music Store. All rights reserved.</p>
</footer>

</body>
</html>
