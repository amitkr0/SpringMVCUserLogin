<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>

<style type="text/css">
a {
	font-size: 18px;
	font-family: sans-serif;
	padding-top: 50px;
	text-align: center;
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

.abc {
	color: red;
}
</style>

</head>
<body>
	<form id="abc" action="userhome">
		<input type="hidden" id="userid" name="userid" value=${userid } /> <input
			type="submit" value="HomePage" />
	</form>
	<h1 align="center">Profile</h1>


	<table align="center">
		<tr>
			<td>Username</td>
			<td>:- ${details.username}</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>:- ${details.name}</td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>:- ${details.gender}</td>
		</tr>
		<tr>
			<td>Email ID</td>
			<td>:- ${details.email}</td>
		</tr>
		<tr>
			<td>City</td>
			<td>:- ${details.city}</td>
		</tr>
		<tr>
			<td>Mobile No.</td>
			<td>:- ${details.mobile}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>:- ${details.password}</td>
		</tr>
	</table>


	<div align="center">
		<a href="index.jsp">Logout</a>
	</div>


</body>
</html>