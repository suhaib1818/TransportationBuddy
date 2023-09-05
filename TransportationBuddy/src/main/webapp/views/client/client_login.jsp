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
	background: #F6F1F1;
}

.container {
	position: absolute;
	top: 56%;
	left: 50%;
	transform: translate(-50%, -50%);
	max-width: 430px;
	width: 100%;
	background: #fff;
	border-radius: 7px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
}

/* .container .registration {
	display: none;
} */

/* #check:checked ~ .registration {
	display: block;
} */

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
	color: #fff;
	background: black;
	font-size: 1.2rem;
	font-weight: 500;
	border-radius: 30px;
	letter-spacing: 1px;
	margin-top: 1.7rem;
	cursor: pointer;
	/* transition: 0.4s; */
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
	<%@include file="/views/common/navbar.html"%>
<body>
	<div class="container">
		<input type="checkbox" id="check">
		<div class="login form">
			<header>Login</header>
			<form method="post" action="client_login">
				<input type="text" placeholder="Enter your username"
					required="required" name="username"> <input type="password"
					placeholder="Enter your password" required="required"
					name="password"> <a href="#">Forgot password?</a> <input
					type="submit" class="submit" value="Login">
			</form>
			<div class="signup">
				<span class="signup">Don't have an account? <label
					for="check"><a href="/client/client_registration">
							Register </a> </label>
				</span>
			</div>
		</div>
	</div>
</body>
</html>