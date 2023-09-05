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
	margin-top: 35px;
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
					<form action="/admin/goodsridestarted" method="post">
						<div class="row mb-3">
							<!-- <label class="col-sm-4 col-form-label">Registration no</label> -->
							<div class="col-sm-8">
								<input hidden="" readonly="readonly" class="form-control" value="${rn}"
									name="registrationno">
							</div>
						</div>
						<div class="row mb-3">
							<!-- <label class="col-sm-4 col-form-label">Booking Date</label> -->
							<div class="col-sm-8">
								<input hidden="" readonly="readonly" class="form-control" value="${d}"
									name="booking_date">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">From</label>
							<div class="col-sm-8">
								<input readonly="readonly" class="form-control"
									value="${goodrideKey.source }" name="source">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">To</label>
							<div class="col-sm-8">
								<input readonly="readonly" class="form-control"
									name="destination" value="${goodrideKey.destination }">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">Client Name</label>
							<div class="col-sm-8">
								<input readonly="readonly" class="form-control" name="name"
									value="${goodrideKey.client.name }">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">Client Phone</label>
							<div class="col-sm-8">
								<input readonly="readonly" class="form-control" name="phone"
									value="${goodrideKey.client.phone }">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">Driver</label>
							<div class="col-sm-8">
								<select class="form-select" name="driver" required="required">
									<option disabled selected value="">Select</option>
									<c:forEach var="driver" items="${driverlist}">
										<option value="${driver.name}">${driver.name }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-4 col-form-label">Start KM</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="startKM"
									required="required">
							</div>
						</div>
						<button type="submit" class="btn btn-primary"
							style="background-color: #0d6efd; margin-left: auto; margin-right: auto; display: block; color: white; border-radius: 20px; width: 20%;">Start</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>