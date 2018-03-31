<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateProfile</title>
<style type="text/css">
a {
	font-size: 18px;
	font-family: sans-serif;
	margin-top: 20px;
}

form {
	font-family: cursive;
	font-size: 24px;
}

button {
	font-family: sans-serif;
	text-align: center;
	margin-top: 20px;
	font-size: 20px;
}

h1 {
	color: #1B11111;
	font-family: cursive;
}

tr {
	padding-top: 10px;
}

td {
	font-size: 20px;
	font-family: monospace;
}
</style>

</head>
<body>
	<h1 align="center">Update you Prfoile here</h1>

	<form:form id="updateForm" modelAttribute="user" action="updateProcess"
		method="post">
		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username"
						value="${details.username}" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" name="name" id="name"
						value="${details.name}" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td><form:input path="gender" name="gender" id="gender"
						value="${details.gender}" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email"
						value="${details.email}" /></td>
			</tr>
			<tr>
				<td><form:label path="city">City</form:label></td>
				<td><form:input path="city" name="city" id="city"
						value="${details.city}" /></td>
			</tr>
			<tr>
				<td><form:label path="mobile">Mobile</form:label></td>
				<td><form:input path="mobile" name="mobile" id="mobile"
						value="${details.mobile}" /></td>
			</tr>
			<tr>
				<td><form:label path="password">New Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button id="update" name="update">Update</form:button>
				</td>
			</tr>
			<tr></tr>

		</table>
	</form:form>
</body>
</html>