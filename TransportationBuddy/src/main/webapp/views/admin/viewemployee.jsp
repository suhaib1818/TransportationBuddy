<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<%@include file="/views/common/allCSS.html"%>
</head>
<body>
	<%@include file="/views/admin/admin_navbar.html"%>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone</th>
				<th scope="col">City</th>
				<th scope="col">Age</th>
				<th scope="col">Experience</th>
				<th scope="col">Type</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="employeeObject" items="${employeelist}">
				<tr>
					<th><a href="/admin/additionalinfo/${employeeObject.id }"> ${employeeObject.name} </a></th>
					<th>${employeeObject.email}</th>
					<th>${employeeObject.phone}</th>
					<th>${employeeObject.city}</th>
					<th>${employeeObject.age}</th>
					<th>${employeeObject.experience}</th>
					<th>${employeeObject.type}</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>