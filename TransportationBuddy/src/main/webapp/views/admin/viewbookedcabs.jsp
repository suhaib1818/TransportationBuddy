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
			<c:forEach var="bookcabObject" items="${bookedcablist }">
				<tr>
					<th>${bookcabObject.username }</th>
					<th>${bookcabObject.source }</th>
					<th>${bookcabObject.destination }</th>
					<th>${bookcabObject.time }</th>
					<th>${bookcabObject.status }</th>
					<th>${bookcabObject.registrationno }</th>
					<th>${bookcabObject.request_date }</th>
					<th>${bookcabObject.booking_date }</th>
					<th><a
						href="/admin/confirmcabbooking?bkid=${bookcabObject.booking_id}&regno=${bookcabObject.registrationno}">Approve</a></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>