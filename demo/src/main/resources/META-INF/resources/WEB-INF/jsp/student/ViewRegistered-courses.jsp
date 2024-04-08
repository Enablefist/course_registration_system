<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.CourseModel"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Courses</title>
    <style>
        /* Your CSS styling here (if needed) */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            text-align: left;
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            transition-duration: 0.4s;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registered Courses</h1>
        <form action="/students/registeredCourses" method="post"> 
            <label for="studentId">Student ID:</label>
            <input type="text" id="student_id" name="student_id" required>
            <button type="submit" class="viewbtn">View Registered Courses</button>
        </form>
        <br/>
        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Instructor</th>
                <th>Duration</th>
                <!-- Add more columns as needed -->
            </tr>
            <!-- Use JSP scriptlet to iterate over the courses -->
            <% List<CourseModel> registeredCourses = (List<CourseModel>) request.getAttribute("registeredCourses");
            if(registeredCourses != null){
                for(CourseModel course : registeredCourses){ %>
                    <tr>
                        <td><%= course.getId() %></td>
                        <td><%= course.getName() %></td>
                        <td><%= course.getInstructure() %></td>
                        <td><%= course.getDuration() %></td>
                        <!-- Add more data as needed -->
                    </tr>
                <% }
            } %>
        </table>
    </div><br><br>
     <a href="StudentLogin" class="button" >Back To Dashboard</a>
</body>

</html>
    