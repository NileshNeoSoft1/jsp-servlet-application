<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign-Up Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('Images/Dashboard.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
        }
        .signup-container {
            max-width: 400px;
            margin: 80px auto;
            background-color: rgba(44, 62, 80, 0.85);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }
        .form-control {
            background-color: #ecf0f1;
        }
        .btn-custom {
            background-color: #e74c3c;
            color: white;
        }
        .btn-custom:hover {
            background-color: #c0392b;
        }
        .login-link {
            margin-top: 20px;
            text-align: center;
        }
        .login-link a {
            color: #f1c40f;
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2 class="text-center mb-4">📝 Create Your Account</h2>

    <% String message = (String) request.getAttribute("message"); %>
    <% if (message != null) { %>
    <div class="alert alert-danger text-center" role="alert">
        <%= message %>
    </div>
    <% } %>

    <form action="register" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">👤 Username</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">🔒 Password</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-custom">Sign Up</button>
        </div>
    </form>

    <div class="login-link">
        <p>Already have an account? <a href="index.jsp">Login here</a></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
