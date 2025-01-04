<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artist Music Upload</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
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
    display: block; /* Makes each link appear on a new line */
    padding: 5px 15px;
    background-color: #333; /* Dark background for better contrast */
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
        main {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            display: block;
            width: 100%;
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
            <a href="artistDetails.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
            <br>
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

    <h1><center>Upload Your Music</center></h1>

    <main>
        <form id="uploadForm" onsubmit="handleSubmit(event)">
            <div class="form-group">
                <label for="songTitle">Song Title:</label>
                <input type="text" id="songTitle" name="songTitle" required>
            </div>

            <div class="form-group">
                <label for="album">Album:</label>
                <input type="text" id="album" name="album">
            </div>

            <div class="form-group">
                <label for="genre">Genre:</label>
                <input type="text" id="genre" name="genre">
            </div>

            <div class="form-group">
                <label for="musicFile">Music File:</label>
                <input type="file" id="musicFile" name="musicFile" accept="audio/*" required>
            </div>

            <button type="submit">Upload</button>
        </form>
    </main>

    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>

    <script src="upload.js"></script>
    
</body>
</html>