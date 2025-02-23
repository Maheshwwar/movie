<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Item</title>
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
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter some Keyword to search");
document.s.keyword.focus();
return false;
}

}
</script>

<style type="text/css">
<!--
.style1 {font-size: 22px}
.style2 {
	font-size: 18px;
	color: #FF0000;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style3 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style7 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1"><span class="style2">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</span><br />
      </a></h1>
    </div>
    <div class="menu_nav">
      <ul>
        <li></li>
        <li ></li>
        <li class="active"><a href="#">User </a></li>
        <li></li>
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
          <h2 class="style3">Search Item  </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><form action="search1.jsp" method="get" name="s" onSubmit="return valid()"><b style="float:left"><p>&nbsp;</p>
               	<div style="width:600px;">
						<table style="margin:0 0 0 30px;">
							<tr>
								<td><p><strong><span class="style7">ENTER KEYWORD&nbsp;&nbsp;AS MOVIE NAME </span></strong></p></td>
                	    		<td><input type="text" name="keyword" /></td>
               	      			<td><input type="submit" value="GO" style="width:50px; height:25px;"/></td>
							</tr>
							<tr>
								<td colspan="3"><p>[ <span class="style3">Searching content Based on Movie Description</span> ] </p></td>
							</tr>
						</table>       
               	</div>
                </b>
				<p><b style="float:left">
			    </p>
			    </b></p>
				<p>&nbsp;
		        </p>
				</form> 
          </p>
          <ul class="sb_menu"><li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
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
		 <h2>Welcome to<span style="color:#0066CC"> <%= application.getAttribute("uname")%></span></h2>
          <h2>User Menu</h2>
          <div class="clr"></div>
           <ul class="sb_menu">
            <li ><a href="ViewYourProfile.jsp">View Your Profile </a></li>
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
    <div class="footer_resize">
      <p class="lf">.</p>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>