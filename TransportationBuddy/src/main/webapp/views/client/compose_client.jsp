<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
	background-color: #F8F9FA;
}

.login-form {
	background-color: #F6F1F1;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 40px;
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
					<h3 class="text-center mb-4">Compose</h3>
					<form id="login-form" method="post" action="/compose">
						<div class="form-group">
							<label for="username">Sender ID</label> <input
								class="form-control" name="senderid"
								value="${clientKey.username }" readonly>
							<div class="error"></div>
						</div>
						<div class="form-group">
							<label for="password">To</label> <input type="text"
								class="form-control" name="receiverid" required>
							<div class="error"></div>
						</div>
						<div class="form-group">
							<label for="password">Subject</label> <input type="text"
								class="form-control" name="subject" required>
							<div class="error"></div>
						</div>
						<div class="form-group">
							<label for="password">Message</label>
							<textarea class="form-control" name="message"></textarea>
							<div class="error"></div>
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #0d6efd; border-radius: 20px; margin-left: auto; margin-right: auto; display: block; color: white; width: 20%;">
							Send</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>