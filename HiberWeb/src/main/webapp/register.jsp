<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.niit.hiberweb.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	Registration Hibernate Demo</title>
</head>
<body>
<jsp:useBean id="userBean" class="com.niit.hiberweb.User">
</jsp:useBean>
<jsp:setProperty property="*" name="userBean"/>

<%
int i=UserDAO.register(userBean);
if(i>0)
	out.println("You are successfully registered");
%>
</body>
</html>