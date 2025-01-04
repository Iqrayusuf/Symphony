<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Symphony Online Music Store</title>
<style>

/*
Name Raagul Gananathan
ITNUMBER IT22130020
Metro
*/
    body {
     	background-image: url('images/img1.jpg'); 
        background-repeat: no-repeat; 
        background-size: cover; 
        background-color: #a76d3c; 
        font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .button-gap {
        margin-top: 10px; 
    }
    table {
        border-collapse: collapse;
        width: 35%;
        margin: 80px auto; 
        background-color: #8B4513; 
        color: white; 
        border: 3px solid #000000; 
        border-radius: 10px; 
    }
    th, td {
        padding: 5px;
        border: 1px solid #000000; 
    }
    th {
        background-color: #4d2600; 
    }
    input[type="submit"], input[type="reset"] {
        background-color: #8B4513; 
        color: white; 
        border: none;
        padding: 8px 16px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #a76d3c; 
    }
    .center-form {
        display: flex;
        justify-content: center;
        margin-top: 20px; 
    }
</style>
<script>
    function validateForm() {
        var musicName = document.forms["musicForm"]["musicName"].value;
        var singerName = document.forms["musicForm"]["singerName"].value;
        var composerName = document.forms["musicForm"]["composerName"].value;
        var genre = document.forms["musicForm"]["genre"].value;
        
        var regex = /^[A-Za-z\s]+$/;
        
        if (!regex.test(musicName) || !regex.test(singerName) || !regex.test(composerName) || !regex.test(genre)) {
            alert("Please enter only alphabetic characters for all fields.");
            return false;
        }
        
        return true;
    }
</script>
</head>
<body> 
    <form name="musicForm" method="post" action="insertMusic.jsp" onsubmit="return validateForm();"> 
        <center> 
            <table border="1" cellpadding="5"> 
                <thead> 
                    <tr> 
                        <th colspan="2">Enter the music information here</th> 
                    </tr> 
                </thead>
                <tbody> 
                    <tr> 
                        <td>Music Name</td> 
                        <td><input type="text" name="musicName" pattern="[A-Za-z\s]+" title="Please enter only alphabetic characters." required /></td> 
                    </tr> 
                    <tr> 
                        <td>Singer Name</td> 
                        <td><input type="text" name="singerName" pattern="[A-Za-z\s]+" title="Please enter only alphabetic characters." required/></td> 
                    </tr> 
                    <tr> 
                        <td>Composer Name</td> 
                        <td><input type="text" name="composerName" pattern="[A-Za-z\s]+" title="Please enter only alphabetic characters." required/></td> 
                    </tr> 
                    <tr> 
                        <td>Genre</td> 
                        <td><input type="text" name="genre" pattern="[A-Za-z\s]+" title="Please enter only alphabetic characters." required/></td> 
                    </tr> 
                    <tr> 
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td> 
                    </tr>
                </tbody> 
            </table>
        </center>
    </form>
         
    <div class="center-form">
        <form action="${pageContext.request.contextPath}/retrieveMusic">  
            <input type="submit" value="View Music Album" class="button-gap" />
        </form>
    </div>
</body>
</html>
