<%-- 
    Document   : home
    Created on : Jun 6, 2019, 8:00:20 AM
    Author     : Vamshi
--%>
<!DOCTYPE html>
<html>
<head>
  <title>MAIN PAGE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
html
{
scroll-behavior: smooth;
 box-sizing: border-box;
}
@media screen and (min-width: 400px)
 {
  body
 {
      position: relative; 
  }
}
  #section1 {padding-top:50px;height:700px;color: #fff;border: 3px dashed #000000; background-color: black;background-image: url("1.jpg");}
  #section2 {padding-top:50px;height:700px;color: #fff; border: 3px dashed #000000;background-color: black;background-image: url("20.jpg");}
  #section3 {padding-top:50px;height:700px;color: #fff; border: 3px dashed #000000;background-color: black;background-image: url("2.jpg");}
  #section4 {padding-top:50px;height:1250px;color: #fff;border: 3px dashed #000000;background-color: black;background-image: url("21.jpeg");}


#scroll {
    position:fixed;
    right:10px;
    bottom:10px;
    cursor:pointer;
    width:50px;
    height:50px;
    background-color:red;
    text-indent:-9999px;
    display:none;
    -webkit-border-radius:60px;
    -moz-border-radius:60px;
    border-radius:60px
}
#scroll span {
    position:absolute;
    top:50%;
    left:50%;
    margin-left:-8px;
    margin-top:-12px;
    height:0;
    width:0;
    border:8px solid transparent;
    border-bottom-color:#ffffff;
}
#scroll:hover {
    background-color:green;
    opacity:1;filter:"alpha(opacity=100)";
    -ms-filter:"alpha(opacity=100)";
}


.btn {
  background-color: black;
  border: none;
  color: white;
  padding: 16px 100px;
  text-align: center;
  font-size: 16px;
  margin: 50px 100px;
  transition: 0.3s;
}

.btn:hover {
  background-color: green;
  color: white;
}
h1 {
  color: white;
  text-shadow: 2px 2px 4px #000000;
}

p
{
font-size:18px;
 font-weight: 590;
}
.typewriter p {
  font-family: serif; /* Web-safe typewriter-like font */
  overflow: hidden; /* Ensures the content is not revealed until the animation */
  border-right: .15em solid orange; /* The typwriter cursor */
  white-space: normal; /* Keeps the content on a single line */
  margin: 0 auto; /* Gives that scrolling effect as the typing happens */
  letter-spacing: .01em; /* Adjust as needed */
  animation: 
    typing 4.5s steps(30, end),
    blinking-cursor 1s step-end infinite;
}

/* The typing effect */
@keyframes typing {
  from { width: 0 }
  to { width: 100% }
}

/* The typewriter cursor effect */
@keyframes blinking-cursor {
  from, to { border-color: transparent }
  50% { border-color: white; }
}
h2
{
    font-size:30px;
    font-weight:600;
    color: gold;
}
.clip {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}

.svg--source {
  display: none;
}

.svg--icon {
  width: 100%;
  max-width: 5rem;
  height: 100%;
  max-height: 5rem;
  display: block;
  margin: 0 auto;
  fill: currentColor;
}

.wrapper {
  width: 100%;
  height: 100vh;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
  padding: 1rem;
}

.share {
  width: 5rem;
  height: 5rem;
  float: left;
  margin: .5rem 1rem .5rem 0;
  color: #353c4a;
  border: .125rem solid #f3f3f3;
  box-shadow: 0 0 8px 0 rgba(50, 50, 50, 0.15);
  border-radius: 50%;
  transition: 250ms;
}
.share:last-child {
  margin-right: 0;
}
.share:focus {
  outline-color: inherit;
}

.twitter:hover, .twitter:focus {
  color: #00ACED;
  box-shadow: 0 0 24px 0 #00ACED;
}

.github:hover, .github:focus {
  color: green;
  box-shadow: 0 0 24px 0 green;
}

.pinterest:hover, .pinterest:focus {
  color: #bd081c;
  box-shadow: 0 0 24px 0 #bd081c;
}

.youtube:hover, .youtube:focus {
  color: #cd201f;
  box-shadow: 0 0 24px 0 #cd201f;
}

.facebook:hover, .facebook:focus {
  color: #3b5998;
  box-shadow: 0 0 24px 0 #3b5998;
}

.google:hover, .google:focus {
  color: #dd4b39;
  box-shadow: 0 0 24px 0 #dd4b39;
}
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color:black;">
<a href="#" id="scroll" style="display: none;"><span></span></a>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
 <a class="navbar-brand" href="#" title="Be_Safe & Help_all!!">&Delta;</a>

    </div>
   
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#section1">Home</a></li>
          <li><a href="#section2">About Us</a></li>
          <li><a href="#section3" title="Only for Users!!">Register/Login</a></li>
     	 <li><a href="#section4">Contact</a></li> 
         <li>|||||||</li>
         <li><a href="admin_log.jsp" title="Admin Login Only!!">Admin</a></li> 
         <li><a href="doctor_signup.jsp" title="Only for Doctors!!">Doctor</a></li>
         
          <li><a href="recep_log.jsp" title="Receptionist Login!!">Reception Desk</a></li>
         <li><a href="user_privacy.jsp">Privacy Policy</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>    

