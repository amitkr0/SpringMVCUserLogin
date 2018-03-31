<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
a {
	font-size: 18px;
	font-family: sans-serif;
	margin-top: 20px;
}

form {
	font-family: cursive;
	font-size: 32px;
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
</style>


</head>
<body>
	<h1 align="center">Create your Account</h1>

	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">
		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" />
				</td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input path="name" name="name" id="name" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td><form:input path="gender" name="gender" id="gender" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="city">City</form:label></td>
				<td><form:input path="city" name="city" id="city" /></td>
			</tr>
			<tr>
				<td><form:label path="mobile">Mobile</form:label></td>
				<td><form:input path="mobile" name="mobile" id="mobile" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button>
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="index.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
</body>
</html>