<%-- 
    Document   : patient_viewdb
    Created on : Jun 11, 2019, 11:19:36 AM
    Author     : Vamshi
--%>
<%-- 
    Document   : admin_viewdb
    Created on : Jun 6, 2019, 6:22:17 PM
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
ResultSet rs=st.executeQuery("select * from reg");
%>
<h1 align="center">PATIENT_DATABASE</h1>
<a href="recep_sucess.jsp">Back &larrhk;</a><br><br><br><br>
<table border="6" align="center">
<tr><th>S.No</th><th>FirstName</th><th>LastName</th><th>Email_ID</th><th>Phone</th><th>Gender</th></tr>
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
<td><%=rs.getString(6)%></td>
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
        padding: 15px 32px;
         text-decoration: none;
        -webkit-transition-duration:0.4s;
        transition-duration:0.4s;
        cursor:pointer;
    }
    a:hover,a:active{
        background-color: green;
    }
    </style>