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
				<th scope="col">Model Name</th>
				<th scope="col">Seater</th>
				<th scope="col">Cab Type</th>
				<th scope="col">Fair</th>
				<th scope="col">Registration No</th>
				<th scope="col">TP Device No</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cabObject" items="${cablist }">
				<tr>
					<th>${cabObject.modelname }</th>
					<th>${cabObject.seater }</th>
					<th>${cabObject.cabtype }</th>
					<th>${cabObject.fair }</th>
					<th>${cabObject.registrationno }</th>
					<th>${cabObject.tp_deviceno }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>