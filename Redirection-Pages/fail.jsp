<%-- 
    Document   : fail_login
    Created on : Jun 6, 2019, 1:26:26 PM
    Author     : Vamshi
--%>

<html>
   <head>
      <title>Setting HTTP Status Code</title>
   </head>
   <h1>IF YOU ARE VIEWING,SOME INVALID CREDENTIALS HAS BEEN GIVEN!!</h1>
   <body>
      <%
         // Set error code and reason.
         response.sendError(406, "Oops_Authentication Required!!" );
         out.println("Try Again!!");
      %>
   </body>
</html>