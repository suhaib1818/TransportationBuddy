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
				<th scope="col">To</th>
				<th scope="col">Subject</th>
				<th scope="col">Message</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="MsgObject" items="${messageList}">
				<tr>
					<%-- <th><a href="/admin/additionalinfo/${employeeObject.id }"> ${employeeObject.name} </a></th> --%>
					<th>${MsgObject.receiverid}</th>
					<th>${MsgObject.subject}</th>
					<th>${MsgObject.message}</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<%@include file="/views/common/allJS.html"%>
</body>
</html>