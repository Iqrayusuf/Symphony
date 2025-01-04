<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
/* Resetting default margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    color: #333;
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

.banner {
    background-image: url('images/he.jpg');
    background-size: cover;
    background-position: center;
    text-align: center;
    padding: 100px 0;
    color: #fff;
}

.banner-content {
    max-width: 600px;
    margin: 0 auto;
}

.featured-albums {
   /* background-image: url('images/back.jpg');*/
   background: linear-gradient(to bottom right, #000000 0%, #FFFFFF 20%, #FFFFFF 80%, #000000 100%);
    background-size: cover;
    background-position: center;
    padding: 100px 0;
    text-align: center;
    color: black;
}

footer {
    background: linear-gradient(to bottom, #333333, #222222, #111111);
    color: #fff;
    padding: 20px 0;
    text-align: center;
}

.featured-albums ul {
            padding: 0;
            list-style: none;
        }

        .featured-albums li {
            display: inline-block;
            margin-right: 45px;
            max-width: 400px; /* Max width for each album */
            text-align: center;
        }

        .featured-albums img {
            max-width: 100%;
            height: auto;
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
            <a href="login.jsp">Login</a>
            <a href="customerinsert.jsp">Sign Up</a>
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
    <section class="banner">
        <h2>Welcome to our Music Store!</h2>
        <p>Find your favorite music here.</p>
        <p>And buy all you favorite music equipments and tickets for musical show</p>
    </section>
    <section class="featured-albums">
 
        <h2>Facilities</h2>
         <br>
       
       <marquee behavior="scroll" direction="left" scrollamount="13">
            <ul>
                <li>
                    <img src="images/buy.jpg" alt="Album 1">
                    <br>
                    <h4>Buy Music Equipments</h4>
                </li>
                <li>
                    <img src="images/rent.jpg" alt="Album 2">
                    <br>
                    <h4>Rent Music Equipments</h4>
                </li>
                <li>
                    <img src="images/play.jpg" alt="Album 3">
                    <br>
                    <h4>Add your favorite songs to a playlist</h4>
                </li>
                <li>
                    <img src="images/ticket.jpg" alt="Album 3">
                    <br>
                    <h4>Grab a ticket for your favorite Musical Show</h4>
                </li>
               
            </ul>
        </marquee>
    </section>
    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>
</body>
</html>


