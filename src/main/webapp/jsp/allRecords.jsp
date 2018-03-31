<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Records</title>

<style type="text/css">
table {
	font-family: cursive;
	font-size: 25px;
	color: #658D61;
}

a {
	padding-left: 50px;
}
</style>
</head>
<body>
	<a href=index.jsp>Logout</a>
	<h1 align="center">Users Information</h1>


	<table align="center">
		<tr>
			<td colspan="3"><h1>Users Information</h1></td>
		</tr>

		<tr>
			<td>UserName</td>
			<td>Name</td>
			<td>Password</td>
		</tr>
		<c:forEach items="${list}" var="s">
			<tr>
				<td>${s.username}</td>
				<td>${s.name}</td>
				<td>${s.password}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>