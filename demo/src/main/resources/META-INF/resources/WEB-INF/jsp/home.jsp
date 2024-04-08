 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Course Registration System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.header {
	position: sticky;
	top: 0;
	z-index: 1000; /* Ensure the header stays on top of other elements */
}

body {
	color: #333;
	font-family: Arial, sans-serif;
}

.header, .footer {
	background-color: darkblue;
	/* Change the background color to dark blue */
	padding: 15px 0;
	color: white; /* Change the text color to white for better contrast */
}

.header nav, .footer nav {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.header nav a, .footer nav a {
	color: white; /* Change the link color to white for better contrast */
	text-decoration: none;
	margin-left: 20px;
	transition: color 0.3s;
}

.header nav a:hover, .footer nav a:hover {
	color: #007bff;
}

.main-content {
	padding: 50px;
	color: #333;
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.active {
	background-color: rgba(0, 123, 255, 0.1); /* Highlight color */
	border-radius: 4px; /* Rounded corners */
}

.logo {
	width: 300px;
	height: auto;
}

.footer-logo {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

</head>
<body>
	<header class="header">
		<div class="container">
			<nav>
				<a href="/About">About</a><a href="#">Services</a><a href="#">Contact</a>
				<a href="/login" class="btn btn-primary">Login</a>
			</nav>
		</div>
	</header>


	<div class="container main-content">
		<h1 class="display-4">Welcome to the Course Registration System</h1>
		<p class="lead">Our system provides comprehensive tools to manage
			student and course information.</p>

		<h2>What you can do with course registration System:</h2>
		<ul>
			<li>Manage student information.</li>
			<li>Manage Course information.</li>
			<li>Student can view the available courses</li>
			<li>Student can register for the course</li>
			<li>student can view the already register course</li>
		</ul>
	</div>

	<div class="footer-logo">
		<a href="/" title="Home"> 
		<img src="crs.png" class="logo">
		</a>
	</div>
	<hr>
	<div class="col-md-12 text-center">
		<p class="mt-3">Course Registration System</p>
	</div>
	<div class="row">
		<div class="col-md-12 text-center">
			<p class="mb-0">&copy; 2024. All rights reserved.</p>
		</div>
	</div>
	</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>