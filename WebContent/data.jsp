<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>What you said</title>
</head>
<body>
	<%
	String firstName = request.getParameter("first");
	String lastName = request.getParameter("last");
	String age = request.getParameter("age");
	String favouriteColour = request.getParameter("colour");
	String fullName;
	int parsedAge;
	
	if (firstName == null) {
		firstName = "";
	}
	if (lastName == null) {
		lastName = "";
	}
	fullName = firstName + " " + lastName;
	
	if (fullName.isBlank()) {
		out.print("You didn't tell me your name<br>");
	} else {
		 out.print("Your name is " + fullName.trim() + "<br>");
	}
	
	try {
		parsedAge = Integer.parseInt(age);
		out.print("You said you are " + parsedAge + " years old");
		if (parsedAge < 0) {
			out.print(", but you can't have a negative age!");
		} else if (parsedAge < 5) {
			out.print(", but I don't believe you are that young");				
		} else if (parsedAge >= 5 && parsedAge < 18) {
			out.print(", so you are legally a child");
		} else if (parsedAge >= 18 && parsedAge < 90) {
			out.print(", and that makes you a grown-up");
		} else if (parsedAge >= 90 && parsedAge < 115) {
			out.print(", and that means you have been around for a very long time!");
		} else {
			out.print(", but I don't believe you are that old");
		}
	} catch (Exception e) {
		out.print("You did not tell your age in a way I can understand");		
		// e.printStackTrace();
	}
	out.print("<br>");
	
	out.print("<p style=\"color: " + favouriteColour 
			  + "\">This line is written in your favourite colour: " 
			  + favouriteColour + "</p>");
	%>
	
</body>
</html>