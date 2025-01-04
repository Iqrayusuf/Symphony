<!--
Name M.Y iqra
ITNUMBER IT22071620
Metro
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
     <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url(images/Dj.jpg) no-repeat;
            background-size: cover;
            background-position: center;
        }

        .wrapper {
            width: 420px;
            background: transparent;
            border: 2px solid rgba(255, 255, 255, .2);
            backdrop-filter: blur(9px);
            color: #fff;
            border-radius: 12px;
            padding: 30px 40px;
        }

        .wrapper h1 {
            font-size: 36px;
            text-align: center;
        }

        .wrapper .input-box {
            position: relative;
            width: 100%;
            height: 50px;
            margin: 30px 0;
        }

        .input-box input {
            width: 100%;
            height: 100%;
            background: transparent;
            border: none;
            outline: none;
            border: 2px solid rgba(255, 255, 255, .2);
            border-radius: 40px;
            font-size: 16px;
            color: #fff;
            padding: 20px 45px 20px 20px;
        }

        .input-box input::placeholder {
            color: #fff;
        }

        .input-box i {
            position: absolute;
            right: 20px;
            top: 30%;
            transform: translate(-50%);
            font-size: 20px;
        }

        .wrapper .remember-forgot {
            display: flex;
            justify-content: space-between;
            font-size: 14.5px;
            margin: -15px 0 15px;
        }

        .remember-forgot label input {
            accent-color: #fff;
            margin-right: 3px;
        }

        .remember-forgot a {
            color: #fff;
            text-decoration: none;
        }

        .remember-forgot a:hover {
            text-decoration: underline;
        }

        .wrapper .btn {
            width: 100%;
            height: 45px;
            background: #fff;
            border: none;
            outline: none;
            border-radius: 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            cursor: pointer;
            font-size: 16px;
            color: #333;
            font-weight: 600;
        }

        .wrapper .register-link {
            font-size: 14.5px;
            text-align: center;
            margin: 20px 0 15px;
        }

        .register-link p a {
            color: #fff;
            text-decoration: none;
            font-weight: 600;
        }

        .register-link p a:hover {
            text-decoration: underline;
        }
    </style>
    
    <script>
        function validateForm() {
            let dob = document.forms["registrationForm"]["dob"].value;
            let phone = document.forms["registrationForm"]["phone"].value;
            let dobPattern = /^\d{4}-\d{2}-\d{2}$/;
            let phonePattern = /^\d{10}$/;

            if (!dob.match(dobPattern)) {
                alert("Please enter a valid date of birth in YYYY-MM-DD format.");
                return false;
            }

            if (!phone.match(phonePattern)) {
                alert("Please enter a valid 10-digit phone number.");
                return false;
            }

            return true;
        }
        
        // Function to display the success message
        function showSuccessMessage() {
            alert("Account has been successfully created!");
        }
    </script>
</head>
<body>
<div class="wrapper">
    <form name="registrationForm" action="cinsert" method="post" onsubmit="return validateForm()">
        <h1>Registration Form</h1>
        <div class="input-box">
            Name <input type="text" name="name" required pattern="[A-Za-z\s]+" title="Name should only contain letters.">
        </div>
        <div class="input-box">
            DOB <input type="text" name="dob" required placeholder="YYYY-MM-DD" pattern="\d{4}-\d{2}-\d{2}" title="Date of Birth should be in YYYY-MM-DD format.">
        </div>
        <div class="input-box">
            Gender <input type="text" name="gender" required pattern="Male|Female|Other" title="Gender should be Male, Female, or Other.">
        </div>
        <div class="input-box">
            Phone <input type="text" name="phone" required pattern="\d{10}" title="Phone number should be a 10-digit number.">
        </div>
        <div class="input-box">
            Email <input type="email" name="email" required>
        </div>
        <div class="input-box">
            Username <input type="text" name="uid" required>
        </div>
        <div class="input-box">
            Password <input type="password" name="psw" required minlength="8" title="Password should be at least 8 characters long.">
        </div>
        <button type="submit"  onclick="showSuccessMessage()" class="btn" name="submit" value="Create Customer">Create Account</button>
        <p>Are you an Artist? <a href="artistInsert.jsp">Register as an Artist</a>
    </form>
</div>
</body>
</html>
