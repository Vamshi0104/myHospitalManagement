    <%-- 
    Document   : insert
    Created on : Jun 6, 2019, 10:20:27 AM
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
String f=request.getParameter("t1");
String l=request.getParameter("t2");
String e=request.getParameter("t3");
String p=request.getParameter("t4");
String s=request.getParameter("t5");
String g=request.getParameter("gender");
PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?,?,?,?)");
ps.setString(1,f);
ps.setString(2,l);
ps.setString(3,e);
ps.setString(4,p);
ps.setString(5,s);
ps.setString(6,g);
int n=ps.executeUpdate();
if(n!=0)
{

RequestDispatcher rd=request.getRequestDispatcher("Thankyou.jsp");
rd.include(request,response);
}
else
out.print("Failed to Register!! Oops Something Went Wrong! ");
con.close();
}
catch(Exception e)
{
out.print(e);
}
%>

