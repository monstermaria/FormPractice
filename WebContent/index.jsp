<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fabulous Form</title>
</head>
<body>
	<form action="data.jsp">
		<span>What's your first name?</span>
		<input type="text" name="first">
		<br>
		<span>What's your last name?</span>
		<input type="text" name="last">
		<br>
		<span>What's your age?</span>
		<input type="number" name="age">
		<br>
		<span>What's your favorit colour?</span>
		<input type="color" name="colour">
		<br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>