<div id="section1" class="container-fluid">
  <h1 style="text-align:center;">Hospital Management</h1>
</div>
<div id="section2" class="container-fluid">
  <h1 align="center"><u>About Us</u></h1>
  <div class="typewriter">
<p>Welcome to M.V.K Hospital, where we are committed to providing you and your family with personalized care without compromise. For more than 130 years, we have been caring for residents throughout the Greater Hyderabad area.Our patients are people first, we know them from school, church and the community. That is the benefit of care from our warm, inviting community hospital as opposed to a large, unfamiliar medical center.
<br><br>
Know that you are in good hands when you entrust your care to us.Our physicians, nurses and support staff are experts in their fields and passionate about caring for you.They will listen to you, take the time to get to know you, and understand your concerns. They will answer your questions and give you the information you need to make smart decisions about your care. Anchored by our core values of teamwork, compassion, excellence and integrity, our team utilizes their unparalleled knowledge and expertise to ensure that our patients receive the best-possible quality care.
<br><br>
As a member of the Western Connecticut Health Network, we are now in the fortunate position of being able to expand our services in ways that make it easier to provide high-quality care close to home. Our affiliation gives us strength and stability in a time of great change in healthcare.<br> Combining resources allows us to collectively invest in new facilities, advanced technology and superior talent. We share best practices among all three of our member hospitals, allowing each of us to expand our capabilities while improving quality, patient outcomes and operational performance.
<br><br>
At our Hospital, we take care to put the patient at the center. We take pride in keeping people well, as well as treating the sick. We are here when you need us, and working even harder to keep you healthy and at home doing the things you enjoy most. As we like to say, we know you well!
<br><br>
Be well & Help All,<br><br>

M.Vamshi Krishna<br>
President, M.V.K Hospitals</p>
</div>
</div>
<div id="section3" class="container-fluid">
<h1 style="text-align:center;">Feel Free to Connect !!</h1>

<form action="register.jsp">
<button class="btn" title="User Registration Only!!">Register</button>
</form><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b style="font-size:100%;">OR</b><br>
<form action="signup.jsp">
<button class="btn" title="User Login Only!!">&emsp;Login&emsp;</button>
</form><br>

</div>
<div id="section4" class="container-fluid">
<h1 style="text-align:left;"> CONTACT US:</h1><br><br>
<h2 align="center">Feel Free to Connect Give And Suggestions:<br><br><br><br><br><br><br><br><br>
    <u>Email_ID</u> : vamshi375@gmail.com<br><br>
    <u>Phone</u>: +91-9849682921
    </h2><br><br>
    <h2 align="center"><u>Toll-Free</u>:1800-108-108</h2><br><br>
<h2 align="center">Follow Us On:</h2>
<svg class="svg--source" width="0" height="0" aria-hidden="true">

  <symbol id="svg--twitter" viewbox="0 -7 15 30">
    <path d="M15.36 3.434c-0.542 0.241-1.124 0.402-1.735 0.476 0.624-0.374 1.103-0.966 1.328-1.67-0.583 0.346-1.23 0.598-1.917 0.733-0.551-0.587-1.336-0.954-2.205-0.954-1.668 0-3.020 1.352-3.020 3.019 0 0.237 0.026 0.467 0.078 0.688-2.51-0.126-4.735-1.328-6.224-3.155-0.261 0.446-0.41 0.965-0.41 1.518 0 1.048 0.534 1.972 1.344 2.514-0.495-0.016-0.961-0.151-1.368-0.378 0 0.013 0 0.025 0 0.038 0 1.463 1.042 2.683 2.422 2.962-0.253 0.069-0.52 0.106-0.796 0.106-0.194 0-0.383-0.018-0.568-0.054 0.384 1.2 1.5 2.073 2.821 2.097-1.034 0.81-2.335 1.293-3.75 1.293-0.244 0-0.484-0.014-0.72-0.042 1.336 0.857 2.923 1.357 4.63 1.357 5.554 0 8.592-4.602 8.592-8.593 0-0.13-0.002-0.261-0.009-0.39 0.59-0.426 1.102-0.958 1.507-1.563z"
    />
  </symbol>

  <symbol id="svg--google" viewbox="-13 -13 72 72">
    <path d="M48,22h-5v-5h-4v5h-5v4h5v5h4v-5h5 M16,21v6.24h8.72c-0.67,3.76-3.93,6.5-8.72,6.5c-5.28,0-9.57-4.47-9.57-9.75
