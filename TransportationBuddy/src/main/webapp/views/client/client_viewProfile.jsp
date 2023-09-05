<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<%@include file="/views/common/allCSS.html"%>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	min-height: 100vh;
	/* display: flex; */
	align-items: center;
	justify-content: center;
	background: #F6F1F1;
}

.container {
	/* display: flex; */
	width: 500px;
	height: 450px;
	margin-top: 25px;
	background: #19A7CE;
	border-radius: 12px;
	padding: 30px;
	box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
	background: #19A7CE;
}

.container .card {
	display: flex;
	gap: 12px;
	flex: 0 0 100%;
	flex-direction: column;
	align-items: center;
	align-self: center;
	height: 400px;
	padding: 30px;
	border-radius: 12px;
	background: #F6F1F1;
	box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
}

.card h1 {
	margin-top: 25px;
	color: #333;
	font-size: 40px;
	font-weight: 600;
}

.card p {
	margin-top: 4px;
	font-size: 18px;
	font-weight: 400;
	color: #333;
	text-align: justify;
}
</style>
</head>
<body>
	<%@include file="/views/client/client_navbar.html"%>
	<%-- <div style="padding-top: 50px">
		<h1 style="text-align: center;">Welcome ${client.name}</h1>
		<h3 style="text-align: center;">Email - ${client.email}</h3>
		<h3 style="text-align: center;">Phone - ${client.phone}</h3>
		<h3 style="text-align: center;">City - ${client.city}</h3>
	</div> --%>

	<section class="container">
		<div class="card">
			<h1>Welcome ${client.name}</h1>
			<p>Email - ${client.email}</p>
			<p>Phone - ${client.phone}</p>
			<p>City - ${client.city}</p>
		</div>
	</section>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>




<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<%@include file="/views/common/allCSS.html"%>
<style>
@keyframes slide {
    0% {
        transform: translateX(-100%);
    }
    100% {
        transform: translateX(0);
    }
}

.slide-in {
    animation: slide 1s ease-out;
}

</style>
</head>
<body>
<%@include file="/views/client/client_navbar.html"%>
<div class="slide-in">
		<h1 style="text-align: center;">Welcome ${client.name }</h1>
		<h6 style="text-align: center;">Email - ${client.email }</h6> 
		<h6 style="text-align: center;">Phone - ${client.phone }</h6>
		<h6 style="text-align: center;">City - ${client.city }</h6>
		<h6 style="text-align: center;">Address - ${client.address }</h6>
		<h6 style="text-align: center;">Location - ${client.latitude } , ${client.longitude }</h6>
	</div>

<%@include file="/views/common/allJS.html"%>
</body>
</html> --%>