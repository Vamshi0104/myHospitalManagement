<%-- 
    Document   : visit_count.jsp
    Created on : Jun 8, 2019, 5:14:56 PM
    Author     : Vamshi
--%>
<!DOCTYPE html>
<html>
<head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<button class="btn" id="m1" onclick="window.location.href = 'recep_sucess.jsp';"><i class="fa fa-home"></i>Back &larrhk;</button>    
<script>
function clickCounter() {
  if (typeof(Storage) !== "undefined") {
    if (localStorage.clickcount) {
      localStorage.clickcount = Number(localStorage.clickcount)+1;
    } else {
      localStorage.clickcount = 1;
    }
    document.getElementById("result").innerHTML = "Number of Visits to this Page: " + (localStorage.clickcount);
  } else {
    document.getElementById("result").innerHTML = "Sorry,Browser doesnot support WebStorage";
  }
}
</script>
</head>
<body onload="clickCounter()">
    <h1 align="center">HELLO USER !!!</h1><br><br>
<div id="result"></div>
</body>
</html>
<style>
body
{
width:100%;
background-image: url("25.jpg");
color:white;
background-color:black;
font-size:40px;
margin:40px 40 px;
text-align:center;
padding:100px 100px;
height: 100px;
width: 750px;
}
#m1
{
  background-color: green;
border-radius:0;
  padding: 15px 0;
  margin: 8px 0;
  border: 0;
  cursor: pointer;
  width: 20%;
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