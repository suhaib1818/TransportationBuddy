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
			<c:forEach var="bookedgoodsvehicle" items="${bookedgoodslist}">
				<tr>
					<th>${bookedgoodsvehicle.username }</th>
					<th>${bookedgoodsvehicle.source }</th>
					<th>${bookedgoodsvehicle.destination }</th>
					<th>${bookedgoodsvehicle.time }</th>
					<th>${bookedgoodsvehicle.status }</th>
					<th>${bookedgoodsvehicle.registrationno }</th>
					<th>${bookedgoodsvehicle.request_date }</th>
					<th>${bookedgoodsvehicle.booking_date }</th>
					<th><a
						href="/admin/confirmgoodsbooking?bkid=${bookedgoodsvehicle.booking_id}&regno=${bookedgoodsvehicle.registrationno}">Approve</a></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>