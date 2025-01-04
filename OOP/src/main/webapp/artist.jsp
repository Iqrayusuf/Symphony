<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    background-color: #5cb85c; /* Green background for visibility */
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
            position: fixed;
            bottom: 0;
            width: 100%;
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
    
    <h1>Artist Details</h1>
    <section class="artist-profile">
        <div class="artist-info">
            <h2>Artist Name</h2>
            <p>Email: artist@example.com</p>
            <p>Location: New York, USA</p>
            <!-- Add more details as needed -->
        </div>
    </section>

    <section class="artist-music">
        <h2>Uploaded Music</h2>
        <ul>
            <li><a href="#">Song 1</a></li>
            <li><a href="#">Song 2</a></li>
            <li><a href="#">Song 3</a></li>
            <!-- Display more songs here -->
        </ul>
    </section>

    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>
</body>
</html>
