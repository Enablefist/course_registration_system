<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<!-- Your CSS styles here -->
<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	width: 350px;
	padding: 20px;
	background-color: white;
	margin: 100px auto;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.container form {
	display: flex;
	flex-direction: column;
}

.container label {
	margin-bottom: 5px;
}

.container input[type="text"], .container input[type="password"],
	.container select {
	width: calc(100% - 30px);
	padding: 10px;
	margin: 5px 0 15px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.container input[type="text"]:focus, .container input[type="password"]:focus,
	.container select:focus {
	border-color: #4CAF50;
	outline: none;
}

.container .btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 4px;
}

.container .btn:hover {
	opacity: 1;
}

.container .btn-signup {
	background-color: #007bff;
	text-align: center;
	padding: 12px 20px;
	margin-top: 10px;
	text-decoration: none;
	display: inline-block;
	color: white;
	border-radius: 4px;
}

.container .btn-signup:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<form id="loginForm" action="/login" method="post">
			<label for="role"><b>Role</b></label> <select id="role" name="role">
				<option value="admin">Admin</option>
				<option value="patient">Student</option>
			</select> <label for="userName"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="userName" required> <label
				for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>
			<button type="submit" class="btn">Login</button>
		</form>
		<a href="/signup" class="btn-signup">Sign Up</a>
	</div>

	<!-- Popup for wrong login details -->
	<div id="popup"
		style="display: none; position: fixed; width: 100%; height: 100%; top: 0; left: 0; right: 0; bottom: 0; margin: auto; background-color: rgba(0, 0, 0, 0.5);">
		<div
			style="position: absolute; left: 25%; right: 25%; top: 25%; bottom: 25%; margin: auto; background-color: white; padding: 20px; border-radius: 10px;">
			<h2 style="text-align: center;">Error</h2>
			<p style="text-align: center;" id="popupText"></p>
			<button style="display: block; margin: auto;"
				onclick="document.getElementById('popup').style.display='none'">OK</button>
		</div>
	</div>


</body>
</html>
    