<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" href="style.css" />
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js"></script>
<style type="text/css">
/* Import Google font - Poppins */
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap")
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 20px;
	background: rgb(130, 106, 251);
}

.container {
	position: relative;
	max-width: 700px;
	width: 100%;
	background: #fff;
	padding: 25px;
	border-radius: 8px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.container header {
	font-size: 1.5rem;
	color: #333;
	font-weight: 500;
	text-align: center;
}

.container .form {
	margin-top: 30px;
}

.form .input-box {
	width: 100%;
	margin-top: 20px;
}

.input-box label {
	color: #333;
}

.form :where(.input-box input, .select-box) {
	position: relative;
	height: 50px;
	width: 100%;
	outline: none;
	font-size: 1rem;
	color: #707070;
	margin-top: 8px;
	border: 1px solid #ddd;
	border-radius: 6px;
	padding: 0 15px;
}

.input-box input:focus {
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}

.form .column {
	display: flex;
	column-gap: 15px;
}

.address :where(input, .select-box) {
	margin-top: 15px;
}

.select-box select {
	height: 100%;
	width: 100%;
	outline: none;
	border: none;
	color: #707070;
	font-size: 1rem;
}

.form button {
	height: 55px;
	width: 100%;
	font-size: 1rem;
	font-weight: 400;
	margin-top: 30px;
	border: none;
}

/*Responsive*/
@media screen and (max-width: 500px) {
	.form .column {
		flex-wrap: wrap;
	}
	.form :where(.gender-option, .gender) {
		row-gap: 15px;
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
<body>
	<section class="container">
		<header>Registration Form</header>
		<form action="#" class="form">
			<div class="column">
				<div class="input-box">
					<label>User Name</label> <input type="text"
						placeholder="Choose user name" required />
				</div>

				<div class="input-box">
					<label>Password</label> <input type="text"
						placeholder="Choose password" required />
				</div>
			</div>

			<div class="input-box">
				<label>Full Name</label> <input type="text"
					placeholder="Enter full name" required />
			</div>

			<div class="input-box">
				<label>Email Address</label> <input type="text"
					placeholder="Enter email address" required />
			</div>

			<div class="input-box">
				<div class="input-box">
					<label>Phone Number</label> <input type="number"
						placeholder="Enter phone number" required />
				</div>
			</div>
			<div class="input-box address">
				<label>Address</label> <input type="text"
					placeholder="Enter address" required />
				<div class="column">
					<div class="select-box">
						<select>
							<option hidden>City</option>
							<option>Noida</option>
							<option>Banglore</option>
							<option>Delhi</option>
							<option>Gurgaon</option>
						</select>
					</div>
				</div>
			</div>
			<div class="input-box">
				<div class="input-box">
					Lat : <input type="text" id="lat" name="latitude"> Lon : <input
						type="text" id="lon" name="longitude">
					<script>
						getLocation(event);
					</script>
				</div>
			</div>
			<button type="submit" class="btn mt-3"
				style="background-color: #0d6efd; margin-left: auto; margin-right: auto; display: block; color: white; border-radius: 20px;">
				Send</button>
		</form>
	</section>
</body>
</html>

