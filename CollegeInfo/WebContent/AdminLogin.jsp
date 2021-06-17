<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body>

<form action="AdminCheckLogin.jsp">
<h1 style="text-align:center">Admin Login</h1>
<table style="border:5px solid; padding:7px;border-spacing:10px; margin-left:auto; margin-right:auto;">
<tr><td>Enter Login ID: </td><td><input type="text" name=aid required></td></tr>
<tr><td>Enter Password: </td><td><input type="password" name="apswrd" required></td></tr>
<tr><td><input type="submit" value="Login"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>

</body>
</html>