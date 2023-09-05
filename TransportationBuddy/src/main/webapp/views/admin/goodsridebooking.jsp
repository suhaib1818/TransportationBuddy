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
	<%@include file="/views/admin/admin_navbar.html"%>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="login-form">
					<h3 class="text-center mb-4">Start Goods Vehicle Ride</h3>
					<form action="/admin/startgoodsride" method="post">
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label">Vehicle No.</label>
							<div class="col-sm-9">
								<input type="text" value="${regno }" class="form-control"
									readonly="readonly" name="registrationno">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-3 col-form-label">Date</label>
							<div class="col-sm-9">
								<input type="date" value="${bkdate }" class="form-control"
									readonly="readonly" name="booking_date">
							</div>
						</div>
						<button type="submit" class="btn mt-3"
							style="background-color: #0d6efd; margin-left: auto; margin-right: auto; display: block; color: white; border-radius: 20px; width: 20%;">
							Proceed</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>