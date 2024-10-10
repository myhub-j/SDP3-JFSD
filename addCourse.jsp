<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Course</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }

        input[type="text"], input[type="time"], input[type="submit"] {
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
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Course</h2>
        <form action="AddCourseServlet" method="post">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required>

            <label for="courseCode">Course Code:</label>
            <input type="text" id="courseCode" name="courseCode" required>

            <label for="instructor">Instructor:</label>
            <input type="text" id="instructor" name="instructor" required>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>

            <input type="submit" value="Add Course">
        </form>
        <a href="adminSuccess.jsp">Go Back to Admin Dashboard</a>
    </div>
</body>
</html>
