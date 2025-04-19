<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f8ff;
            margin: 0;
            padding: 0;
        }

        .header-image {
            background: url('images/themes.jpg') center/cover no-repeat;
            height: 250px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 36px;
            font-weight: bold;
            text-shadow: 2px 2px 5px #000;
        }

        .form-container {
            background-color: white;
            max-width: 600px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.15);
        }

        form input[type="text"], form input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 20px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        form input[type="submit"] {
            background-color: #0078D4;
            color: white;
            border: none;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: #005fa3;
        }
        
        user-profile-heading {
		    text-align: center;
		    font-size: 36px;
		    font-weight: bold;
		    color: #333;
		    margin-top: 5px;
		    margin-bottom: 30px;
		    position: relative;
		}
		
		.user-profile-heading::after {
		    content: '';
		    display: block;
		    width: 80px;
		    height: 4px;
		    background-color: #0078D4;
		    margin: 12px auto 0 auto;
		    border-radius: 2px;
		}
    </style>
</head>
<body>

    <div class="header-image">
        
    </div>

    <div class="form-container">
    <h1 class="user-profile-heading">Create New Account</h1>
    
        <form action="insert" method="post">
            Name of the User
            <input type="text" name="name">

            User Email Address
            <input type="text" name="email">

            Phone Number
            <input type="text" name="phone">

            User Name
            <input type="text" name="uid">

            Password
            <input type="text" name="pwd">

            <input type="submit" name="submit" value="Create a User Account">
        </form>
    </div>

</body>
</html>
