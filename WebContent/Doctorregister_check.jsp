<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="reg" scope="request" class="com.entity.Doctor"/>
<jsp:setProperty name="reg" property="*"/>
<body>
<%
   String dtel=request.getParameter("dtel");
   String dname=request.getParameter("dname");
   String dpwd=request.getParameter("dpwd");

   String drepwd=request.getParameter("drepwd");
%>
 <%!
    //定义数据库驱动程序
    public static final String DBDRIVER = "com.mysql.jdbc.Driver";
    //数据库连接地址
    public static final String DBURL = "jdbc:mysql://localhost:3306/hospital?characterEncoding=utf-8&useSSL=false";
	//定义MySQL数据库的连接地址，格式：jdbc:mysql://IP地址:端口号/数据库名?字符集为-8&时区为GMT&SSL连接关闭
	public static final String DBUSER = "root";	//MySQL数据库的连接用户名
	public static final String DBPASS = "hgyl13203738223";	//MySQL数据库的连接密码
    %>
    <%
    Connection conn=null;
    PreparedStatement pstmt= null;
    ResultSet rs = null;
    boolean flag = false;
    String name = null;
    %>
     <%
    try{
    	Class.forName(DBDRIVER);
    	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
    	String sql = "insert into doctor(dtel,dname,dpwd,drepwd)values(?,?,?,?)";
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, dtel);
    	pstmt.setString(2, dname);
    	pstmt.setString(3, dpwd);
    	pstmt.setString(4, drepwd);
    	

    	if(pstmt.executeUpdate()>0){
    		name = rs.getString(1);
    		flag=true;
    	}
    }catch(Exception e){
    	System.out.println(e);
    }
    finally{
    	try{
    		rs.close();
    		pstmt.close();
    		conn.close();
    	}catch(Exception e){}
    }
    %>
    <%
    if(reg.isValidate()){
         if(flag){
    %>
    
            <jsp:forward page="Doctorregister_success.jsp">
        <jsp:param  name="dname" value="<%=name%>"/> 
            </jsp:forward>
    <%
          }else{
    %>
             <jsp:forward page="Doctorregister_success.jsp"/>
    <%
          }
    }else{
    %>
             <jsp:forward page="Doctorregister.jsp"/>
    <%
    }
    %>   
</body>
</html>