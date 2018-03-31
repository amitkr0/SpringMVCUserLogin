<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>

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
	color: #23284C;
	font-family: cursive;
}

p {
	color: #361841;
	font-family: monospace;
	font-size: 24px;
}
</style>

</head>
<body>
	<div align="center">

		<h1>Welcome ${name}</h1>

		<p>View your profile here:</p>
		<form action="view">
			<input type="hidden" id="userid" name="userid" value=${userid } /> <input
				type="submit" value="ViewProfile" />
		</form>


		<p>update your profile here:</p>
		<form action="update">
			<input type="hidden" id="userid" name="userid" value=${userid } /> <input
				type="submit" value="UpdateProfile" />
		</form>
		<br>
		<br>
		<br> <a href="index.jsp">Logout</a>

	</div>

</body>
</html>