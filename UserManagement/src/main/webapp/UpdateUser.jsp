<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Paradise - Update User</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f5f8ff;
            margin: 0;
            padding: 0;
        }

        .header-image {
            background: url('images/hotel.jpg') center/cover no-repeat;
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
        Update Your Details
    </div>

    <div class="form-container">
    <h1 class="user-profile-heading">Update Your Details</h1>
    
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String username = request.getParameter("uname");
            String password = request.getParameter("pass");
        %>

        <form action="update" method="post">
            User ID
            <input type="text" name="cusid" value="<%= id %>" readonly>

            Name
            <input type="text" name="name" value="<%= name %>">

            Email Address
            <input type="text" name="email" value="<%= email %>">

            Phone Number
            <input type="text" name="phone" value="<%= phone %>">

            User Name
            <input type="text" name="uname" value="<%= username %>">

            Password
            <input type="text" name="pass" value="<%= password %>">

            <input type="submit" name="submit" value="Update Your Account">
        </form>
    </div>

</body>
</html>
