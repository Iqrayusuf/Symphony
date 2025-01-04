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
    display: inline-block; /* Display options side-by-side */
    margin: 10px; /* Add margin between options */
  }
  
  input[type="radio"] {
    opacity: 100; 
  }
  
  .radio-option img {
    width: 100px; /* Adjust image width as needed */
    margin-right: 10px; /* Add margin between image and text */
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
    <h2>PAYMENT GATEWAY</h2>
    <form action="pay" method="post">
        <label for="id" name="pid">Payment ID:</label>
        <input type="text" id="id" name="id" required>
        <label for="tel"> Mobile Number:</label>
        <input type="tel" id="tel" name="tel" maxlength="15" required>
        <br> <br>
        <button type="submit" >Pay Now</button>
    </form>
</body>
</html>