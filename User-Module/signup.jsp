<%-- 
    Document   : signup
    Created on : Jun 6, 2019, 8:39:17 AM
    Author     : Vamshi
--%>
<!DOCTYPE html>
<html>
<head>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
background-image: url("C.jpg");
color: white;
}
form {
border: 10px solid black;
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
  top: 60%;
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
</style>
</head>
<button class="btn" onclick="window.location.href = 'home.jsp';"><i class="fa fa-home"></i>Home</button>
<body style="color:white;">
   <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
    
 <div class="tab" align="centre">
<form action="logged_auth.jsp" method="post">
<h1 align="center"><b>User_Login</b></h1><br><br>

<b>Phone Number</b><input type="text" name="pn" autofocus placeholder="@CountryCode_and_Number" maxlength="24" size="20" required><br>
  <b> Password</b><input type="password" name="pa" autofocus placeholder="@Enter_Salt_Key"  maxlength="16" size="16"id="hello"required><br><br>
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
