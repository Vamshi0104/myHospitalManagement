<%-- 
    Document   : doctor_sucess
    Created on : Jun 10, 2019, 8:32:52 AM
    Author     : Vamshi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Page</title>
    </head>
     <body onload="disableBackButton()">
         &emsp;&emsp; <a href="doctor_loggedout.jsp" id="m1">Logout</a>
         <% String name=(String)session.getAttribute("t1");
          response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
          out.println(" <h1>Welcome Dr." +name+"!!</h1>");%>
        <div id="mySidenav" class="sidenav">
  <a href="doctor_viewdb.jsp" id="vu">View_DB</a>
  <a href="doctor_del.jsp" id="uu">AlterUser</a>
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
  left: -100px;
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
  background-color: #ccc;
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
  top: 100px;
  background-color: red;

}

#uu {
  top: 160px;
  background-color: gold;
}

#du {
  top: 220px;
  background-color: #f44336;

}

#m {
  top: 280px;
  background-color: #4CAF50;
}
#v{
     top: 220px;
  background-color: gold;
}

html 
{
  scroll-behavior: smooth;
}
h1{
    text-align:center;
}


    </style>

 <script type="text/javaScript">
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>