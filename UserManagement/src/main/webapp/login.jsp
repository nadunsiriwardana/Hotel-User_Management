<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Admin Login</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .left-side {
            background: url('images/hotel.jpg') no-repeat center center;
            background-size: cover;
            color: white;
        }
        .overlay {
            background-color: rgba(0, 0, 0, 0.5);
            height: 100%;
            width: 50%;
        }
        .steps {
            padding: 40px;
        }
        .step-btn {
            margin: 10px 0;
            background-color: white;
            border: none;
            border-radius: 30px;
            padding: 10px 20px;
            color: black;
            font-weight: bold;
            display: inline-block;
            text-align: center;
            cursor: pointer;
            text-decoration: none;
        }
        .step-btn:hover {
            background-color: #c2185b;
            color: white;
        }
        .login-form {
            padding: 40px 20px;
            width: 100%;
            max-width: 400px;
            margin: 0 auto;
        }
        .btn-black {
            background-color: black;
            color: white;
            border: none;
        }
        .btn-black:hover {
            background-color: #333;
        }
        @media (max-width: 767.98px) {
            .left-side {
                display: none;
            }
            .overlay {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row min-vh-100">
        <!-- Left Side -->
        <div class="col-md-6 d-none d-md-block left-side">
            <div class="overlay d-flex align-items-center justify-content-center">
                <div class="steps text-center">
                    <h2>Set up your account in Here !!</h2>
                    <a href="UserInsert.jsp" class="step-btn">Register</a><br>
                </div>
            </div>
        </div>

        <!-- Right Side -->
        <div class="col-md-6 bg-white d-flex align-items-center">
            <div class="login-form">

                <h3 class="mb-4 text-center">Hotel Admin Login</h3>

                <!-- Success/Error Messages -->
                <%
                    String success = (String) request.getAttribute("success");
                    String error = (String) request.getAttribute("error");
                    if (success != null) {
                %>
                    <div class="alert alert-success text-center" role="alert">
                        ✅ <strong>Profile Updated!</strong><br>Your information has been saved successfully.
                    </div>
                <% } else if (error != null) { %>
                    <div class="alert alert-danger text-center" role="alert">
                        ❌ <strong>Update Failed!</strong><br>Something went wrong. Please try again.
                    </div>
                <% } %>

                <form action="log" method="post">
                    <div class="mb-3">
                        <input type="text" name="uid" class="form-control form-control-lg rounded-pill" placeholder="Username" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" name="pword" class="form-control form-control-lg rounded-pill" placeholder="Password" required>
                    </div>
                    <div class="d-flex justify-content-between align-items-center">
                        <a href="#" class="text-decoration-none">Forgot password?</a>
                    </div>
                    <div class="mt-4">
                        <button type="submit" name="submit" class="btn btn-black btn-lg w-100 rounded-pill">Login</button>
                    </div>
                </form>

                <div class="text-center mt-3">
                    <small>Don't have an account? <a href="UserInsert.jsp">Register here</a></small>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
