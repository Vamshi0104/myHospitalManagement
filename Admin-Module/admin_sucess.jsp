<%-- 
    Document   : admin_sucess
    Created on : Jun 6, 2019, 5:32:35 PM
    Author     : Vamshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
     <body onload="disableBackButton()">
   
          <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
          
          <div class="navbar">
  <a href="#"><i class="fa fa-fw fa-home"></i>Home</a>
  <div class="dropdown">
    <button class="dropbtn">Reception 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
        <a href="recep_register.jsp">Account_Receptionist</a>
      <a href="admin_recep_viewdb.jsp">Receptionist_Details</a>
      <a href="admin_recep_del.jsp">Alter_Details</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Doctors 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="admin_doc_viewdb.jsp">Doctors(In_Patients)</a>
      <a href="admin_doc_del.jsp">Alter_Doctors(In_Patients)</a>
      <a href="admin_doc_out_viewdb.jsp">Doctors(Out_Patients)</a>
      <a href="admin_doc_out_del.jsp">Alter_Doctors(Out_Patients)</a>
    </div>
  </div> 
  <a href="privacy_admin.jsp">Private Policy</a>
</div>     
           &emsp;&emsp;<br> <a href="admin_logout.jsp" id="m1"><i class="fa fa-fw fa-user"></i>Logout</a>
        <h1 align="center">WELCOME ADMIN !!!</h1>
      
        <div id="mySidenav" class="sidenav">
  <a href="admin_viewdb.jsp" id="vu">In_Patients</a>
  <a href="admin_del.jsp" id="uu">AlterUser</a>
  <a href="doc_pat_admin_viewdb.jsp" id="du">Out_Patients</a>
  <a href="visit_count1.jsp" id="m">Visits</a>
</div>

<div style="margin-left:80px;">
 </div>

    </body>
</html>
<style>
   body{
background-image: url("15.jpg");
width:95%;
}
h1{
font-size:35px;
color: white;
 text-shadow: 2px 2px 10px #000000;

}

#mySidenav a {
  position: absolute;
  left: -118px;
  transition: 0.3s;
  padding: 15px;
  width: 100px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
  left: 0;
}
#m1
{
  background-color: black;
  color: white;
  padding: 1em 1.5em;
  text-decoration: none;
  text-transform: uppercase;
  float: right;
}

#m1:hover {
  background-color: red;
}

#vu {
  top: 100px;
  background-color: gold;

}

#uu {
  top: 160px;
  background-color: #2196F3;
}

#du {
  top: 220px;
  background-color: red;
}

#m {
  top: 280px;
  background-color: green;
}
#v{
     top: 340px;
  background-color: teal;
}

html 
{
  scroll-behavior: smooth;
}

.navbar {
  overflow: hidden;
  background-color: black;
  width:100%;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  width:20%;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 96px;
  background-color: black;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: teal;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: center;
  color: white;
  padding: 12px 100px;
  background-color:black;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: green;
  
}

.dropdown:hover .dropdown-content {
  display: block;
  
}


    </style>

 <script type="text/javaScript">
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>