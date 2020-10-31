<%-- 
    Document   : user_pat_viewdb
    Created on : Jun 13, 2019, 5:08:04 PM
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
ResultSet rs=st.executeQuery("select * from doc,ai,tab group by Doctor_FirstName,Patient_Problem order by rand() limit 4");
%>
<h1 align="center">USER_DATABASE</h1>
<p align="center">(Refresh_Page to View your Contact)</p>
<a href="logged_in.jsp">Back &larrhk;</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<a href="user_tablets.jsp">View More &rarrhk;</a><br><br><br>
<table border="6" align="center">
    <tr><th>S.No</th><th>Doctor_FirstName</th><th>Doctor_LastName</th><th>Doctor_Email</th><th>Contact_Doctor</th><th>Available_Status</th><th>Time_in</th><th>Time_out</th><th>Problem</th><th>Patient_Contact</th></tr>
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
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
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
