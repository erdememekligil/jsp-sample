<%@page import="ability.Person"%>
<%@page import="java.util.List"%>
<%@page import="ability.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
.helloDiv{
	position: absolute;
}

</style>
</head>
<body>
<script type="text/javascript" src="slide.js">
</script>


<div class="helloDiv" id="hello">Hello World</div>
<br/>
<a href="admin.jsp">Admin Girişi</a>

<%
	List<Person> list = new Data().getAllData();
	for(int i = 0; i < list.size(); i++){
		
%>
<div>HELLO <%= list.get(i).getName() %></div>
<%
}%>

<form method="POST" action="receive.jsp">
	<input type="text" name="formName"/>
	<input type="submit" name="formSubmit" value="Gönder"/>
</form>

<form method="GET" action="">
	<input type="text" name="formName"/>
	<input type="submit" name="formSubmit2" value="Gönder"/>
</form>
<%
String name = request.getParameter("formName"); 
out.print(name);
%>
</body>
</html>