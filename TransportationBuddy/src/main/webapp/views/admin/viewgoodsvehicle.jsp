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
				<th scope="col">Capacity</th>
				<th scope="col">Size(lxwxh)</th>
				<th scope="col">Fair</th>
				<th scope="col">Help</th>
				<th scope="col">Registration No</th>
				<th scope="col">TP Device No</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="goodsvehicleObject" items="${goodsvehiclelist }">
				<tr>
					<th>${goodsvehicleObject.modelname }</th>
					<th>${goodsvehicleObject.capacity }</th>
					<th>${goodsvehicleObject.size }</th>
					<th>${goodsvehicleObject.fair }</th>
					<th>${goodsvehicleObject.help }</th>
					<th>${goodsvehicleObject.registrationno }</th>
					<th>${goodsvehicleObject.tp_deviceno }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>