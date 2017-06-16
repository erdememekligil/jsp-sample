<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	Object attr = session.getAttribute("admin");
	if (attr == null || !((String) attr).equals("true")){
		response.sendRedirect("login.jsp");
	}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>2</h1>

<br/>

<a href="admin.jsp">Admin</a>

<a href="logout.jsp">Logout</a>

</body>
</html>