<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script language="javascript" type="text/javascript">

function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Name");
document.s.userid.focus();
return false;
}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}
}
</script>


<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style6 {color: #FF0000}
.style9 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</a></h1>
    </div>
    <div class="menu_nav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li ><a href="adminlogin.jsp">Admin Login </a></li>
        <li class="active"><a href="userlogin.jsp">User Login </a></li>
        <li><a href="register.jsp">Register</a></li>
        <li></li>
      </ul>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <div class="hbg"><img src="images/header_images.jpg" width="653" height="271" alt="" />
      <div class="text">
        <p class="style5">Collaborative filtering, content-based filtering, </p>
        <p class="style5">recommendation system (RS), </p>
        <p class="style5">sentiment analysis, </p>
        <p class="style5">Twitter</p>
        <h3>&nbsp;</h3>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_bg">
      <div class="mainbar">
        <div class="article style9">
          <h2 class="style6"><img src="images/Login1.png" width="212" height="127" /></h2>
          <h2 class="style6">User Login </h2>
          <div class="clr"></div>
          <form action="authentication.jsp" name="s" method="post" id="leavereply" onSubmit="return valid()">
            <ol>
              <li>
                <span class="style6">
                <label for="name">Name (required)</label>
                <label for="name"></label>
                </span>
                <label for="name"></label>
                <input id="name" name="userid" class="text" />
              </li>
              <li>
                <span class="style6">
                <label for="email">Password (required)</label>
                </span>
                <label for="email"></label>
                <input type="password" id="pass" name="pass" class="text" />
              </li>
              
              <li>
                <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" onclick="return valid()" />
                <div class="clr"></div>
              </li>
            </ol>
          </form></p>
          <ul class="sb_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <div class="search">
            <div class="clr"></div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="gadget">
          <h2><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li ><a href="index.html">Home</a></li>
            <li><a href="adminlogin.jsp">Admin Login </a></li>
            <li class="active"><a href="#">User Login </a></li>
            <li><a href="register.jsp">Register</a></li>
            <li><a href="aboutproject.jsp">About Project </a></li>
          </ul>
        </div>
        <div class="gadget">
           <h2>&nbsp;</h2>
        </div>
        <div class="gadget"><div class="testi"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="clr"></div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>