
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {
	font-size: 18px;
	color: #FF0000;
}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style2">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</a></h1>
    </div>
    <div class="menu_nav">
      <ul>
        <li></li>
        <li class="active"><a href="#">Admin  </a></li>
        <li></li>
        <li></li>
        <li><a href="index.html">Logout </a></li>
      </ul>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
    <div class="hbg"><img src="images/header_images.jpg" width="653" height="271" alt="" />
      <div class="text">
        <p class="style2">Collaborative filtering, content-based filtering, </p>
        <p class="style2">recommendation system (RS), </p>
        <p class="style2">sentiment analysis, </p>
        <p class="style2">Twitter</p>
        <h3>&nbsp;</h3>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_bg">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3">View All Movie  Details !!! </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%

int one= Integer.parseInt(request.getParameter("id"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		
      		
        
           String query="select * from movie where id ="+one+" "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
		
		
	
		   %>

<table width="669" border="0" align="center" bordercolor="#0099CC">
  <tr>
    <td width="179" bgcolor="#FF0000"><div align="left" class="style4"><strong>Movie Title  </strong></div></td>
    <td width="480" bordercolor="#006699"><%=s2%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Runtime </strong></div></td>
    <td bordercolor="#006699"><%=s3%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Genre,Director,Writer,Actors </strong></div></td>
    <td bordercolor="#006699"><%=s4%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Uses</strong></div></td>
    <td bordercolor="#006699"><%=s5%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Language</strong></div></td>
    <td bordercolor="#006699"><%=s6%></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Movie  Images </strong></div></td>
    <td bordercolor="#006699">
      <div align="left">
        <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
        </div></td></tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style4"><strong>Ratings</strong></div></td>
    <td bordercolor="#006699"><% 
    if(j==3)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/1.png" width="30" height="30" >
    	<%
    }
    if(j>3 && j<=6)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
    	<%
    }
    if(j>6 && j<=9)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
    	<%
    }
    if(j>9 && j<=12)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
    	<%
    }
    if(j>12 && j<=15)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
    	<%
    }
    if(j>15)
    {
    	%>
    	<input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
    	<%
    }
    %></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">

  <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%></p>
          <ul class="sb_menu">
            <li></li>
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
          <h2>&nbsp;</h2>
          <div class="clr"></div>
            <ul class="sb_menu">
            <li ><a href="adminmain.jsp">Admin Main</a></li>
            <li><a href="index.html">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2>&nbsp;</h2>
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
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>