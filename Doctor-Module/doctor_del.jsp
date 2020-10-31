<%-- 
    Document   : doctor_del
    Created on : Jun 10, 2019, 8:35:21 AM
    Author     : Vamshi
--%>
<%@ page import="java.sql.*"%>
<body background="19.jpg" text="white">
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/hospital";
String un="root";
String pw="vamshi";
Connection con=DriverManager.getConnection(url,un,pw);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg");
int i=0;
%>

<a href="doctor_sucess.jsp">Back &larrhk;</a><br><br><br><br>
<table border="6" align="center">
<tr><th>FirstName</th><th>LastName</th><th>Email_ID</th><th>Phone</th><th>Salt_Key</th><th>Gender</th><th align="center">Action</th></tr>
<%
    int c=0;
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("FirstName")%></td>
<td><%=rs.getString("LastName")%></td>
<td><%=rs.getString("Email")%></td>
<td><%=rs.getString("Phone")%></td>
<td><%=rs.getString("Salt_Key")%></td>
<td><%=rs.getString("Gender")%></td>
<td><a href='doctor_delete.jsp?t4=<%=rs.getString("Phone") %>'>Delete</a>
</tr>
<% c++;%>
<%
i++;
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
