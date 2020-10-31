<%-- 
    Document   : admin_doc_out_delete
    Created on : Jun 12, 2019, 6:37:58 PM
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
String p=request.getParameter("up");
Statement st=con.createStatement();
int k=st.executeUpdate("delete from doc where Contact_Doctor='"+p+"'");
if(k!=0)
{
    RequestDispatcher rd=request.getRequestDispatcher("admin_doc_out_del.jsp");
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
