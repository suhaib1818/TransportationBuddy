<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
	margin-top: 20px;
	margin-bottom: 20px;
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
					<form id="login-form" method="post"
						action="/client/booking_GoodsVehicle">
						<div class="form-group">
							Username <input class="form-control mb-3" readonly="readonly"
								name="username" value="${clientKey.username }">
						</div>
						<div class="form-group">
							Vehicle Registration No. <input value="${registrationno}"
								readonly="readonly" name="registrationno"
								class="form-control mb-3">
						</div>
						<div class="form-group" class="form-control mb-3">
							From <input type="text" class="form-control" name="source">
						</div>
						<div class="form-group" class="form-control mb-3">
							To <input type="text" class="form-control" name="destination">
						</div>
						<div class="form-group" class="form-control mb-3">
							Date <input type="date" class="form-control" name="booking_date">
						</div>
						<div class="form-group" class="form-control mb-3">
							Time <input type="time" class="form-control" name="time">
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #0d6efd; border-radius: 20px; margin-left: auto; margin-right: auto; display: block; color: white; width: 20%;">
							Book</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>