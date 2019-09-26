<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<center>
  
  <h2>登录成功</h2>
  <h2>欢迎<font color="red"><%=request.getParameter("dname")%></font>光临!!</h2>
 <%--  <jsp:forward page="#"/> <!-- 患者登录成功后进入患者的主页面 --> --%>
  <%-- <h4><font color="red"><%=request.getParameter("uname")%></font>的zhanghu</h4>在患者的主页面获取登录的患者的名字 --%>
</center>
</body>
</html>