<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.CourseModel"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Courses</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.navbar {
	background-color: #004085;
	padding: 10px;
	border-radius: 0;
	position: sticky;
	top: 0;
	z-index: 1000;
}

.navbar a {
	color: #fff;
	text-decoration: none;
	margin: 0 15px;
}

.navbar a:hover {
	color: #d1ecf1;
}

.container {
	padding: 20px;
}

h1 {
	text-align: center;
	color: #007bff;
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

@media ( max-width : 600px) {
	.container {
		padding: 5px;
	}
	th, td {
		padding: 8px;
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
	
}
 .myclassname {
        /* Your custom styles for the anchor */
        border: 2px solid black; /* Example border style */
        padding:  /* Add padding around the content */
        display: inline-block; /* Ensures the anchor behaves like a block element */
        background-color: white
	padding: 10px;
	 box-shadow: inset 100px 0 0 0 #54b3d6;
            color: white;
    }
</style>
</head>
<body>
	<nav class="navbar">
		<a href="/">Home</a>

	</nav>
	<div class="container">
		<h1>All Courses</h1>
		<table>
			<thead>
				<tr>
					<th>Course ID</th>
					<th>Course Name</th>
					<th>Instructor</th>
					<th>Duration</th>
				</tr>
			</thead>
			<tbody>
			   <%
            List<CourseModel> courses = (List<CourseModel>) request.getAttribute("courses");
            if (courses != null) {
                for (CourseModel course : courses) {
            %>
            <tr>
                <td><%= course.getId() %></td>
                <td><%= course.getName() %></td>
                <td><%= course.getInstructure() %></td>
                <td><%= course.getDuration() %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="3">No students found</td>
            </tr>
            <% } %>
			</tbody>
		</table>
		<a class="myclassname" href="<%= request.getContextPath() %>/admin/courses/add">Add Course</a>
		<a href="/admin/AdminLogin" class="button">Back To Dashboard</a>
	</div>
</body>
</html>
