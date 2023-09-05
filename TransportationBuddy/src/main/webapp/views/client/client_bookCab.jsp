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
<body style="background-color: #F6F1F1">
	<%@include file="/views/client/client_navbar.html"%>

	<div class="container float-end">
		<h5 style="text-align: center; margin: 20px">*Note: Book the cab
			in advance!</h5>
	</div>

	<div class="container text-left">
		<c:forEach var="cabObject" items="${cablist }">
			<div class="card float-start"
				style="width: 18rem; margin-top: 16px; margin-right: 30px; margin-bottom: 16px; margin-left: 50px">
				<div class="card-body">
					<img src="/images/cab.png" class="card-img-top" alt="...">
					<h6 class="card-title">Name- ${cabObject.modelname }</h6>
					<h6 class="card-title">Seats- ${cabObject.seater }</h6>
					<h6 class="card-title">Type- ${cabObject.cabtype}</h6>
					<h6 class="card-title">Fair (&#x20B9)- ${cabObject.fair }/km</h6>
					<h6 class="card-title">Registration No.-
						${cabObject.registrationno }</h6>
					<a href="/client/booking_Cab/${cabObject.registrationno }"
						class="btn btn-primary mt-3" style="border-radius: 20px;">Book*</a>
				</div>
			</div>
		</c:forEach>
	</div>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>