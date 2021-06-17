<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String q=request.getParameter("aid");
String q1=request.getParameter("apswrd");
if(q.equals("Admin") && q1.equals("Admin")){
	session=request.getSession(true);
	session.putValue("slid",q);
	session.putValue("stime",(new java.util.Date()));
	response.sendRedirect("Home.jsp");
}
else{
	out.println("ID/Password not Matched");
}
}catch(Exception ex){
	out.println("Error: "+ex);
}
%>
</body>
</html>