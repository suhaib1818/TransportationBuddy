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
<body>
	<%@include file="/views/admin/admin_navbar.html"%>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone</th>
				<th scope="col">Rating</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="feedbackObject" items="${feedbacklist }">
				<tr>
					<th><a href="/admin/review/${feedbackObject.id }">${feedbackObject.name } </a></th>
					<th>${feedbackObject.email }</th>
					<th>${feedbackObject.phone }</th>
					<th>${feedbackObject.rating }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>