<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${error}
<form action="j_spring_security_check" method="post">
Enter ID<input type="text" name="j_username"/><br>
Enter Password<input type="text" name="j_password"/><br>
<input type="submit" value="Submit"/>
</form>
</body>
</html>