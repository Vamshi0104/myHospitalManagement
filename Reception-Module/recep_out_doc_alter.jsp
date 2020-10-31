<%-- 
    Document   : recep_out_doc_alter
    Created on : Jun 12, 2019, 6:56:23 PM
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
ResultSet rs=st.executeQuery("select * from doc");
int i=0;
%>

<a href="recep_sucess.jsp">Back &larrhk;</a><br><br><br><br>
<table border="6" align="center">
<tr><th>Doctor_FirstName</th><th>Doctor_LastName</th><th>Doctor_Email</th><th>Contact_Doctor</th><th>Available_Status</th><th align="center">Action</th></tr>
<%
    int c=0;
while(rs.next())
{
%>
<tr>
<td><%=rs.getString("Doctor_FirstName")%></td>
<td><%=rs.getString("Doctor_LastName")%></td>
<td><%=rs.getString("Doctor_Email")%></td>
<td><%=rs.getString("Contact_Doctor")%></td>
<td><%=rs.getString("Available_Status")%></td>
<td><a href='recep_out_doc_edit.jsp?up=<%=rs.getString("Contact_Doctor") %>'>Edit</a></td>
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
