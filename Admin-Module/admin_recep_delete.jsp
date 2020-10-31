<%-- 
    Document   : admin_recep_delete
    Created on : Jun 11, 2019, 1:49:56 PM
    Author     : Vamshi
--%>
<%@ page import="java.sql.*"%>
<html>
<body bgcolor="white" text="blue">
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/hospital";
String un="root";
String pw="vamshi";
Connection con=DriverManager.getConnection(url,un,pw);
String p=request.getParameter("t4");
Statement st=con.createStatement();
int k=st.executeUpdate("delete from recreg where Phone='"+p+"'");
if(k!=0)
{
    RequestDispatcher rd=request.getRequestDispatcher("admin_recep_del.jsp");
			rd.forward(request,response);
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

