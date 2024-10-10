<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up Page</title>
    <style>
        body {
            background-image: url('images/training-and-placement-cell.jpg'); /* Use relative path */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the background image */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white; /* Change text color for better visibility */
            position: relative; /* Required for positioning the buttons */
        }

        form {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.3);
            width: 300px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .back-button {
            position: absolute; /* Positioning it in relation to the body */
            bottom: 20px; /* Distance from the bottom */
            left: 20px; /* Distance from the left */
            background-color: transparent; /* Make the background transparent */
            border: none; /* Remove default button border */
            color: white; /* Text color */
            font-size: 16px; /* Font size */
            cursor: pointer; /* Pointer cursor */
        }

        .back-button:before {
            content: "← "; /* Unicode character for left arrow */
            font-size: 20px; /* Arrow size */
        }
    </style>
</head>
<body>
    <form action="signupSuccess.jsp" method="post">
        <h1>Sign Up</h1>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Register">
    </form>

    <button class="back-button" onclick="location.href='login.jsp'">Back</button>
</body>
</html>
