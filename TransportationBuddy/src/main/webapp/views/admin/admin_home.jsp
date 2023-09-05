<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    wid
}

</style>
</head>
<body>
	<%@include file="/views/admin/admin_navbar.html"%>
	<div class="slide-in" style="height: 444px">
		<h1 style="text-align: center;">Welcome ${admin.name }</h1>
		<h6 style="text-align: center;">Email - ${admin.email }</h6>
		<h6 style="text-align: center;">Phone - ${admin.phone }</h6>
	</div>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>