<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
td{
align:center;
}
</style>
</head>
<body>
<%@page import="test3.User,test3.UserDao,java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>User Records</h1>
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>
<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Course</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getId() }</td>
<td>${u.getName() }</td>
<td>${u.getCourse() }</td>
<td><a href="editform.jsp?id=${u.getId() }">Edit</a></td>
<td><a href="deleteuser.jsp?id=${u.getName() }">Delete</a></td>
</tr>
</c:forEach>
</table>
<a href="adduserform.jsp">Add users</a>
</body>
</html>