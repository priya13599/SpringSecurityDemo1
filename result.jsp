<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
</head>
<body>

<HR>
<a href="j_spring_security_logout">Logout</a><br>
<security:authentication property="name"/>

<security:authorize ifAnyGranted="ROLE_MAKER">
<div style="background-color: olive; height: 200px">
Spring Security Authorization Maker
</div>
</security:authorize>
<HR>
${buname}
<br>
${a1}<br>
${a2}<br>
${cust.customerid}<br>
${cust.custname}<br>
Welcome<br>
${a}<br>
${b}<br>
${name}<br>
</body>
</html>