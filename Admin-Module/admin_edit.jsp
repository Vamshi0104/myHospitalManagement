<%-- 
    Document   : admin_edit.jsp
    Created on : Jun 9, 2019, 7:16:18 PM
    Author     : Vamshi
--%>
<%@ page import="java.sql.*"%>
<body>
<%
    try
    {
String host="jdbc:mysql://localhost:3306/hospital";
Statement stat =null;
Connection con=null;
ResultSet rs =null;
PreparedStatement st =null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection(host,"root","vamshi");
%>
<form action="" method="post">
<%
stat=con.createStatement();
String p=request.getParameter("t4");
String data="select * from reg where Phone='"+p+"'";
rs=stat.executeQuery(data);
while(rs.next())
{
%>
<h1 align="center"><u>Update The Patient Credentials</u></h1>
<div>
<b>FirstName:</b><input type="text" name="fn" autofocus value='<%=rs.getString("FirstName")%>'/><br>
<b>LastName:</b><input type="text" name="ln" autofocus value='<%=rs.getString("LastName")%>'/><br>
<b>Email:</b><input type="text" name="em" autofocus value='<%=rs.getString("Email")%>'/><br>
<b>Phone:</b><input type="text" name="ph" autofocus value='<%=rs.getString("Phone")%>'/><br>
<b>Salt_Key:</b><input type="text" name="sk" autofocus value='<%=rs.getString("Salt_Key")%>'/><br>
<b>Gender:</b><input type="text" name="g" autofocus value='<%=rs.getString("Gender")%>'/><br>
<%
}
%>
<button type="submit">Update</button>
</div>
</form>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("em");
String d=request.getParameter("ph");
String e=request.getParameter("sk");
String f=request.getParameter("g");
if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null)
{
String query = "update reg set FirstName=?, LastName=?,Email=?,Phone=?,Salt_Key=?,Gender=? where Phone='"+d+"'";
st=con.prepareStatement(query);
st.setString(1,a);
st.setString(2,b);
st.setString(3,c);
st.setString(4,d);
st.setString(5,e);
st.setString(6,f);
st.executeUpdate();
response.sendRedirect("admin_del.jsp");
}
con.close();
}
catch(Exception e)
{
out.print(e);
}
%>
</body>
<style>
    b
    {
        color:white;
    }
    body
    {
        background-image: url("14.gif");
        background-repeat: no-repeat;
    }
    h1{
        color:black;
    }
    input[type=text]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid green;
  box-sizing: border-box;
}
    button {
  background-color: green;
border-radius:0;
  padding: 15px 0;
  margin: 8px 0;
  border: 0;
  cursor: pointer;
  width: 40%;
font-size: 1.3rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: teal;
  color:white;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
button:hover, button:focus {
  background: green;
}
div{
    text-align: center;
   position: absolute;
  padding: 20px;
  margin: 25px;
 max-width: 500px;
  top: 60%;
    left: 50%;
color:black;
    margin-right: -50%;
 border-radius: 4px;
box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
    transform: translate(-50%, -50%)
}
    </style>
