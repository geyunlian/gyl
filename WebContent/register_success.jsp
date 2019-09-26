<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
  <h1>注册操作</h1>
  <h2>注册成功成功</h2>
  <h2>欢迎<font color="red"><%=request.getParameter("uname")%></font>光临!!</h2>
  <%--  <jsp:forward page="login.jsp"/> --%>
</center>
</body>
</html>