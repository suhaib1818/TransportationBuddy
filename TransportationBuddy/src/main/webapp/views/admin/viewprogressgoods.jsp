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
			<c:forEach var="progressgoodsstatus" items="${progressgoodslist }">
				<form method="post" action="/admin/EndGoodsRide">
					<tr>
						<th>${progressgoodsstatus.registrationno }</th>
						<input type="hidden" name="registrationno"
							value=${progressgoodsstatus.registrationno }>
						<input type="hidden" name="booking_date"
							value=${progressgoodsstatus.booking_date }>
						<input type="hidden" name="ride_id"
							value=${progressgoodsstatus.ride_id }>

						<th>${progressgoodsstatus.booking_date }</th>
						<th>${progressgoodsstatus.source }</th>
						<th>${progressgoodsstatus.destination }</th>
						<th>${progressgoodsstatus.name }</th>
						<th>${progressgoodsstatus.phone }</th>
						<th>${progressgoodsstatus.driver }</th>
						<th>${progressgoodsstatus.startKM }</th>
						<th><input type="text" name="endKM"></th>
						<th>${progressgoodsstatus.status }</th>
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