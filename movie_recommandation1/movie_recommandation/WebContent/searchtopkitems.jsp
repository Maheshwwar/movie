<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Top N Items</title>
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

if(document.form1.t3.selectedIndex==0)
{
alert("Please Select number of top recommands");
return false;
}

}

</script>



<style type="text/css">
<!--
.style1 {font-size: 22px}
.style2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF0000;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style7 {font-size: 18px; color: #FF0000; }
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {color: #FF0000}
.style11 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1"><span class="style7">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</span><br />
      </a><a href="index.html"></a></h1>
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
          <h2 class="style11">Search Top N Recommendations Based On Location </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p>
		  <form action="searchtopkitems1.jsp" method="post" name="form1" class="style1" onSubmit="return valid()"><table width="500" border="0" align="left">
      <tr>
        <td width="272" class="style1">&nbsp;</td>
        <td width="171" class="style1"><div align="left"><span class="style10 style2">Select the Top 'N' Recommends </span></div></td>
        <td width="171" class="style1"><div align="left">
          <select name="t3">
            <option selected="selected" disabled="disabled" value="0">--Select--</option>
			 <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
			<option>7</option>
			<option>8</option>
		     <option>9</option>
			  <option>10</option>
          </select>
        </div></td>
        <td width="105" class="style1"><div align="center"><span class="style8">
        </span></div>          <span class="style8"><label>
        </label>
</span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right"><input type="submit" name="Submit" value="Search" /></td>
        <td><label></label></td>
        <td>&nbsp;</td>
      </tr>
    </table>
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
           <ul class="sb_menu style9">
            <li ><a href="ViewYourProfile.jsp">View Your Profile </a></li>
            <li><a href="searchitemnew.jsp">Search Items </a></li>
            <li><a href="viewsearchhistory.jsp">View My Search History </a></li>
            <li><a href="viewrecommends.jsp">View recommends</a></li>
            <li><a href="viewallreviews.jsp">View user interests on the Item. </a></li>
            <li class="active"><a href="searchtopkitems.jsp">View Top N Recommendation</a></li>
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