s4.29-9.74,9.57-9.74c2.38,0,4.51,0.82,6.19,2.42v0.01l4.51-4.51C23.93,9.59,20.32,8,16,8C7.16,8,0,15.16,0,24s7.16,16,16,16
c9.24,0,15.36-6.5,15.36-15.64c0-1.17-0.11-2.29-0.31-3.36C31.05,21,16,21,16,21z" />
  </symbol>

  <symbol id="svg--facebook" viewbox="0 -7 16 30">
    <path d="M12 3.303h-2.285c-0.27 0-0.572 0.355-0.572 0.831v1.65h2.857v2.352h-2.857v7.064h-2.698v-7.063h-2.446v-2.353h2.446v-1.384c0-1.985 1.378-3.6 3.269-3.6h2.286v2.503z" />
  </symbol>

  <symbol id="svg--github" viewbox="-30 -30 150 150">
    <path d="M61.896,52.548c-3.59,0-6.502,4.026-6.502,8.996c0,4.971,2.912,8.999,6.502,8.999
        c3.588,0,6.498-4.028,6.498-8.999C68.395,56.574,65.484,52.548,61.896,52.548z M84.527,29.132c0.74-1.826,0.777-12.201-3.17-22.132
        c0,0-9.057,0.993-22.76,10.396c-2.872-0.793-7.736-1.19-12.597-1.19s-9.723,0.396-12.598,1.189C19.699,7.993,10.645,7,10.645,7
        c-3.948,9.931-3.913,20.306-3.172,22.132C2.834,34.169,0,40.218,0,48.483c0,35.932,29.809,36.508,37.334,36.508
        c1.703,0,5.088,0.004,8.666,0.009c3.578-0.005,6.965-0.009,8.666-0.009C62.191,84.991,92,84.415,92,48.483
        C92,40.218,89.166,34.169,84.527,29.132z M46.141,80.574H45.86c-18.859,0-33.545-2.252-33.545-20.58
        c0-4.389,1.549-8.465,5.229-11.847c6.141-5.636,16.527-2.651,28.316-2.651c0.045,0,0.093-0.001,0.141-0.003
        c0.049,0.002,0.096,0.003,0.141,0.003c11.789,0,22.178-2.984,28.316,2.651c3.68,3.382,5.229,7.458,5.229,11.847
        C79.686,78.322,65,80.574,46.141,80.574z M30.104,52.548c-3.588,0-6.498,4.026-6.498,8.996c0,4.971,2.91,8.999,6.498,8.999
        c3.592,0,6.502-4.028,6.502-8.999C36.605,56.574,33.695,52.548,30.104,52.548z" />
  </symbol>

  <symbol id="svg--pinterest" viewbox="-180 -180 850 850">
    <path d="M430.149,135.248C416.865,39.125,321.076-9.818,218.873,1.642
                C138.071,10.701,57.512,76.03,54.168,169.447c-2.037,57.029,14.136,99.801,68.399,111.84
                c23.499-41.586-7.569-50.676-12.433-80.802C90.222,77.367,252.16-6.718,336.975,79.313c58.732,59.583,20.033,242.77-74.57,223.71
                c-90.621-18.179,44.383-164.005-27.937-192.611c-58.793-23.286-90.013,71.135-62.137,118.072
                c-16.355,80.711-51.557,156.709-37.3,257.909c46.207-33.561,61.802-97.734,74.57-164.704
                c23.225,14.136,35.659,28.758,65.268,31.038C384.064,361.207,445.136,243.713,430.149,135.248z" />
  </symbol>

  <symbol id="svg--youtube" viewbox="-150 -150 800 800">
    <path d="M459,61.2C443.7,56.1,349.35,51,255,51c-94.35,0-188.7,5.1-204,10.2C10.2,73.95,0,163.2,0,255s10.2,181.05,51,193.8
            C66.3,453.9,160.65,459,255,459c94.35,0,188.7-5.1,204-10.2c40.8-12.75,51-102,51-193.8S499.8,73.95,459,61.2z M204,369.75v-229.5
            L357,255L204,369.75z" />
  </symbol>

</svg>

<div class="wrapper">
<div class="connect">

  <a href="" class="share twitter">
    <svg role="presentation" class="svg--icon">
      <use xlink:href="#svg--twitter" />
    </svg>
    <span class="clip">TWITTER</span>
  </a>

  <a href="" rel="author" class="share google">
    <svg role="presentation" class="svg--icon">
      <use xlink:href="#svg--google" />
      <span class="clip">GOOGLE +</span>
    </svg>
  </a>

  <a href="" rel="author" class="share facebook">
    <svg role="presentation" class="svg--icon">
      <use xlink:href="#svg--facebook" />
      <span class="clip">FACEBOOK</span>
    </svg>
  </a>

  <a href="" class="share github">
    <svg role="presentation" class="svg--icon">
      <use xlink:href="#svg--github" />
      <span class="clip">GITHUB</span>
    </svg>
  </a>

  <a href="" class="share  pinterest">
    <svg role="presentation" class="svg--icon">
      <use xlink:href="#svg--pinterest" />
      <span class="clip">PINTEREST</span>
    </svg>
  </a>

</div>
</style>
</body>

</html>
<script>

$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    }); 
});
</script>

