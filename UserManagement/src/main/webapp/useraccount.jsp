<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> User Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f5f8ff;
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

        .profile-container {
            background-color: white;
            max-width: 700px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        td {
            padding: 12px 10px;
            font-size: 16px;
            border-bottom: 1px solid #ddd;
        }

        td:first-child {
            font-weight: bold;
            width: 40%;
            color: #333;
        }

        .update-button, .delete-button {
            display: inline-block;
            text-decoration: none;
            color: white;
            padding: 12px 24px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }

        .update-button {
            background-color: #0078D4;
        }

        .update-button:hover {
            background-color: #005fa3;
        }

        .delete-button {
            background-color: #d9534f;
        }

        .delete-button:hover {
            background-color: #c9302c;
        }
        
        .user-profile-heading {
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
    

    <div class="profile-container">
		<h1 class="user-profile-heading">User Profile</h1>
        <table>
            <c:forEach var="cus" items="${cusDetails}">

                <c:set var="id" value="${cus.id}" />
                <c:set var="name" value="${cus.name}" />
                <c:set var="email" value="${cus.email}" />
                <c:set var="phone" value="${cus.phone}" />
                <c:set var="username" value="${cus.username}" />
                <c:set var="password" value="${cus.password}" />

                <tr>
                    <td>User ID</td>
                    <td>${cus.id}</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td>${cus.phone}</td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>${cus.username}</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>${cus.password}</td>
                </tr>

            </c:forEach>
        </table>

        <!-- Update Button -->
        <c:url value="UpdateUser.jsp" var="userupdate">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="email" value="${email}" />
            <c:param name="phone" value="${phone}" />
            <c:param name="uname" value="${username}" />
            <c:param name="pass" value="${password}" />
        </c:url>

        <a href="${userupdate}" class="update-button">Update Your Profile</a>

        <!-- Delete Button -->
        <c:url value="deleteuser.jsp" var="userdelete">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="email" value="${email}" />
            <c:param name="phone" value="${phone}" />
            <c:param name="uname" value="${username}" />
            <c:param name="pass" value="${password}" />
        </c:url>

        <a href="${userdelete}" class="delete-button" onclick="return confirm('Are you sure you want to delete your account?');">Delete Account</a>
    </div>

</body>
</html>
