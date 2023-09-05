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
					<h3 class="text-center mb-4">Cab Details</h3>
					<form id="login-form" class="row g-3" method="post" action="cab">
						<div class="col-md-6">
							<input type="text" class="form-control" name="modelname"
								placeholder="Enter model name" required>
							<div class="error"></div>
						</div>
						<div class="col-md-6">
							<input type="number" class="form-control" name="seater"
								placeholder="Enter number of seats" required>
							<div class="error"></div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="cabtype"
								placeholder="Enter cab type" required>
							<div class="error"></div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="registrationno"
								placeholder="Enter registration number" required>
							<div class="error"></div>
						</div>
						<div class="col-md-6">
							<input type="number" class="form-control" name="fair"
								placeholder="Enter fair" required>
							<div class="error"></div>
						</div>
						<div class="col-md-6">
							<input type="text" class="form-control" name="tp_deviceno"
								placeholder="Enter TP device number" required>
							<div class="error"></div>
						</div>
						<!-- <div class="col-md-6">
							<input class="form-control" type="file" name="uploadpicture"
								multiple>
						</div> -->
						<button type="submit" class="btn mt-3"
							style="width: 20%; margin-left: auto; margin-right: auto; background-color: #0d6efd; display: block; color: white; border-radius: 20px;">
							Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
html, body {
	height: 100%;
	width: 100%;
	padding: 0;
	margin: 0;
	overflow-x: hidden;
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
	<h3 style="text-align: center; margin-top: 20px">Cab Details</h3>
	<div class="container"
		style="position: relative; left: 50px; top: 15px; margin: 10px; padding: 10px; border-width: 2px; border-style: solid; border-color: black; border-radius: 5px;">
		<form class="row g-3" action="cab" method="post">
			<div class="col-md-6">
				<label class="form-label">Model Name</label> <input type="text"
					class="form-control" name="modelname">
			</div>
			<div class="col-md-6">
				<label class="form-label">Seater</label> <input type="number"
					class="form-control" name="seater">
			</div>
			<div class="col-md-6">
				<label class="form-label">Cab Type</label> <input type="text"
					class="form-control" name="cabtype">
			</div>
			<div class="col-md-6">
				<label class="form-label">Registration No.</label> <input
					type="text" class="form-control" name="registrationno">
			</div>
			<div class="col-md-6">
				<label class="form-label">Fair starting from</label> <input
					type="text" class="form-control" name="fair">
			</div>
			<div class="col-md-6">
				<label class="form-label">TP Device No.</label> <input type="text"
					class="form-control" name="tp_deviceno">
			</div>
			<div class="col-md-6">
				<label for="formFileMultiple" class="form-label">Upload
					picture</label> <input class="form-control" type="file"
					name="uploadpicture" multiple>
			</div>
			<div class="col-12" style="position: relative; left: 530px">
				<button type="submit" class="btn"
					style="background-color: black; color: white">Submit</button>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%@include file="/views/common/allJS.html"%>
</body>
</html> --%>