<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <!--
Name M.Y iqra
ITNUMBER IT22071620
Metro
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .submit-button {
        background-color: blue;
        color: white;
        font-size: 16px;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .submit-button:hover {
        background-color: darkblue;
    }
</style>

</head>
<body>    <h1 align = "center"> Your profile</h1>
           <br>
          <table border ="2" align="center">
          <c:forEach var="cus" items ="${cusDetails }">
				<c:set var="id" value= "${cus.id}"/>
				<c:set var="name" value= "${cus.name}"/>
				<c:set var="dob" value= "${cus.dob}"/>
				 <c:set var="gender" value= "${cus.gender}"/>
				 <c:set var="phone" value= "${cus.phone}"/>
				 <c:set var="email" value= "${cus.email}"/>
				 <c:set var="username" value= "${cus.username}"/>
				 <c:set var="password" value= "${cus.password}"/>
          
         <tr>
		<td>Customer ID</td>
		<td>${cus.id }</td>
		</tr>
	
		<tr>
		<td>Customer Name</td>
		<td>${cus.name }</td>
		</tr>
	
		<tr>
		<td>Customer DOB</td>
		<td>${cus.dob }</td>
		</tr>
		
		<tr>
		<td>Customer Gender</td>
		<td>${cus.gender }</td>
		</tr>
		
		<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
		</tr>
		
		<tr>
		<td>Customer Email</td>
		<td>${cus.email }</td>
		</tr>
	
		<tr>
		<td>Customer Username</td>
		<td>${cus.username}</td>
		</tr>
          
         <tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
		</tr> 
          
          
          </c:forEach>
          </table>
          
          <br>
          
          <div align = "center"> 
          <c:url value = "updatecustomer.jsp" var="cusupdate">
              <c:param name="id" value ="${id}"></c:param>
              <c:param name="name" value ="${name}"></c:param>
              <c:param name="dob" value ="${dob}"></c:param>
              <c:param name="gender" value ="${gender}"></c:param>
              <c:param name="phone" value ="${phone}"></c:param>
              <c:param name="email" value ="${email}"></c:param>
              <c:param name="uname" value ="${username}"></c:param>
              <c:param name="pass" value ="${password}"></c:param>
          
          </c:url>
          <a href = "${cusupdate}">
          <input type = "button" name = "update" value ="update My data" class = "submit-button">
          </a>
          <br>
          <br>
          </div>
          <div align = center>
          <c:url value ="deletecustomer.jsp" var="cusdelete">
             <c:param name="id" value ="${id}"></c:param>
              <c:param name="name" value ="${name}"></c:param>
              <c:param name="dob" value ="${dob}"></c:param>
              <c:param name="gender" value ="${gender}"></c:param>
              <c:param name="phone" value ="${phone}"></c:param>
              <c:param name="email" value ="${email}"></c:param>
              <c:param name="uname" value ="${username}"></c:param>
              <c:param name="pass" value ="${password}"></c:param>
          
          </c:url>
           <a href = "${cusdelete}">
           <input type = "button" name = "delete" value ="Delete my Account" class = "submit-button">
           </a>
           </div>
</body>
</html>





