<%-- 
    Document   : user_userform
    Created on : Jun 13, 2019, 7:51:00 AM
    Author     : Vamshi
--%>
<body>
    <a href="logged_in.jsp">Back &larrhk;</a>
<form action="recep_manage_insert1.jsp" method="post">
    <div>
        <h1><u>USER-DETAILS</u></h1><br>
        <b>Time_In:</b><br><input type="time" name="ti" placeholder="00:00:00 AM/PM" autofocus required/><br>
        <b>Time_Out:</b><br><input type="time" name="to" placeholder="00:00:00 AM/PM" autofocus /><br><b>PROBLEM:</b><br>
        <textarea rows="4" cols="50" name="pro" placeholder="@Patient Problem in Brief" autofocus required></textarea><br>
       <b>Phone:</b><br><input type="text" name="up" placeholder="@CountryCode+Phone" autofocus required/><br><br>
        <button type ="submit">Enter</button>
    </div>
    </form>
</body>
<style>
    body{
        background-color: black;
        background:url("24.png");
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
  margin: 45px;
 max-width: 500px;
  top: 50%;
    left: 50%;
color:black;
    margin-right: -50%;
 border-radius: 4px;
box-shadow: 0 4px 6px 4px white;
  transform: translate(-50%, -50%)
}
b
    {
        color:white;
        font-weight:600;
    }
    h1
    {
        color:white;
        font-weight:600;
    }
    
    
      input[type=time]{
  width: 50%;
  padding: 8px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid green;
  box-sizing: border-box;
}
        input[type=text]{
  width: 50%;
  padding: 8px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid green;
  box-sizing: border-box;
}
    
    textarea{
         width: 50%;
  padding: 20px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid green;
  box-sizing: border-box;
  resize:none;     
  font-size:15px;
  color:blue;
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