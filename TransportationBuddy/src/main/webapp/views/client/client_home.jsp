<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title}</title>
<%@include file="/views/common/allCSS.html"%>
<style type="text/css">
.containertruck {
	width: 100%;
	height: 100vh;
	padding-top: 35px;
	padding-left: 5%;
}

.truckimg {
	background-image: linear-gradient(to left, rgba(245, 246, 252, 0.52),
		rgba(25, 167, 206, 0.73)), url(/images/indtruck.jpg);
	background-position: center;
	background-size: cover;
}

.containercab {
	width: 100%;
	height: 100vh;
	padding-top: 35px;
	padding-left: 60%;
}

.cabimg {
	background-image: linear-gradient(to left, rgba(25, 167, 206, 0.73),
		rgba(245, 246, 252, 0.52)), url(/images/cabind.jpg);
	background-position: center;
	background-size: cover;
}

.content {
	margin-top: 10%;
	max-width: 600px;
}

.content h2 {
	font-size: 60px;
	color: #F6F1F1
}

.content p {
	margin-top: 10px;
	line-height: 25px;
	color: #F6F1F1;
	font-size: 30px;
}

a {
	color: #fff;
}

.link {
	margin-top: 30px;
}

.hire {
	color: #F6F1F1;
	text-decoration: none;
	background: #0D6EFD;
	padding: 9px 25px;
	font-weight: bold;
	border-radius: 6px;
	transition: 0.3s;
	border-radius: 20px;
}

.link .hire:hover {
	background: transparent;
	border: 2px solid #F6F1F1;
	color: #F6F1F1;
}
</style>
</head>
<body style="padding: 0; margin: 0; width: 100%; height: 100%; overflow-x: hidden;">
	<%@include file="/views/client/client_navbar.html"%>

	<div class="truckimg">
		<div class="containertruck">
			<div class="content">
				<h2>Cost-effective, Reliable, and On-time Delivery of goods</h2>
				<p>Get a vehicle now!</p>
			</div>
			<div class="link">
				<a href="/client/client_bookGoodsVehicle" class="hire">BOOK</a>
			</div>
		</div>
	</div>

	<div class="cabimg">
		<div class="containercab">
			<div class="content">
				<h2>Most Affordable Prices to Go Anywhere</h2>
				<p>Book a cab now!</p>
			</div>
			<div class="link">
				<a href="/client/client_bookCab" class="hire">BOOK</a>
			</div>
		</div>
	</div>
	
	<%@include file="/views/common/allJS.html"%>
</body>
</html>