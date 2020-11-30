<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World web application</title>
</head>
<body>
    <h1>Hello JSP and Servlet!</h1>
    <form action="helloServlet" method="post">
    	Enter your name: <input type="text" name="username" size="20">
    	<input type="submit" value="Call Servlet" />
	</form>
</body>
</html>
