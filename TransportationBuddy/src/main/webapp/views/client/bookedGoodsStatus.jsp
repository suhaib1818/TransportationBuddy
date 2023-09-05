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
			<c:forEach var="goodsstatus" items="${goodsstatusList }">
				<tr>
					<th>${goodsstatus.username }</th>
					<th>${goodsstatus.source }</th>
					<th>${goodsstatus.destination }</th>
					<th>${goodsstatus.time }</th>
					<th>${goodsstatus.status }</th>
					<th>${goodsstatus.registrationno }</th>
					<th>${goodsstatus.request_date }</th>
					<th>${goodsstatus.booking_date }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>