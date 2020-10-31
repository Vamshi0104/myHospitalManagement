<%-- 
    Document   : doctor_loggedin
    Created on : Jun 10, 2019, 8:27:24 AM
    Author     : Vamshi
--%>
<%@ page import="java.util.Date" %>
<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
String uid = (String)session.getAttribute("pn");
String name=(String)session.getAttribute("t1");
if (uid == null)
{
%>
 <jsp:forward page="doctor_signup.jsp"/>
<%	
}
else
{
 Date loginDate = (Date) session.getAttribute("loginDate");
out.println(" <h1>Welcome Dr." +name+"!!</h1>");
%>
Login Time : <%= loginDate %>
<a href="doctor_loggedout.jsp">Logout</a>
<%}
%> 
<style>
    a {
    background-color: #ccc;
  color: white;
  padding: 1em 1.5em;
  text-decoration: none;
  text-transform: uppercase;
  float:right;
}

a:hover {
  background-color: green;
}
h1
{
    text-align:center;
}


body{
background-image: url("13.jpg");
color: white;
background-repeat: no-repeat;
background-size: 1400px 1400px;
}
    </style>
