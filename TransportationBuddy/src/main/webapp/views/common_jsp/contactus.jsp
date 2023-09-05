<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/views/common/allCSS.html"%>
<link rel="stylesheet" href="/views/common/contactus.css">
</head>
<body style="background-color: #F6F1F1; padding: 0; margin: 0; width: 100%; height: 100%; overflow-x: hidden;">
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
					<!-- <div class="text-two">+ 91 78006 67786</div> -->
				</div>
				<div class="email details">
					<i class="fas fa-envelope"></i>
					<div class="topic">Email</div>
					<div class="text-one">transportationbuddy@gmail.com</div>
					<!-- <div class="text-two">info.codinglab@gmail.com</div> -->
				</div>
			</div>
			<div class="right-side">
				<div class="topic-text">Get in touch!</div>
				<p>If you have any queries do contact us from here. It's our
					pleasure to help you. :)</p>
				<form method="post" action="contact">
					<div class="input-box">
						<input type="text" placeholder="Enter your name" name="name" required>
					</div>
					<div class="input-box">
						<input type="email" placeholder="Enter your email" name="email" required>
					</div>
					<div class="input-box">
						<input type="number" placeholder="Enter your phone" name="phone" required>
					</div>
					<div class="input-box message-box">
						<textarea class="form-control" placeholder="Leave a message here"
							name="message" required></textarea>
					</div>
					<div class="button">
						<input type="submit" value="Send Now">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	<%@include file="/views/common/footer.html"%>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>





	<!-- 	<section>
		<form method="post" action="contact" id="contactform">
 			<div class="form">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Name</label>
					<div class="col-md-5">
						<input type="text" class="form-control"
							placeholder="Full Name" name="name" >
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Email</label>
					<div class="col-md-5">
						<input type="email" class="form-control"
							placeholder="info@example.com" name="email">
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Phone</label>
					<div class="col-md-5">
						<input type="number" class="form-control"
							placeholder="9999000777" name="phone">
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">Message</label>
					<div class="col-md-5">
						<textarea class="form-control"
							placeholder="Leave a message here" name="message"
							style="height: 100px"></textarea>
					</div>
				</div>
				<button type="submit" class="btn mb-5"
					style="background-color: black; margin-left: 200px; margin-right: auto; display: block; color: white">
					Submit</button>
			</div>
		</form>
	</section> -->