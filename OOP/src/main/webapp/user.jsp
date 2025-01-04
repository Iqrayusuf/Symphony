<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
    /* General body styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

header {
    background: linear-gradient(to bottom, #333333, #222222, #111111);
    color: #fff;
    padding: 20px;
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

.profile-info {
    display: flex;
    align-items: center;
    padding: 20px;
    background-color: #fff;
    margin: 20px;
    border-radius: 8px;
}

.profile-picture img {
    border-radius: 50%;
    width: 200px;
    height: 200px;
}

.user-details h2 {
    margin-left: 20px;
}

.user-details p {
    margin-left: 20px;
    color: #666;
}

button {
    margin-left: 20px;
    padding: 10px 20px;
    background-color: #5cb85c;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.recent-purchases, .favorites {
    background-color: #fff;
    margin: 20px;
    padding: 20px;
    border-radius: 8px;
}

h2 {
    color: #333;
}

ul {
    list-style-type: none;
    padding: 0;
}

li {
    padding: 8px 0;
    border-bottom: 1px solid #ccc;
}

li:last-child {
    border-bottom: none;
}

footer {
    text-align: center;
    padding: 10px 0;
    background-color: #333;
    color: #fff;
    bottom: 0;
    width: 100%;
}

.login-buttons {
            position: absolute;
            top: 20px;
            right: 10px;
        }

        .login-buttons a {
            padding: 5px 15px;
            background-color: grey;
            color: white;
            text-decoration: none;
            margin-left: 5px;
            border-radius: 5px;
        }
    
    </style>
</head>
<body>
    <header>
    <h1>Symphony</h1>
        <div class="login-buttons">
            <a href="artistlogin.jsp">Login</a>
            <a href="artistInsert.jsp">Sign Up</a>
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
    
    
    <h1><center>User Profile</center></h1>

    <section class="profile-info">
        <div class="profile-picture">
            <img src="http://placekitten.com/200/200" alt="User">
        </div>
        <div class="user-details">
            <h2>John Doe</h2>
            <p>Email: johndoe@example.com</p>
            <p>Location: New York, USA</p>
            <button>Edit Profile</button>
        </div>
    </section>

    <section class="recent-purchases">
        <h2>Recent Purchases</h2>
        <ul>
            <li>Album 1 - Artist A</li>
            <li>Album 2 - Artist B</li>
            <li>Album 3 - Artist C</li>
        </ul>
    </section>

    <section class="favorites">
        <h2>Favorite Albums</h2>
        <ul>
            <li>Album A - Artist X</li>
            <li>Album B - Artist Y</li>
            <li>Album C - Artist Z</li>
        </ul>
    </section>

    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>
</body>
</html>
