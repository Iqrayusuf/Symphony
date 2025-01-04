<!-- IT22902320
AMRA FARIS -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>

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
    
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
<table> 
<c:forEach var="cus" items="${cusDetails}">

<c:set var="pid" value="${cus.getPaymentID()}"/>
<c:set var="fname" value="${cus.getFullName()}"/>
<c:set var="dop" value="${cus.getDateOfPurchase()}"/>
<c:set var="email" value="${cus.getEmail()}"/>
<c:set var="tel" value="${cus.getMobileNo()}"/>
<c:set var="CardType" value="${cus.getCardType()}"/>
<c:set var="CardNum" value="${cus.getCardNum()}"/>
<c:set var="expiryDate" value="${cus.getExpiryDate()}"/>
<c:set var="cvv" value="${cus.getCVV()}"/>

   
<tr> 
    <td>Payment ID</td>
    <td>${cus.getPaymentID()}</td>
</tr>
   
<tr> 
    <td>Full Name</td>
    <td>${cus.getFullName()}</td>
</tr>
   
<tr> 
    <td>Date of Purchase</td>
    <td>${cus.getDateOfPurchase()}</td>
</tr>
   
<tr> 
    <td>Email</td>
    <td>${cus.getEmail()}</td>
</tr>
   
<tr> 
    <td>Mobile No</td>
    <td>${cus.getMobileNo()}</td>
</tr>
   
<tr> 
    <td>Card Type</td>
    <td>${cus.getCardType()}</td>
</tr>
   
<tr> 
    <td>Card Number</td>
    <td>${cus.getCardNum()}</td>
</tr>
   
<tr> 
    <td>Expiry Date</td>
    <td>${cus.getExpiryDate()}</td>
</tr>
   
<tr> 
    <td>CVV</td>
    <td>${cus.getCVV()}</td>
</tr>
   
</c:forEach>
</table>

<c:url value="updatecustomer.jsp" var="cusupdate">
   <c:param name="pid" value="${pid}"/>
   <c:param name="fname" value="${fname}"/>
   <c:param name="dop" value="${dop}"/>
   <c:param name="email" value="${email}"/>
   <c:param name="tel" value="${tel}"/>
   <c:param name="CardType" value="${CardType}"/>
   <c:param name="CardNum" value="${CardNum}"/>
   <c:param name="expiryDate" value="${expiryDate}"/>
   <c:param name="cvv" value="${cvv}"/>

</c:url>

<br>

<a href="${cusupdate}">
<input type="button" name="update" value="Update My Data">
</a>

<br> <br>

<c:url value="deletecustomer.jsp" var="cusdelete">
   <c:param name="pid" value="${pid}"/>
   <c:param name="fname" value="${fname}"/>
   <c:param name="dop" value="${dop}"/>
   <c:param name="email" value="${email}"/>
   <c:param name="tel" value="${tel}"/>
   <c:param name="CardType" value="${CardType}"/>
   <c:param name="CardNum" value="${CardNum}"/>
   <c:param name="expiryDate" value="${expiryDate}"/>
   <c:param name="cvv" value="${cvv}"/>

</c:url>

<a href="${cusdelete}"> 
<input type="button" name="delete" value="Delete My Account">
</a>

</body>
</html>                      
