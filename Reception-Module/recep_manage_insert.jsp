<%-- 
    Document   : recep_manage_insert
    Created on : Jun 12, 2019, 8:02:41 AM
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
String a=request.getParameter("ti");
String b=request.getParameter("to");
String c=request.getParameter("pro");
String d=request.getParameter("up");
PreparedStatement ps=con.prepareStatement("insert into ai values(?,?,?,?)");
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
int n=ps.executeUpdate();
if(n!=0)
{
RequestDispatcher rd=request.getRequestDispatcher("recep_sucess.jsp");
rd.include(request,response);
}
else
out.print("Failed to Update in DB!! Oops Something Went Wrong! ");
con.close();
}
catch(Exception e)
{
out.print(e);
}
%>
