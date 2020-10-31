<%-- 
    Document   : user_tablets
    Created on : Jun 13, 2019, 5:21:25 PM
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
ResultSet rs=st.executeQuery(" select timein,timeout,Patient_Contact,TabletName,ConsumptionofTablet,Problem ,Doctor_FirstName,Doctor_Email,Contact_Doctor from ai,tab,doc group by Patient_Problem,Problem,TabletName,Patient_Contact,Problem,timein,timeout,Doctor_FirstName,Doctor_Email,Contact_Doctor order by rand() limit 4;");
%>
<h1 align="center">USER_TABLETS_DETAILS</h1>
<p align="center">(Refresh_Page to View your Details)</p>
<a href="user_pat_viewdb.jsp">Back &larrhk;</a><br><br><br>
<table border="6" align="center">
    <tr><th>S.No</th><th>Time_In</th><th>Time_Out</th><th>Patient_Contact</th><th>TabletName</th><th>ConsumptionofTablet</th><th>Problem</th><th>Doctor_Name</th><th>Doctor_Email</th><th>Contact_Doctor</th></tr>
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
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
</tr>
<% c++;%>
<%
}

out.println("Number of Rows:"+c);out.println("<br><br>");
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
