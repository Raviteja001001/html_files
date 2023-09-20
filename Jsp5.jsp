<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String a=request.getParameter("uname");
out.print("welcome "+a);
session.setAttribute("user",a);
%>
<a href="Jsp5a.jsp">another jsp page</a>
</body>
</html>