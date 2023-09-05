<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/views/common/allCSS.html"%>
<link rel="stylesheet" href="/views/common/contactus.css">
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js"></script>
<style type="text/css">
@charset "ISO-8859-1";

.container {
	width: 85%;
	background: #fff;
	border-radius: 6px;
	padding: 20px 60px 30px 40px;
	margin-top: 30px;
	margin-bottom: 30px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.container .content {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.container .content .left-side {
	width: 25%;
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 15px;
	position: relative;
}

.content .left-side::before {
	content: '';
	position: absolute;
	height: 70%;
	width: 2px;
	right: -15px;
	top: 50%;
	transform: translateY(-50%);
	background: #afafb6;
}

.content .left-side .details {
	margin: 14px;
	text-align: center;
}

.content .left-side .details i {
	font-size: 30px;
	color: black;
	margin-bottom: 10px;
}

.content .left-side .details .topic {
	font-size: 18px;
	font-weight: 500;
}

.content .left-side .details .text-one, .content .left-side .details .text-two
	{
	font-size: 14px;
	color: #afafb6;
}

.container .content .right-side {
	width: 75%;
	margin-left: 75px;
}

.content .right-side .topic-text {
	font-size: 23px;
	font-weight: 600;
	color: black;
}

.right-side .input-box {
	height: 50px;
	width: 100%;
	margin: 12px 0;
}

.right-side .input-box input, .right-side .input-box textarea,
	.select-box select {
	height: 100%;
	width: 100%;
	border: none;
	outline: none;
	font-size: 16px;
	background: #F0F1F8;
	border-radius: 6px;
	padding: 0 15px;
	resize: none;
}

.right-side .select-box {
	height: 50px;
	width: 100%;
	margin: 12px 0;
}

.right-side .message-box {
	min-height: 110px;
}

.right-side .input-box textarea {
	padding-top: 6px;
}

.right-side .button {
	display: inline-block;
	margin-top: 12px;
}

.right-side .button input[type="submit"] {
	color: white;
	font-size: 18px;
	outline: none;
	border: none;
	padding: 8px 16px;
	border-radius: 20px;
	background: #0D6EFD;
	cursor: pointer;
	transition: all 0.3s ease;
}
/* .button input[type="button"]:hover{
  background: #F7FF55;
} */
@media ( max-width : 950px) {
	.container {
		width: 90%;
		padding: 30px 40px 40px 35px;
	}
	.container .content .right-side {
		width: 75%;
		margin-left: 55px;
	}
}

@media ( max-width : 820px) {
	.container {
		margin: 40px 0;
		height: 100%;
	}
	.container .content {
		flex-direction: column-reverse;
	}
	.container .content .left-side {
		width: 100%;
		flex-direction: row;
		margin-top: 40px;
		justify-content: center;
		flex-wrap: wrap;
	}
	.container .content .left-side::before {
		display: none;
	}
	.container .content .right-side {
		width: 100%;
		margin-left: 0;
	}
}
</style>
<script>
	function getLocation() {

		if (!navigator.geolocation) {
			alert("Browser doesn't support geolocation");
		} else {
			navigator.geolocation.getCurrentPosition(success, error);
		}
	}

	// Get current position successfully
	function success(position) {
		var map, marker, latitude = position.coords.latitude, longitude = position.coords.longitude;

		// Instance map using leaflet
		map = L.map('map').setView([ latitude, longitude ], 13);

		// Tile layer using key api at cloudmade.com
		L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
			key : '760506895e284217a7442ce2efe97797',
			styleId : 103288,
			maxZoom : 16
		}).addTo(map);

		// Marker using leaflet
		marker = L.marker([ latitude, longitude ], {
			draggable : 'true'
		}).addTo(map);

		//Drag Marker
		marker.on('dragend', function(event) {
			var position = marker.getLatLng();
			marker.setLatLng(position, {
				draggable : 'true'
			}).bindPopup(position).update();
			$("#lat").val(position.lat.toFixed(5));
			$("#lon").val(position.lng.toFixed(5)).keyup();
		});

		// Popup in leaflet
		marker.bindPopup('<p>Your location</p>').openPopup();
		$("#lat").val(latitude.toFixed(5));
		$("#lon").val(longitude.toFixed(5))
	}

	// Get current position fail
	function error() {
		alert('Get current position fail.');
	}
</script>

</head>
<body style="background-color: #F6F1F1">
	<c:if test="${message!=null}">
		<script>
			swal("${message}");
		</script>
	</c:if>
	<%@include file="/views/common/navbar.html"%>
	<div class="container">
		<div class="content">
			<div class="left-side">
				<div class="address details">
					<i class="fas fa-map-marker-alt"></i>
					<div class="topic">Address</div>
					<div class="text-one">Lucknow, U.P.</div>
					<div class="text-two">India</div>
				</div>
				<div class="phone details">
					<i class="fas fa-phone"></i>
					<div class="topic">Phone</div>
					<div class="text-one">+ 91 98381 12233</div>
				</div>
				<div class="email details">
					<!-- <div id="map" class="map email details"></div>

					<div class="col-md-6">
						Lat : <input type="text" id="lat" name="latitude"> Lon : <input
							type="text" id="lon" name="longitude">
						<script>
							getLocation(event);
						</script>
					</div> -->
				</div>
			</div>
			<div class="right-side">
				<div class="topic-text">Registration</div>
				<p>Start your journey here!</p>
				<form method="post" action="contact">
					<div class="input-box">
						<input type="text" placeholder="Enter username" name="username"
							required>
					</div>
					<div class="input-box">
						<input type="password" placeholder="Choose password"
							name="password" required>
					</div>
					<div class="input-box">
						<input type="text" placeholder="Enter your name" name="name"
							required>
					</div>
					<div class="input-box">
						<input type="email" placeholder="Enter your email" name="email"
							required>
					</div>
					<div class="input-box">
						<input type="number" placeholder="Enter your phone" name="phone"
							required>
					</div>
					<div class="select-box">
						<select name="city" required>
							<option disabled selected value="">Select a city</option>
							<option value="Lucknow">Lucknow</option>
							<option value="Noida">Noida</option>
							<option value="Delhi">Delhi</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Banglore">Banglore</option>
						</select>
					</div>
					<div class="input-box message-box">
						<textarea class="form-control" placeholder="Enter your address"
							name="address" required></textarea>
					</div>
					<div class="button">
						<input type="submit" value="Register">
					</div>
				</form>
			</div>

			<section class="maped">
			<div class="maped">
			<div id="map" class="map "></div>

					<div class="maped">
						Lat : <input type="text" id="lat" name="latitude"> Lon : <input
							type="text" id="lon" name="longitude">
						<script>
							getLocation(event);
						</script>
					</div>
			</div>
			</section>

		</div>
	</div>
	<%@include file="/views/common/footer.html"%>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>