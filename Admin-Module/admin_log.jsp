<%-- 
    Document   : admin_log
    Created on : Jun 6, 2019, 4:59:35 PM
    Author     : Vamshi
--%>
<!DOCTYPE html>
<html>
<head>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">   
<style>
body{
background-image: url("9.jpg");
color: white;
width:100%;
}
form {
border: 10px solid cyan;
}
b
{
color: white;
}
input[type=text], input[type=password] {
  width: 90%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid white;
  box-sizing: border-box;
}
button{
  background-color: green;
border-radius:0;
  padding: 15px 0;
  margin: 8px 0;
  border: 0;
  cursor: pointer;
  width: 50%;
font-size: 1.3rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: black;
  color:white;
  transition: all 0.5s ease;
  -webkit-appearance: none;
}
button:hover, button:focus {
  background: green;
}
div
{
 text-align: center;
   position: absolute;
  padding: 20px;
  margin: 25px;
 max-width: 500px;
  top: 55%;
    left: 50%;
color:black;
    margin-right: -50%;
 border-radius: 4px;
box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
    transform: translate(-50%, -50%)
}

input:focus, textarea:focus {
  outline:0;
  border-color:green;
}
canvas{
  /*prevent interaction with the canvas*/
  pointer-events:none;
}
.btn{
    width:10%;
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
</head>
<body style="color:white;">
     <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
     <a href="home.jsp">HOME &larrhk;</a><br<br>
  <h1 align="center" style="font-family:verdana;"><b>WELCOME_ADMIN</b></h1>
 <div class="tab" align="centre">
<form action="admin_auth.jsp" method="post">
<h1 align="center"><b>Login</b></h1><br><br>

<b>Admin_ID</b><input type="text" name="ad1" autofocus placeholder="@AdminID" maxlength="24" size="20" required><br>
  <b> Password</b><input type="password" name="ad2" autofocus placeholder="@AdminPassword"  maxlength="16" size="16"id="hello"required><br><br>
<input type="checkbox" onclick="f1()"><b>Show Password</b>
    <br><br>
 
<button type="submit">Login</button><br><br>
 </div>
 </form> 
<script>
function f1() {
  var x = document.getElementById("hello");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
  }
</script>
</body>
</html>

