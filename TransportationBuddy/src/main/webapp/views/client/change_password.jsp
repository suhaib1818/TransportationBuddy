<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<%@include file="/views/common/allCSS.html"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
body {
	background-color: #F8F9FA;
}

.login-form {
	background-color: #F6F1F1;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 80px;
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
	<%@include file="/views/client/client_navbar.html"%>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="login-form">
					<h3 class="text-center mb-4">Change Password</h3>
					<form id="login-form" method="post"
						action="/client/post_changepassword">
						<div class="form-group">
							<input type="password" class="form-control mb-3" name="password"
								value="" placeholder="Enter new password">
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #0d6efd; border-radius: 20px; margin-left: auto; margin-right: auto; display: block; color: white; width: 20%;">
							Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>