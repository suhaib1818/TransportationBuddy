<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
</head>
<%@include file="/views/common/allCSS.html"%>
<body>
	<%@include file="/views/client/client_navbar.html"%>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Username</th>
				<th scope="col">Source</th>
				<th scope="col">Destination</th>
				<th scope="col">Time</th>
				<th scope="col">Status</th>
				<th scope="col">Registration No</th>
				<th scope="col">Request Date</th>
				<th scope="col">Booking Date</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cabstatus" items="${cabstatusList }">
				<tr>
					<th>${cabstatus.username }</th>
					<th>${cabstatus.source }</th>
					<th>${cabstatus.destination }</th>
					<th>${cabstatus.time }</th>
					<th>${cabstatus.status }</th>
					<th>${cabstatus.registrationno }</th>
					<th>${cabstatus.request_date }</th>
					<th>${cabstatus.booking_date }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>