<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>${title }</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/views/common/allCSS.html"%>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-height: 100vh;
	width: 100%;
	background: #DAF5FF;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	max-width: 430px;
	width: 100%;
	background: #fff;
	border-radius: 7px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
}

#check:checked ~ .login {
	display: none;
}

#check {
	display: none;
}

.container .form {
	padding: 2rem;
}

.form header {
	font-size: 2rem;
	font-weight: 500;
	text-align: center;
	margin-bottom: 1.5rem;
}

.form input {
	height: 60px;
	width: 100%;
	padding: 0 15px;
	font-size: 17px;
	margin-bottom: 1.3rem;
	border: 1px solid #ddd;
	border-radius: 6px;
	outline: none;
}

.form input:focus {
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.2);
}

.form a {
	font-size: 16px;
	color: #0d6efd;
	text-decoration: none;
}

.form a:hover {
	text-decoration: underline;
}

.form input.submit {
	color: black;
	background: #B9E9FC;
	font-size: 1.2rem;
	font-weight: 500;
	border-radius: 30px;
	letter-spacing: 1px;
	margin-top: 1.7rem;
	cursor: pointer;
}

.signup {
	font-size: 17px;
	text-align: center;
}

.signup label {
	color: #0d6efd;
	cursor: pointer;
}

.signup label:hover {
	text-decoration: underline;
}
</style>

</head>
<body>
	<c:if test="${message!=null}">
		<script>
			swal("${message}");
		</script>
	</c:if>
	<div class="container">
		<input type="checkbox" id="check">
		<div class="login form">
			<header>Admin Login</header>
			<form method="post" action="/admin/login">
				<input type="text" placeholder="Enter your username"
					required="required" id="username" name="adminid"> <input
					type="password" placeholder="Enter your password"
					required="required" id="password" name="password"> <a
					href="#">Forgot password?</a> <input type="submit" class="submit"
					value="Login">
			</form>
		</div>
	</div>
</body>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>${title }</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/views/common/allCSS.html"%>
<style>
body {
	background-color: #DAF5FF;
}

.login-form {
	background-color: #FFFFFF;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 100px;
	width: 100%;
}

.login-form label {
	font-weight: 600;
}

/* Error messages */
.error {
	color: #dc3545;
	font-size: 80%;
	margin-top: 0.25rem;
}
</style>

</head>
<body>
	<c:if test="${message!=null}">
		<script>
			swal("${message}");
		</script>
	</c:if>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="login-form">
					<h3 class="text-center mb-4">Admin Login</h3>
					<form id="login-form" method="post" action="/admin/login">
						<div class="form-group">
							<!-- <label for="username">Username</label> --> <input type="text"
								class="form-control" id="username" name="adminid"
								placeholder="Enter your username" required>
							<div class="error"></div>
						</div>
						<div class="form-group">
							<!-- <label for="password">Password</label> --> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="Enter your password" required>
							<div class="error"></div>
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #B0DAFF; margin-left: auto; margin-right: auto; display: block; color: black;">
							Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html> --%>