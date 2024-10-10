<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"> <!-- Reference to external CSS file -->
</head>
<body>
    <form action="usersuccess.jsp" method="post">
        <h1>Login</h1>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">

        <button class="signup-button" onclick="location.href='signup.jsp'">Sign Up</button>
    </form>

    <button class="back-button" onclick="location.href='home.jsp'">Back</button>
</body>
</html>
