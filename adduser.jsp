<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="test3.UserDao" %>
<jsp:useBean id="u" class="test3.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=UserDao.save(u);
if(i>0){
	//response.sendRedirect("adduse_success.jsp");
}else{
	//response.sendRedirect("adduse_error.jsp");
}
%>
</body>
</html>