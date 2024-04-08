<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.StudentModel"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Students</title>
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
		<h1>All students Details</h1>
		<table>
			<thead>
				<tr>
					<th>Student ID</th>
					<th>Student Name</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
			   <%
            List<StudentModel> students = (List<StudentModel>) request.getAttribute("students");
            if (students != null) {
                for (StudentModel student : students) {
            %>
            <tr>
                <td><%= student.getStudent_id() %></td>
                <td><%= student.getName() %></td>
                <td><%= student.getEmail() %></td>
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
		<a class="myclassname" href="<%= request.getContextPath() %>/admin/students/add">Add Student</a>
		<a href="/admin/AdminLogin" class="button">Back To Dashboard</a>
	</div>
</body>
</html>
