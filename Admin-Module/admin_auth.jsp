<%-- 
    Document   : admin_auth
    Created on : Jun 6, 2019, 5:15:07 PM
    Author     : Vamshi
--%>

<%@ page import="java.sql.*"%>
<html>
<body bgcolor="white" text="blue">
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/hospital";
String un="root";
String pw="vamshi";
Connection con=DriverManager.getConnection(url,un,pw);
String u=request.getParameter("ad1");
String p=request.getParameter("ad2");
if(u.equals("admin@2019")&&p.equals("pass_2019"))
		{
                  %>
                  <jsp:include page="admin_sucess.jsp" />  
                  <%
                      }
else
{
    RequestDispatcher rd=request.getRequestDispatcher("fail.jsp");
			rd.forward(request,response);
}

con.close();
}
catch(Exception e)
{
    out.println(e);
}
%>