<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        
        header {
            background: linear-gradient(to bottom, #333333, #222222, #111111);
            color: #fff;
            padding: 10px 20px;
        }
        .login-buttons {
            position: absolute;
            top: 20px;
            right: 10px;
        }
        .login-buttons a {
            padding: 5px 15px;
            color: white;
            text-decoration: none;
            margin-left: 5px;
            border-radius: 5px;
        }
        .login-buttons i {
            font-size: 24px;
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
            margin-top: 20px;
            padding: 0 20px;
        }
        .section-title {
            margin-top: 30px;
            font-size: 24px;
            color: #333;
        }
        .equipment-list, .music-albums, .show-tickets {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .equipment-item, .show-ticket, .music-album {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .equipment-item h2, .show-ticket h2, .music-album h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .equipment-item p, .show-ticket p, .music-album p {
            font-size: 16px;
            color: #666;
        }
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            color: #fff;
            bottom: 0;
            width: 100%;
        }
        img{
        	max-width: 200px;
        }
    </style>
</head>
<body>
  
    <header>
        <h1>Symphony</h1>
        <div class="login-buttons">
            <a href="artistaccount.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a>
        </div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    
    <main>
       
        <section>
            <h2 class="section-title">Equipment for Sale</h2>
            <div class="equipment-list">
                <div class="equipment-item">
                    <h2>Electric Guitar</h2>
                    <img alt="" src="images/guitar.jpg"></img>
                    <p>High-quality electric guitar with amplifier included. Perfect for gigs and performances.</p>
                    <p>Price: $500</p>
                </div>
                <div class="equipment-item">
                    <h2>Drum Set</h2>
                     <img alt="" src="images/drum.jpg"></img>
                    <p>Professional drum set with cymbals and stool. Ideal for drummers of all levels.</p>
                    <p>Price: $800</p>
                </div>
                <div class="equipment-item">
                    <h2>Violin</h2>
                     <img alt="" src="images/violin.jpg"></img>
                    <p>This violin, crafted from fine woods, offers a rich, resonant tone, perfect for musicians of all levels.</p>
                    <p>Price: $700</p>
                </div>
                <div class="equipment-item">
                	<h2>Piano</h2>
					<img alt="" src="images/piano.png"></img>
					<p>This grand piano, meticulously handcrafted, delivers exquisite sound quality, ideal for both beginners and seasoned pianists.</p>
					<p>Price: $5000</p>
                </div>
                
            </div>
        </section>

       
        <section>
            <h2 class="section-title">Music Albums</h2>
            <div class="music-albums">
                <div class="music-album">
                    <h2>Pop Hits</h2>
                    <img alt="" src="images/pop.jpg"></img>
                    <p>Latest collection of popular pop songs. Includes top hits from various artists.</p>
                    <p>Price: $20</p>
                </div>
                <div class="music-album">
                    <h2>Rock Classics</h2>
                    <img alt="" src="images/rock.jpg"></img>
                    <p>Classic rock album featuring iconic tracks from legendary rock bands.</p>
                    <p>Price: $25</p>
                </div>
                <div class="music-album">
                	<h2>Best of Jazz</h2>
                	<img alt="" src="images/ja.jpeg"></img>
					<p>Experience the timeless allure of jazz with this classic compilation album, showcasing the greatest hits from jazz legends.</p>
					<p>Price: $30</p>
                </div>
                <div class="music-album">
                	<h2>Electronic Essentials</h2>
                	<img alt="" src="images/elect.jpg"></img>
					<p>Essential electronic music compilation showcasing timeless tracks from pioneering artists.</p>
					<p>Price: $30</p>
                </div>
             
            </div>
        </section>

        
        <section>
            <h2 class="section-title">Upcoming Shows</h2>
            <div class="show-tickets">
                <div class="show-ticket">
                    <h2>Rock Concert</h2>
                    <img alt="" src="images/rc.jpg"></img>
                    <p>Date: August 15, 2024</p>
                    <p>Location: Symphony Hall</p>
                    <p>Price: $50</p>
                </div>
                <div class="show-ticket">
                    <h2>Jazz Night</h2>
                    <img alt="" src="images/jazz.jpg"></img>
                    <p>Date: September 5, 2024</p>
                    <p>Location: Jazz Club</p>
                    <p>Price: $30</p>
                </div>
                <div>
                	
                </div>
                
            </div>
        </section>
    </main>
<br>
<br>
   
    <footer>
        <p>&copy; 2024 Music Store. All rights reserved.</p>
    </footer>
</body>
</html>
