<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result & Course Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        
        .container {
            text-align: center;
            position: relative;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
        }
        
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        
        th {
            background-color: #4CAF50;
            color: white;
        }
        
        .course-selection-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            display: block;
            margin: 20px auto;
        }

        .course-selection-button:hover {
            background-color: #45a049;
        }
        
        h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if("login".equals(username) && "1234".equals(password)) {
        %>
            <h2>Welcome, <%= username %>!</h2>
            <p>Login successful! Below are the available courses:</p>

            <!-- Fetch and display the list of courses -->
            <table>
                <tr>
                    <th>Course Name</th>
                    <th>Course Code</th>
                    <th>Instructor</th>
                    <th>Time</th>
                    <th>Action</th>
                </tr>
                <%
                    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/courses", "root", "root")) {
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery("SELECT * FROM courses");
                        
                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("courseName") %></td>
                    <td><%= rs.getString("courseCode") %></td>
                    <td><%= rs.getString("instructor") %></td>
                    <td><%= rs.getString("time") %></td>
                    <td><a href="RegisterCourseServlet?courseCode=<%= rs.getString("courseCode") %>">Register</a></td>
                </tr>
                <%
                        }
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        <%
            }
        %>
    </div>
</body>
</html>
