<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style6 {font-weight: bold}
.style7 {color: #FF0000}
.style8 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
-->
</style>
</head>
<body>
 <% 
	  String uname=(String)application.getAttribute("uname");
	  
	  %>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</a></h1>
    </div>
    <div class="menu_nav">
      <ul>
	   
        <li class="active"><a href="#">User </a></li>
        <li><a href="index.html">Logout</a></li>
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
        <div class="article">
          <h2 class="style8">Welcome to User Main </h2>
          <div class="clr"></div>
          <p><img src="images/User.gif" width="588" height="286" /></p>
          <p><span class="style7">Recommendation systems (RSs) have garnered immense interest for applications in e-commerce and digital media. Traditional approaches in RSs include such as collaborative filtering (CF) and content-based filtering (CBF) through these approaches that have certain limitations, such as the necessity of prior user history and habits for performing the task of recommendation. To minimize the effect of such limitation, this article proposes a hybrid RS for the movies that leverage the best of concepts used from CF and CBF along with sentiment analysis of tweets from microblogging sites. The purpose to use movie tweets is to understand the current trends, public sentiment, and user response of the movie. Experiments conducted on the public database have yielded promising results..</span></p>
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
          <h2 class="style7">Welcome to <%= application.getAttribute("uname")%></h2>
          <h2 class="style7">User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style6">
            <li ><a href="ViewYourProfile.jsp">View Your Profile </a></li>
            <li><a href="searchitemnew.jsp">Search Movie Tweet Details </a></li>
            <li><a href="viewsearchhistory.jsp">View My Search History </a></li>
            <li><a href="viewrecommends.jsp"> View All Movie Recommends.</a></li>
            <li><a href="viewallreviews.jsp">View User Movie Reviews </a></li>
            <li><a href="searchtopkitems.jsp">View Top k Services </a></li>
            <li><a href="index.html">Logout</a></li>
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
    <div class="footer_resize"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>