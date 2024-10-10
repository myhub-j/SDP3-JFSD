import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCourseServlet")
public class AddCourseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Get course details from the request
        String courseName = request.getParameter("courseName");
        String courseDescription = request.getParameter("courseDescription");
        int courseCredits = Integer.parseInt(request.getParameter("courseCredits"));

        // Database connection parameters
        String jdbcURL = "jdbc:mysql://localhost:3306/your_database"; // Change your_database to your actual database name
        String dbUser = "your_username"; // Change to your database username
        String dbPass = "your_password"; // Change to your database password

        Connection conn = null;
        PreparedStatement statement = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish a connection
            conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

            // Prepare the SQL insert statement
            String sql = "INSERT INTO courses (course_name, course_description, course_credits) VALUES (?, ?, ?)";
            statement = conn.prepareStatement(sql);
            statement.setString(1, courseName);
            statement.setString(2, courseDescription);
            statement.setInt(3, courseCredits);

            // Execute the insert operation
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<h2>Course added successfully!</h2>");
            } else {
                out.println("<h2>Error adding course. Please try again.</h2>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            // Close resources
            try {
                if (statement != null) statement.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
