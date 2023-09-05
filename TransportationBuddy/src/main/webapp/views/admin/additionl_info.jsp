<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<%@include file="/views/common/allCSS.html"%>
</head>
<body>
	<%@include file="/views/admin/admin_navbar.html"%>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">About</th>
				<th scope="col">Address</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<th>${employee.about_employee}</th>
					<th>${employee.address}</th>
				</tr>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>