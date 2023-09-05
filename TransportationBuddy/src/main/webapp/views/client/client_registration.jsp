<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js"></script>
<%@include file="/views/common/allCSS.html"%>
<style>
html, body {
	height: 100%;
	width: 100%;
	padding: 0;
	margin: 0;
	overflow-x: hidden;
}

.map {
	height: 300px;
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

<script>
	$(document)
			.ready(
					function() {
						$("#username")
								.change(
										function() {
											//alert("hello")
											console.log($(this).val());
											var username = $(this).val();
											$
													.ajax({
														url : "/client/idcheck/",
														type : "GET",
														data : {
															'username' : username
														},
														//dataType: 'json',
														success : function(
																data_response) {
															//alert(data_response)
															if (data_response == "Already Exists") {
																$("#ajaxmsg")
																		.text(
																				"Username already exists choose another")
																$("#username")
																		.val("")
															}

														}

													});//ajax function closed
										});
					})
</script>

</head>
<body style="background: #F6F1F1;">
	<c:if test="${message!=null}">
		<script>
			swal("${message}");
		</script>
	</c:if>
	<%@include file="/views/common/navbar.html"%>
	
	<div class="container"
		style="background: #fff; box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2); position: relative; left: 50px; top: 15px; margin: 10px; padding: 10px; border-radius: 6px;">
		<h3 style="text-align: center; margin-top: 20px">Registration</h3>
		<form class="row g-3" method="post" action="client_Registration">
			<div class="col-md-6">
				<label class="form-label"></label> <input type="text"
					class="form-control" placeholder="Set username" name="username"
					id="username" required> <span id="ajaxmsg"
					style="color: red;"></span>
			</div>
			<div class="col-md-6">
				<label class="form-label"></label> <input type="password"
					class="form-control" placeholder="Set password" name="password"
					required>
			</div>
			<div class="col-md-6">
				<label class="form-label"></label> <input type="text"
					class="form-control" placeholder="Enter full name" name="name"
					required>
			</div>
			<div class="col-md-6">
				<label class="form-label"></label> <input type="email"
					class="form-control" placeholder="Enter email" name="email"
					required>
			</div>
			<div class="col-md-6">
				<label class="form-label"></label> <input type="number"
					class="form-control" placeholder="Enter phone" name="phone"
					required>
			</div>
			<div class="col-md-6">
				<label class="col-form-label"></label>
				<div>
					<select class="form-select" name="city" required>
						<option selected>City</option>
						<option value="Lucknow">Lucknow</option>
						<option value="Noida">Noida</option>
						<option value="Delhi">Delhi</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Banglore">Banglore</option>
					</select>
				</div>
			</div>
			<div class="col-md-6">
				<label class="form-label"></label>
				<div class="form-label">
					<textarea class="form-control" placeholder="Enter address"
						name="address" required style="height: 100px"></textarea>
				</div>
			</div>

			<div id="map" class="map col-md-6"></div>
			<div class="col-md-6">
				<input hidden="" type="text" id="lat" name="latitude"><input
					hidden="" type="text" id="lon" name="longitude">
				<script>
					getLocation(event);
				</script>
			</div>
			<div class="col-12" style="position: relative; left: 530px">
				<button type="submit" class="btn"
					style="position: relative; left: 10px; background-color: #0d6efd; color: white; border-radius: 20px; width: 20%;">Submit</button>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<%@include file="/views/common/footer.html"%>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>