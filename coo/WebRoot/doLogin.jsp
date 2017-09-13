<%@page import="lis.listen"%>
<%@page import="entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <%
  
  
  String name=request.getParameter("uName");
  String pwd=request.getParameter("pwd");
  String remeber=request.getParameter("remeber");
  
  if(name.equals("tom")&&pwd.equals("123")){
  Users u=new Users();u.setName(name);
  
   session.setAttribute("ulist", new listen(name));
  
  
     Cookie c=new Cookie("rem",name);
    if(remeber!=null&& remeber.equals("on")){
   
    c.setMaxAge(Integer.MAX_VALUE);
       
       
    }else{
       c.setMaxAge(0);
    }
  response.addCookie(c);
  }
  response.sendRedirect("index.jsp");
  
   %>
  
  
  </body>
</html>
