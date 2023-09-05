<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>${title }</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/views/common/allCSS.html"%>
<link rel="stylesheet" href="/views/common/feedback.css">
<style>
/* rating section */
div.stars {
	width: 270px;
	display: inline-block;
}

.mt-200 {
	margin-top: 200px;
}

input.star {
	display: none;
}

label.star {
	float: right;
	padding: 10px;
	font-size: 26px;
	color: #FD4;
	transition: all .2s;
}

input.star:checked ~ label.star:before {
	content: '\f005';
	color: #FD4;
	transition: all .25s;
}

input.star-5:checked ~ label.star:before {
	color: #FE7;
	text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before {
	color: #F62;
}

label.star:hover {
	transform: rotate(-15deg) scale(1.3);
}

label.star:before {
	content: '\f006';
	font-family: FontAwesome;
}
/* rating section */
</style>
</head>
<body
	style="background-color: #F6F1F1; padding: 0; margin: 0; width: 100%; height: 100%; overflow-x: hidden;">
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
					<i class="fa-regular fa-face-smile"></i>
					<div class="topic">Happy</div>
				</div>
				<div class="phone details">
					<i class="fa-regular fa-face-meh"></i>
					<div class="topic">Meh</div>
				</div>
				<div class="email details">
					<i class="fa-regular fa-face-frown"></i>
					<div class="topic">Sad</div>
				</div>
			</div>
			<div class="right-side">
				<div class="topic-text">Tell us your opinion!</div>
				<p>Please complete the following form and help us improve our
					customer experience. :)</p>
				<form method="post" action="feedBack">
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
					<div class="input-box message-box">
						<textarea class="form-control" placeholder="Leave a message here"
							name="feedback_text" required></textarea>
					</div>
					<!-- <div class="select-box">
						<select class="select-box" name="rating" required="required">
							<option disabled selected value="">Rate</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div> -->
						<div class="input-box">
							<div class="row">
								<div class="col-md-12">
									<div class="stars">
										<div>

											<input class="star star-5" id="star-5" type="radio"
												name="rating" value="5" /> <label class="star star-5"
												for="star-5"></label> <input class="star star-4" id="star-4"
												type="radio" name="rating" value="4" /> <label
												class="star star-4" for="star-4"></label> <input
												class="star star-3" id="star-3" type="radio" name="rating"
												value="3" /> <label class="star star-3" for="star-3"></label>

											<input class="star star-2" id="star-2" type="radio"
												name="rating" value="2" /> <label class="star star-2"
												for="star-2"></label> <input class="star star-1" id="star-1"
												type="radio" name="rating" value="1" /> <label
												class="star star-1" for="star-1"></label>

										</div>
									</div>
								</div>
							</div>
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