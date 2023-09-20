<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color:lightblue;

}
</style>
</head>
<body>
<%int a=Integer.parseInt(request.getParameter("n1")); %>
<%int b=Integer.parseInt(request.getParameter("n2")); %>
<%! int add(int a,int b){
	return a+b;
} %>
<%! int sub(int a,int b){
	return a-b;
} %>
<%! int mul(int a,int b){
	return a*b;
} %>
<%! int div(int a,int b){
	return a/b;
} %>
<%= a+"+"+b+"="+add(a,b)+"<br>" %>
<%= a+"-"+b+"="+sub(a,b)+"<br>" %>
<%= a+"*"+b+"="+mul(a,b)+"<br>" %>
<%= a+"/"+b+"="+div(a,b)+"<br>" %>
</body>
</html>