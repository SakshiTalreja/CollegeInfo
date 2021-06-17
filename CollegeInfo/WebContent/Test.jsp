<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.jsoup.Jsoup" %>
    <%@page import="org.jsoup.nodes.Document" %>
    <%@page import="org.jsoup.nodes.Element" %>
    <%@page import="org.jsoup.select.Elements" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	Document doc=Jsoup.connect("http://www.publicdial.com/free-indian-email-database-list590to595K.aspx").timeout(6000).get();
	Elements body=doc.select("table#ctl00_MainContent_dlAdPost");
	out.println((body).select("tbody tr").size());
	
	for(Element e : body.select("tbody tr")) {
		String data=e.select("td").text();
	     out.println(data);
	     out.println();
	}
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</body>
</html>