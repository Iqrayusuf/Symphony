<!DOCTYPE html>
<html>
<!--
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
-->
<head>
    <title>Update/Delete Music</title>
    <style>
        body {
    	   background-image: url('images/img5.jpg'); /* Specify the URL of your background image */
     	   background-repeat: no-repeat; /* Prevent the background image from repeating */
     	    background-size: cover; /* Cover the entire background */
            background-color: #a76d3c; /* Slightly lighter brown background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Professional font */
            margin: 0;
            padding: 0;
        }
        table {
            border-collapse: collapse;
            width: 50%;
            margin: auto;
            background-color: #a76d3c; /* Matching brown table background */
            border: 3px solid #633e00; /* Dark brown border */
            border-radius: 10px; /* Curved corners */
        }
        th, td {
            border: 1px solid #633e00; /* Dark brown border */
            padding: 8px;
            text-align: left;
            color: #fff; /* White text */
        }
        th {
            background-color: #4d2600; /* Dark brown table header */
        }
        h2 {
            text-align: center;
            color: #ffffff; /* White text */
            margin-top: 20px;
        }
        form {
            margin-bottom: 20px;
        }
        .button-container {
            text-align: center;
            margin-top: 10px; /* Add a small margin */
        }
        input[type="submit"] {
            background-color: #4d2600; /* Brown button background */
            color: #fff; /* White button text */
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Professional font */
        }
        input[type="submit"]:hover {
            background-color: #633e00; /* Darker brown button background on hover */
        }
        .right-corner {
        position: fixed;
        bottom: 10px;
        left: 50%;
        transform: translateX(-50%);
    }
    </style>
</head>
<body>
    <h2>Update Music</h2>
    <form method="post" action="updateDelete">
        <table>
            <tr>
                <th>Field</th>
                <th>Information</th>
            </tr>
            <tr>
                <td>Music ID:</td>
                <td><input type="text" name="musicID"></td>
            </tr>
            <tr>
                <td>Music Name:</td>
                <td><input type="text" name="musicName"></td>
            </tr>
            <tr>
                <td>Singer Name:</td>
                <td><input type="text" name="singerName"></td>
            </tr>
            <tr>
                <td>Composer Name:</td>
                <td><input type="text" name="composerName"></td>
            </tr>
            <tr>
                <td>Genre:</td>
                <td><input type="text" name="genre"></td>
            </tr>
        </table>
        <input type="hidden" name="action" value="update">
        <div class="button-container">
            <input type="submit" value="Update Data">
        </div>
    </form>

    <h2>Delete Music</h2>
<form method="post" action="updateDelete" onsubmit="return confirm('Are you sure you want to delete this music?');">
    <table>
        <tr>
            <td>Music ID:</td>
            <td><input type="text" name="musicID"></td>
        </tr>
    </table>
    <input type="hidden" name="action" value="delete"> 
    <div class="button-container">
        <input type="submit" value="Delete Data">
    </div>
</form>
    
   
     <form action="${pageContext.request.contextPath}/updateDelete" >  </form>
     
 <div class="right-corner">
    <form action="${pageContext.request.contextPath}/retrieveMusic">  
        <input type="submit" value="View Music Album" class="button-gap" />
    </form>
</div>

</body>
</html>

