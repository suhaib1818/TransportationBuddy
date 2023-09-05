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
				<th scope="col">Start KM</th>
				<th scope="col">End KM</th>
				<th scope="col">Status</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="progresscabstatus" items="${progresscablist }">
				<form method="post" action="/admin/EndRide">
					<tr>
						<th>${progresscabstatus.registrationno }</th>
						<input type="hidden" name="registrationno"
							value=${progresscabstatus.registrationno }>
						<input type="hidden" name="booking_date"
							value=${progresscabstatus.booking_date }>
						<input type="hidden" name="ride_id"
							value=${progresscabstatus.ride_id }>

						<th>${progresscabstatus.booking_date }</th>
						<th>${progresscabstatus.source }</th>
						<th>${progresscabstatus.destination }</th>
						<th>${progresscabstatus.name }</th>
						<th>${progresscabstatus.phone }</th>
						<th>${progresscabstatus.driver }</th>
						<th>${progresscabstatus.startKM }</th>
						<th><input type="text" name="endKM"></th>
						<th>${progresscabstatus.status }</th>
						<th><button class="btn-primary"
								style="border-radius: 20px; background-color: #0d6efd; color: white; border: white; padding-inline: inherit;">End</button>
					</tr>
				</form>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>