<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 300px;
	padding: 16px;
	background-color: white;
	margin: 100px auto;
	border: 1px solid black;
	border-radius: 4px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="password"] {
	width: calc(100% - 30px);
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
	border-radius: 4px;
}

input[type="text"]:focus, input[type="password"]:focus {
	background-color: #ddd;
	outline: none;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 4px;
}

.btn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<div class="container">
		<form action="/signup" method="post">
			<label for="role"><b>Role</b></label> <select id="role" name="role">
				<option value="admin">Admin</option>
				<option value="patient">Student</option>
			</select> <label for="userName"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="userName" required> <label
				for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>
			<button type="submit" class="btn">Signup</button>
		</form> 
	</div>
</body>

</html>