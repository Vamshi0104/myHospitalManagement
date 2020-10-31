<%-- 
    Document   : recep_sucess
    Created on : Jun 11, 2019, 11:16:46 AM
    Author     : Vamshi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receptionist Page</title>
    </head>
     <body onload="disableBackButton()">
         &emsp;&emsp; <a href="recep_log.jsp" id="m1">Logout</a>
         <% String name=(String)session.getAttribute("t1");
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
          out.println(" <h1>&emsp;&emsp;&emsp;&emsp;&emsp;Welcome " +name+"!!</h1>");%>
        <div id="mySidenav" class="sidenav">
  <a href="patient_viewdb.jsp" id="uu">Patients</a>
  <a href="recep_userform.jsp" id="du">User_Form</a>
  <a href="doc_pat_viewdb.jsp" id="m">Manage</a>
  <a href="recep_out_doc_alter.jsp" id="vu">Alter_Doc</a>
  <a href="visit_count.jsp" id="v">Visits</a>
</div>
<div style="margin-left:80px;">
 </div>

    </body>
</html>
<style>
   body{
background-image: url("17.jpg");
color: white;
width:90%;
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
  background-color: #333;
  color: white;
  padding: 1em 1.5em;
  text-decoration: none;
  text-transform: uppercase;
  float: right;
}

#m1:hover {
  background-color: green;
}
#vu {
  top: 340px;
  background-color: purple;

}

#uu {
  top: 160px;
  background-color: #2196F3;
}

#du {
  top: 220px;
  background-color:red;

}

#m {
  top: 280px;
  background-color: green;
}
#v{
     top: 400px;
  background-color: gold;
}

html 
{
  scroll-behavior: smooth;
}
h1
{
    text-align: center;
    color:white;
    font-size:40px;
}

    </style>

 <script type="text/javaScript">
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>