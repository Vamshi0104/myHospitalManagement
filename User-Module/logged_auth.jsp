<%-- 
    Document   : logged_auth
    Created on : Jun 6, 2019, 12:06:55 PM
    Author     : Vamshi
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date"%>

<%@ page session = "true" %>
<html>
<body bgcolor="white" text="blue">
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
try
{  
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/hospital";
String un="root";
String pw="vamshi";
Connection con=DriverManager.getConnection(url,un,pw);
String u=request.getParameter("pn");
String p=request.getParameter("pa");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg");
int f=0; 
while(rs.next())
{
    String n=rs.getString(1);
if(rs.getString(4).equals(u)&&rs.getString(5).equals(p))
{
  String ph=rs.getString(4);
  session.setAttribute("pn",ph);
  session.setAttribute("t1",n);
  session.setAttribute("loginDate", new Date());
  response.sendRedirect("logged_in.jsp");
f=1;
break;
}
}
if(f==0)
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
