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
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  </head>
  
  <body>
  
  <%
   Cookie[] coo=  request.getCookies();
   for(int i=0; coo!=null&&i<coo.length;i++){
       if(coo[i].getName().equals("rem")){
      String name= coo[i].getValue();
        request.setAttribute("name",name);
         %>
         <script type="text/javascript">
            $(function(){
          
             
               $("input[name=remeber]").attr("checked","checked");
           });
         
         </script>
         <%
       }
   }
  
  
   %>
  
   <form action="doLogin.jsp" method="get">
     <input type="text" name="uName" value="<%=request.getAttribute("name")%>"><br>
     <input type="text" name="pwd"><br>
     <input type="checkbox" name="remeber">记住名字<br/>
     <input type="submit" value="登陆"><br>
   
   </form>
  </body>
</html>
