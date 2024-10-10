<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Use column layout for vertical stacking */
            justify-content: space-between; /* Space between items */
            height: 100vh;
            background-image: url('images/1234.jpg'); /* Set the background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
        }

       

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            margin: 10px 0; /* Add margin for spacing */
            display: inline-block; /* Change to inline-block to align with other elements */
        }

        .button:hover {
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

        .logout-button {
            margin-top: auto; /* Pushes the button to the bottom */
            margin-bottom: 20px; /* Optional: Adds space from the bottom of the page */
            padding: 5px 10px; /* Reduced padding for smaller button size */
            font-size: 14px; /* Smaller font size */
            width: 100px; /* Set a specific width for the button */
            text-align: center; /* Center the text within the button */
        }
    </style>
</head>
<body>
    

    <!-- Course Selection and Other Buttons -->
    <div style="text-align: center; margin-top: 20px;">
        <a href="studentDashboard.jsp" class="button">Course Selection</a>
        <a href="ViewTimetableServlet" class="button">View Timetable</a>
        <a href="UpdateProfileServlet" class="button">Update Profile</a>
        <a href="ViewGradesServlet" class="button">View Grades</a>
        <a href="CourseFeedbackServlet" class="button">Course Feedback</a>
        <a href="ScheduleMeetingServlet" class="button">Schedule Meeting</a>
    </div>

    <a href="home.jsp" class="button logout-button">Logout</a> <!-- Logout button positioned at the bottom -->
</body>
</html>
