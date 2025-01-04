<!-- IT22902320
AMRA FARIS -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Credit Card Payment</title>
    
    
<style>

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    background-image: url("https://wallpaperaccess.com/full/1913779.jpg");
}

form {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
}

h2 {
  font-family: Arial, sans-serif;  
  font-size: 2em;  
  font-weight: bold;  
  color: #333;  
  text-align: center;  
  margin: 10px 0;  
  padding: 5px;  
  border-bottom: 1px solid #ddd; 
  background-color: #f5f5f5;
}

input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.radio-option {
    display: inline-block; 
    margin: 10px; 
  }
  
  input[type="radio"] {
    opacity: 100; 
  }
  
  .radio-option img {
    width: 100px; 
    margin-right: 10px; 
  }

button {
    
  background-color: #0c238c; 
  border: none; 
  color: white; 
  padding: 15px 32px; 
  text-align: center; 
  text-decoration: none; 
  display: inline-block; 
  font-size: 20px; 
  margin: 20px 185px; 
  cursor: pointer; 
  width: 400px;
  height: 50px;
  

  transition: 0.3s ease-in-out; /* Add hover transition effect */
  
  &:hover {
    background-color: #8c0c0c; /* Change background color on hover */
  }
}

button:hover {
    background-color: #0056b3;
}
    
    </style>
</head>
<body>
    <h2>Create Data</h2>
    <form action="pinsert" method="post">
        <h3> Billing Details </h3>
        <label for="id" name="pid">Payment ID:</label>
        <input type="text" id="id" name="id" required>
        <label for="fname">Full name:</label>
        <input type="text" id="fname" name="fname" required>
        <label for="dop">Date of purchase:</label>
        <input type="date" id="cvv" name="dop" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <label for="tel"> Mobile Number:</label>
        <input type="tel" id="tel" name="tel" maxlength="15" required>
        <br> <br>
       
     
        <h3> Payment Information </h3>
            <label for="ctype" name="ctype">Card Type:</label>
              <div class="radio-option">
                 <input type="radio" id="option1" name="cardtype" value="Visa">
                 <img src="https://th.bing.com/th/id/OIP.fnrR-1T7tKs7X0EZCYBRyQHaEr?w=570&h=360&rs=1&pid=ImgDetMain" alt="Visa" width="100" height="50">
             </div>
             <div class="radio-option">
                 <input type="radio" id="option2" name="cardtype" value="Mastercard">
                 <img src="https://pngimg.com/uploads/mastercard/mastercard_PNG23.png" alt="Mastercard" width="100" height="50">
            </div>
       <br>
       <br>


        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" required>
        <label for="expiryDate">Expiry Date:</label>
        <input type="date" id="expiryDate" name="expiryDate" required>
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" required> 
        <br><br>
        <button type="submit" >Create Data</button>
    </form>
</body>
</html>