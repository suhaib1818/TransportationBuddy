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
	background-color: #B9E9FC;
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin: 50px;
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
					<h3 class="text-center mb-4">Employee Details</h3>
					<form id="login-form" method="post" action="employee">
						<div class="form-group mb-3">
							<!-- <label for="username">Name</label> -->
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Enter name" required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="password">Email</label> -->
							<input type="email" class="form-control" id="eamil" name="email"
								placeholder="Enter email" required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="password">Phone</label> -->
							<input type="number" class="form-control" id="phone" name="phone"
								placeholder="Enter phone" required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="username">City</label> -->
							<input type="text" class="form-control" id="city" name="city"
								placeholder="Enter city" required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="username">Age</label> -->
							<input type="number" class="form-control" id="age" name="age"
								placeholder="Enter age" required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="username">Experience</label> -->
							<input type="number" class="form-control" id="experience"
								name="experience" placeholder="Enter experience in years"
								required>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="password">Address</label> -->
							<textarea class="form-control"
								placeholder="Enter complete address" name="address" id="address"></textarea>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="password">About Employee
							</label> -->
							<textarea class="form-control"
								placeholder="Short description of employee"
								name="about_employee" id="about_employee"></textarea>
							<div class="error"></div>
						</div>
						<div class="form-group mb-3">
							<!-- <label for="password">Type</label> -->
							<select class="form-select" name="type" required="required">
								<option disabled selected value="">Select</option>
								<option value="Driver">Driver</option>
								<option value="Cleaner">Cleaner</option>
								<option value="Helper">Helper</option>
								<option value="Other">Other</option>
							</select>
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