<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: #f9f9f9;
    }
    .container {
        background: white;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        border-radius: 10px;
        overflow: hidden;
        display: flex;
        max-width: 700px;
    }
    .image {
        width: 50%;
        background: url('images/success.jpg') center/cover no-repeat;
    }
    .content {
        padding: 30px;
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .content h1 {
        margin-bottom: 10px;
    }
    .content p {
        color: #666;
        margin-bottom: 20px;
    }
    .buttons {
        display: flex;
        gap: 10px;
        margin-bottom: 20px;
    }
    .buttons button {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        cursor: pointer;
    }
    .donate-btn {
        background-color: #000;
        color: white;
    }
    .follow-btn {
        background-color: #333;
        color: white;
    }
    .credit {
        font-size: 14px;
        color: #999;
        display: flex;
        align-items: center;
        gap: 5px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="image"></div>
        <div class="content">
            <h1>Great..Your changes are live now !</h1>
            <p><strong>🎉 Success!</strong><br> Your profile was updated with the latest changes.</p>
            <div class="buttons">
                <button class="donate-btn">Back to Dashboard</button>
                <button class="follow-btn">Try Again</button>
            </div>
            
        </div>
    </div>
</body>
</html>
