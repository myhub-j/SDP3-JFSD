<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/adminLogin.css"> <!-- Reference to external CSS file -->
</head>
<body>
    <form action="adminSuccess.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="Admin" readonly required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>

    <button class="back-button" onclick="location.href='home.jsp'">Back</button>
</body>
</html>
