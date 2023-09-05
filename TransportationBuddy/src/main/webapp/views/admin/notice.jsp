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
	background-color: #B9E9FC;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-top: 120px;
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
	<%@include file="/views/admin/admin_navbar.html"%>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="login-form">
					<h3 class="text-center mb-4">Add Notification</h3>
					<form id="login-form" method="post" action="/admin/notice">
						<div class="form-group mb-3">
							<textarea class="form-control" placeholder="Enter content"
								name="noticecontents" style="height: 100px;"></textarea>
							<div class="error"></div>
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #0d6efd; margin-left: auto; margin-right: auto; display: block; color: white; border-radius: 20px; width: 20%;">
							Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>