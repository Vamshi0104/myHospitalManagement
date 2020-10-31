<%-- 
    Document   : recep_out_doc_edit
    Created on : Jun 12, 2019, 7:04:01 PM
    Author     : Vamshi
--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <h1 align="center"><u>Update The Doctor Credentials</u></h1>
<%@ page import="java.sql.*"%>
<button class="btn" id="m1" onclick="window.location.href = 'recep_out_doc_alter.jsp';"><i class="fa fa-home"></i>Back &larrhk;</button>
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
String p=request.getParameter("up");
String data="select * from doc where Contact_Doctor='"+p+"'";
rs=stat.executeQuery(data);
while(rs.next())
{
%>

<div>
<b>Doctor_FirstName:</b><input type="text" name="fn" autofocus value='<%=rs.getString("Doctor_FirstName")%>'/><br>
<b>Doctor_LastName:</b><input type="text" name="ln" autofocus value='<%=rs.getString("Doctor_LastName")%>'/><br>
<b>Doctor_Email:</b><input type="text" name="em" autofocus value='<%=rs.getString("Doctor_Email")%>'/><br>
<b>Contact_Doctor:</b><input type="text" name="ph" autofocus value='<%=rs.getString("Contact_Doctor")%>'/><br>
<b>Available_Status:</b><input type="text" name="flag" autofocus value='<%=rs.getString("Available_Status")%>'/><br>
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
String e=request.getParameter("flag");
if(a!=null && b!=null && c!=null && d!=null && e!=null)
{
String query = "update doc set Doctor_FirstName=?, Doctor_LastName=?,Doctor_Email=?,Contact_Doctor=?,Available_Status=? where Contact_Doctor='"+d+"'";
st=con.prepareStatement(query);
st.setString(1,a);
st.setString(2,b);
st.setString(3,c);
st.setString(4,d);
st.setString(5,e);
st.executeUpdate();
response.sendRedirect("recep_out_doc_alter.jsp");
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
#m1
{
  background-color: green;
border-radius:0;
  padding: 15px 0;
  margin: 8px 0;
  border: 0;
  cursor: pointer;
  width: 10%;
font-size: 1.3rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: black;
  color:white;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
#m1:hover, #m1:focus {
  background: green;
}
    </style>
