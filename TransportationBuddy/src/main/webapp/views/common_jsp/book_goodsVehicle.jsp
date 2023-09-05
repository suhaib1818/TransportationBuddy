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
<body style="background-color: #F6F1F1; padding: 0; margin: 0; width: 100%; height: 100%; overflow-x: hidden;">
	<%@include file="/views/common/navbar.html"%>

	<div>
		<h3 style="text-align: center; margin: 20px">
			To book a vehicle <a href="/client/client_login">Login</a> first!
		</h3>
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
					<!-- 			<a href="#" class="btn btn-primary mt-3">Book</a> -->
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="float-end">
		<%@include file="/views/common/footer.html"%>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>