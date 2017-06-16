<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="POST" action="">
	<input type="text" name="id" id="id" />
	<input type="password" name="pass" id="pass" />
	<input type="submit" name="loginFormSubmit" />	
</form>

<%
/*
Object attr = session.getAttribute("admin");
 
if (attr != null && ((String)attr).equals("true")){
	response.sendRedirect("admin.jsp");
}

String id = request.getParameter("id"); 
String pass = request.getParameter("pass");

if("admin".equals(id) && "pass".equals(pass)){
	session.setAttribute("admin", "true");
	response.sendRedirect("admin.jsp");
}
else if (id != null || pass != null){
	out.print("Invalid login.");
}*/
%>

</body>
</html>