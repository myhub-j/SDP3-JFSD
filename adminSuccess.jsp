<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Success - Course Management</title>
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
        
        .course-action-button {
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

        .course-action-button:hover {
            background-color: #45a049;
        }

        h2 {
            margin-bottom: 20px;
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
        <h2>Welcome, Admin!</h2>
        <p>Here are the available courses:</p>

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
                // Sample course data
                String[][] sampleCourses = {
                    {"Data Structures", "CS201", "Dr. Alice Green", "Mon/Wed 10:00-11:30 AM"},
                    {"Algorithms", "CS202", "Prof. Bob White", "Tue/Thu 1:00-2:30 PM"},
                    {"Computer Networks", "CS301", "Dr. Carol Black", "Mon/Fri 3:00-4:30 PM"},
                    {"Operating Systems", "CS302", "Ms. Dana Blue", "Wed/Fri 10:00-11:30 AM"},
                    {"Web Programming", "CS401", "Dr. Eva Red", "Tue 9:00-10:30 AM"},
                    {"Software Engineering", "CS402", "Prof. Frank Yellow", "Thu 2:00-3:30 PM"},
                    {"Database Systems", "CS501", "Dr. Grace Violet", "Mon 1:00-2:30 PM"},
                    {"Machine Learning", "CS502", "Ms. Helen Orange", "Wed 3:00-4:30 PM"}
                };

                // Displaying sample course data
                for (String[] course : sampleCourses) {
            %>
            <tr>
                <td><%= course[0] %></td>
                <td><%= course[1] %></td>
                <td><%= course[2] %></td>
                <td><%= course[3] %></td>
                <td>
                    <a href="EditCourseServlet?courseCode=<%= course[1] %>">Edit</a> | 
                    <a href="DeleteCourseServlet?courseCode=<%= course[1] %>">Delete</a>
                </td>
            </tr>
            <%
                    }
            %>
        </table>

        <!-- Button to add new courses -->
        <a href="addCourse.jsp" class="course-action-button">Add New Course</a>
    </div>
</body>
</html>
