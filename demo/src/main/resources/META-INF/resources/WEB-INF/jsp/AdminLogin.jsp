<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<!-- Bootstrap CSS for styling and responsiveness -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
	background-image: url('.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-color: #f4f4f4;
	color: #333;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
	transition: color 0.3s ease-in-out, transform 0.3s ease-in-out;
}

.navbar a:hover {
	color: #d1ecf1;
	transform: scale(1.1);
}

.sidebar {
	background-color: #343a40;
	min-height: 100vh;
	padding: 20px 0;
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
}

.sidebar a {
	color: #fff;
	padding: 15px 20px;
	display: block;
	text-decoration: none;
	border-radius: 5px;
	margin-bottom: 10px;
	font-size: 18px;
	transition: background-color 0.3s ease-in-out, transform 0.3s ease-in-out;
}

.sidebar a:hover {
	background-color: #495057;
	color: #fff;
	transform: translateX(10px);
}

.content {
	padding: 20px;
}

.footer {
	background-color: #004085;
	color: #fff;
	text-align: center;
	padding: 10px 0;
}

.admin-dashboard-footer {
	background-color: #004085;
	color: #fff;
	text-align: center;
	padding: 10px 0;
	position: dynamic;
	bottom: 0;
	width: 100%;
	z-index: 999;
}

.card {
	background-color: #fff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease-in-out;
	margin-bottom: 20px;
}

.card:hover {
	transform: translateY(-5px);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.card-img-top {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	height: 200px;
	object-fit: cover;
}

.card-body {
	padding: 15px;
}

.card-title {
	margin-bottom: 15px;
	color: #004085;
}

.card-text {
	color: #555;
}

.btn-primary {
	background-color: #004085;
	border-color: #003766;
}

.btn-primary:hover {
	background-color: #003766;
	border-color: #003766;
}

.top-right-options {
	margin-top: 10px;
}

.top-right-options a {
	color: #fff;
	text-decoration: none;
	margin: 0 10px;
}
.img {
  width: 100%;
  height: auto;
  padding: 10px;
}
</style>
<script>
function confirmLogout() {
    return confirm("Are you sure you want to logout?");
}
</script>
</head>
<body>
	<nav class="navbar">
		<a href="/">Home</a>
		<div class="top-right-options">
			<a href="/" onclick="return confirmLogout()">Logout</a>
		</div>
	</nav>
	 <div class="container-fluid">
		<div class="row">
			<div class="col-md-3 sidebar">
				<h3 style="color: #fff;">Menu</h3>
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="/admin/students/add">Add Student</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/courses/add">Add Course</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/students/edit">Update student</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/courses/edit">Update Course</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/students/delete">Delete student</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/courses/delete">Delete Course</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/students">View All Students</a></li>
					<li class="nav-item"><a class="nav-link" href="/admin/courses">View All courses </a></li>
				</ul>
			</div>
			<div class="col-md-9 content">
				<h1>Welcome, Admin!</h1> 
				<img src="/adminimage.jpg" class="img" alt="admin">
	 			<!-- <div class="row">
					<div class="col-md-4">
						<div class="card">
							<img src="adminimage.jpg" class="card-img-top" alt="Course Dashboard">
							<div class="card-body">
								<h5 class="card-title">Course Dashboard</h5>
								<p class="card-text">view courses.</p>
								<a href="/admin/courses" class="btn btn-primary">Go to Course Dashboard</a>
							</div>
						</div>
					</div>
				</div>  -->
			</div>
		</div>
	</div>
	<div class="admin-dashboard-footer">
		<p> 2024 Admin Dashboard</p>
	</div>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
