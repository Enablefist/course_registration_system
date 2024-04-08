<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
import="com.example.demo.model.CourseModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course Details</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 400px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.container h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #007bff;
}

form {
    text-align: left;
}

label {
    display: block;
    margin-top: 10px;
    color: #333;
    font-weight: bold;
}

input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s ease;
}

input[type="text"]:focus {
    border-color: #007bff;
}

button {
    display: block;
    width: 100%;
    padding: 10px 20px;
    margin-top: 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
.button {
    display: block;
    width: 100%;
    padding: 10px;
    text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            transition-duration: 0.4s;
}

.button:hover {
    background-color: #0056b3;
}

button:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<body>
 <div class="container">
    <h1>Update Course Details</h1>
    <form action="/admin/courses/edit" method="post">
        <label for="courseid">Course ID:</label>
        <input type="text" id="courseid" name="id" required>
        <label for="name">Course Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="instructor">Instructor:</label>
        <input type="text" id="Instructure" name="Instructure" required>
        <label for="duration">Duration:</label>
        <input type="text" id="duration" name="duration" required>
        <button type="submit">Update Course</button>
        <a href="/admin/AdminLogin" class="button">Back To Dashboard</a>
    </form>
</div>
</body>
</html>