<%-- 
    Document   : user_manage
    Created on : Jun 13, 2019, 10:46:51 AM
    Author     : Vamshi
--%>
<%@ page import="java.sql.*"%>
<body background="19.jpg" text="white">
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/hospital";
String un="root";
String pw="vamshi";
Connection con=DriverManager.getConnection(url,un,pw);
Statement st=con.createStatement();
String p=(String)session.getAttribute("pn");
ResultSet rs=st.executeQuery("select * from reg where Phone='"+p+"'");
%>
<h1 align="center">USER_DETAILS</h1>
<a href="logged_in.jsp">Back &larrhk;</a><br><br><br><br>
<table border="6" align="center">
<tr><th>S.No</th><th>FirstName</th><th>LastName</th><th>Email_ID</th><th>Phone</th><th>Salt_Key</th><th>Gender</th><th align="center">Action</th></tr>
<%
    int c=0;
    int i=0;
while(rs.next())
{
    i++;
%>
<tr>
 <td><%=i%>
 <td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td>
<a href='user_manage_edit.jsp?t4=<%=rs.getString("Phone") %>'>Edit</a></td>
</tr>
<% c++;%>
<%
}

out.println("Number of Rows:"+c);
con.close();
}
catch(Exception e)
{
out.print(e);
}
%>
<style>
    body{
        width:90%;
    }
   a:link,a:visited
    {
        background-color: black;
        color:white;
        font-size: 16px;
        padding: 4px 32px;
         text-decoration: none;
        -webkit-transition-duration:0.4s;
        transition-duration:0.4s;
        cursor:pointer;
    }
    a:hover,a:active{
        background-color: green;
    }
    </style>