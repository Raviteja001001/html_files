<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int a=Integer.parseInt(request.getParameter("u1"));
%>
<% int b=Integer.parseInt(request.getParameter("u1"));
out.print(a+"+"+b+"="+(a+b)+"<br>");
out.print(a+"-"+b+"="+(a-b)+"<br>");
out.print(a+"*"+b+"="+(a*b)+"<br>");
out.print(a+"/"+b+"="+(a/b)+"<br>");%>
</body>
</html>