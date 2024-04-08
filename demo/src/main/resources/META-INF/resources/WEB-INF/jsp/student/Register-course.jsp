<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
    /* Add padding to containers */
.container {
    padding: 16px;
}

/* Full-width input fields */
input[type="text"], input[type="password"] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type="text"]:focus, input[type="password"]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
    background-color: #04AA6D;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
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
 <!-- <script>
    function showSuccessMessage() {
        alert("Student registered successfully!");
    }
    onsubmit="showSuccessMessage()
    </script> -->
</head>
<body>
    <div class="container">
        <h1>Register for Courses</h1>
        <form action="/students/register" method="post"> 
            <label for="studentId">Student ID:</label>
            <input type="text" id="student_id" name="student_id" required>

            <label for="courseId">Course ID:</label>
            <input type="text" id="id" name="id" required>

            <button type="submit" class="registerbtn">Register</button>
        </form>
         <a href="StudentLogin" class="button">Back To Dashboard</a>
    </div>
</body>
</html>