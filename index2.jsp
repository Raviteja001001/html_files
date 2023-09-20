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
int n=Integer.parseInt(request.getParameter("n1")); %>
<p> multiplication table is<%=n %> is: </p>
<% for(int i=0;i<=10;i++){ %>
<table>
<tr>
<td><%=n %> x <%=i %> = <%=n*i %></td>
<tr></table>
<%} %>
</body>
</html>