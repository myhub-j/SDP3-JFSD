<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"> <!-- Reference to external CSS -->
</head>
<body>
    <div class="button-container">
        <button class="button-admin" onclick="location.href='adminLogin.jsp'"><span>Admin</span></button>
        <button class="button-user" onclick="location.href='userLogin.jsp'"><span>User</span></button>
        <button class="button-about" onclick="location.href='about.jsp'"><span>About</span></button>
    </div>
    <div class="content">
        <h1>Student course selection and scheduling system</h1>
    </div>
</body>
</html>
