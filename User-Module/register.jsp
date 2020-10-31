<%-- 
    Document   : register
    Created on : Jun 6, 2019, 8:36:57 AM
    Author     : Vamshi
--%>
<!DOCTYPE html>
<html>
<head>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
background-image: url("3.jpg");
color: white;
background-repeat: no-repeat;
background-size: 1400px 1400px;
}
form {
border: 10px solid black;
}
b
{
color: white;
}
input[type=text], input[type=password],input[type=email] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid white;
  box-sizing: border-box;
}

input[type=tel] {
  width: 70%;
  padding: 10px 10px;
  margin: 8px 0;
  display: inline-block;
border: 2px solid white;
  box-sizing: border-box;
}
button {
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
  top: 75%;
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

</style>
</head>

<body>


<form action="insert.jsp" method="post">

  <div class="tab" align="centre">

<h1 align="center"><b><u>Patient Registration</u></b></h1><br><br>
   <b>First Name</b></p><input type="text" name="t1" autofocus placeholder="@FirstName" pattern=".{4,}"maxlength="24" size="24" required><br>
<b>Last Name</b><input type="text" name="t2" autofocus placeholder="@LastName" maxlength="24"size="24" required><br>
  <b>Email-id</b><input type="email" name="t3" autofocus placeholder="example12@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" maxlength="24" size="20" >
     &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;
<br>
 <b>Phone Number</b><br>
<input type="tel" name="t4" autofocus placeholder="@CountryCode+Number" pattern="[0-9]{2}[0-9]{10,}" required><br><br>
<b>Salt Key</b><input type="text" name="t5" autofocus placeholder="@AnyText=>Remember_while_Login" pattern=".{4,}" required><br>
<b>Gender</b><br><br>
&emsp;&emsp;&emsp;&emsp;<b>Male</b>&nbsp;<input type="radio" name="gender" value="Male">&emsp;&emsp;&emsp;
<b>Female</b>&nbsp;<input type="radio" name="gender" value="Female">&emsp;&emsp;
   <br>   <br>

<button type="submit">Register</button><br><br>
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
