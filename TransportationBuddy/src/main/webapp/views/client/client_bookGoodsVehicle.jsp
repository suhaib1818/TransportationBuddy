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
		<h5 style="text-align: center; margin: 20px">*Note: Book the
			vehicle in advance!</h5>
	</div>

	<div class="container text-left">
		<c:forEach var="goodsObject" items="${goodslist }">
			<div class="card float-start"
				style="width: 18rem; margin-top: 16px; margin-right: 30px; margin-bottom: 16px; margin-left: 50px">
				<div class="card-body">
					<img src="/images/truck.png" class="card-img-top" alt="...">
					<h6 class="card-title">Model Name- ${goodsObject.modelname }</h6>
					<h6 class="card-title">Capacity (kg)- ${goodsObject.capacity }</h6>
					<h6 class="card-title">Size(lxwxh)- ${goodsObject.size}</h6>
					<h6 class="card-title">Fair (&#x20B9)- ${goodsObject.fair }/km</h6>
					<%-- <h6 class="card-title">Help- ${goodsObject.help }</h6> --%>
					<h6 class="card-title">Registration No.-
						${goodsObject.registrationno }</h6>
					<a
						href="/client/booking_GoodsVehicle/${goodsObject.registrationno }"
						class="btn btn-primary mt-3" style="border-radius: 20px;">Book*</a>
				</div>
			</div>
		</c:forEach>
	</div>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>