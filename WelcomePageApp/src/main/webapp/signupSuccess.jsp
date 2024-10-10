<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            background-color: #282c34;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        h1 {
            font-size: 30px;
            margin-bottom: 20px;
        }

        .success-message {
            margin-bottom: 20px;
            font-size: 20px;
        }

        .redirect-message {
            margin-bottom: 20px;
            font-size: 16px;
        }

        .redirect-link {
            color: #4CAF50;
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h1>Registration Successful</h1>
    <div class="success-message">You have successfully registered!</div>
    <div class="redirect-message">Redirecting to your home page...</div>
    
    <script>
        // Redirect to home.jsp after 3 seconds
        setTimeout(function() {
            window.location.href = 'home.jsp';
        }, 3000);
    </script>
</body>
</html>
