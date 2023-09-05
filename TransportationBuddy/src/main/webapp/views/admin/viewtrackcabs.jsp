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
	<c:if test="${message!=null}">
		<script>
			swal("${message}");
		</script>
	</c:if>
	<%@include file="/views/admin/admin_navbar.html"%>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Registration no</th>
				<th scope="col">Booking Date</th>
				<th scope="col">Source</th>
				<th scope="col">Destination</th>
				<th scope="col">Name</th>
				<th scope="col">Phone</th>
				<th scope="col">Driver</th>
				<th scope="col">Track Vehicle</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="trackcablist" items="${trackcablist }">
				<tr>
					<th>${trackcablist.registrationno }</th>
					<th>${trackcablist.booking_date }</th>
					<th>${trackcablist.source }</th>
					<th>${trackcablist.destination }</th>
					<th>${trackcablist.name }</th>
					<th>${trackcablist.phone }</th>
					<th>${trackcablist.driver }</th>
					<th><a
						href="/admin/Livetrack?tpid=${trackcablist.cab.tp_deviceno }">Track</a></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>