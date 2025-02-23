<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
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
.style1 {font-size: 22px}
.style6 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style2 {	font-size: 18px;
	color: #FF0000;
}
.style7 {color: #FFFF00}
.style8 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><span class="style2"><a href="#" class="style2">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</a><a href="#" class="style1"></a></span></h1>
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
        <p class="style6">Collaborative filtering, content-based filtering, </p>
        <p class="style6">recommendation system (RS), </p>
        <p class="style6">sentiment analysis, </p>
        <p class="style6">Twitter</p>
        <h3>&nbsp;</h3>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_bg">
      <div class="mainbar">
        <div class="article">
          <h2>Movie Details  </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%
		  String uname=(String )application.getAttribute("uname");

int one= Integer.parseInt(request.getParameter("id"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13,ustatus="";
	int i=0,j=0;

      	try 
		
		
	{
	
	 String query5="select * from user where username='"+uname+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query5);
					   		while ( rs1.next() )
					   		{
								
								ustatus=rs1.getString(11);
								
								}
	
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
		
		j=j+1;
		Statement st3 = connection.createStatement();
		   String query3 ="update movie set count="+j+" where id ="+one+"  ";
		   st3.executeUpdate (query3);  
		   
		  
								//s7=rs.getString(9);
								//s8=rs.getString(8);
								if(ustatus.equalsIgnoreCase("waiting")){
								//out.print(ustatus);
							
								//out.println("Unauthorized User");
								String keyWord = "5765586965748666502846";

									keyWord = keyWord.substring(0, 16);
									byte[] keyValue = keyWord.getBytes();
									Key key = new SecretKeySpec(keyValue, "AES");
									Cipher c2 = Cipher.getInstance("AES");
									c2.init(Cipher.ENCRYPT_MODE, key);
									String ec = new String(Base64.encode(keyWord.getBytes()));
									
									s6 = new String(Base64.encode(s6.getBytes()));
									s2 = new String(Base64.encode(s2.getBytes()));
									s3 = new String(Base64.encode(s3.getBytes()));
									s4 = new String(Base64.encode(s4.getBytes()));
									s5 = new String(Base64.encode(s5.getBytes()));			
								
							}  
							
							
							}
							  
           
          }catch(Exception e)
          {
            out.println(e.getMessage());
          }
           
		   %>

<table width="669" border="0" align="center">
  <tr>
    <td width="179" bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Movie Title </strong></div></td>
    <td width="480" bgcolor="#FFFFFF"><span class="style8"><%=s2%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Runtime</strong></div></td>
    <td bgcolor="#FFFFFF"><span class="style8"><%=s3%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Genre,Director,Writer,Actors</strong></div></td>
    <td bgcolor="#FFFFFF"><span class="style8"><%=s4%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Production Company</strong></div></td>
    <td bgcolor="#FFFFFF"><span class="style8"><%=s5%></span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Language</strong></div></td>
    <td bgcolor="#FFFFFF"><span class="style8"><%=s6%></span></td>
  </tr>
   <% if(ustatus.equalsIgnoreCase("Authorized")){ %>
  <tr>
  
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Movie  Image  </strong></div></td>
    <td bgcolor="#FFFFFF">
      <div align="left" class="style8">
        <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
        </div></td></tr>
		
		<tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Movie Popularity </strong></div></td>
    <td bgcolor="#FFFFFF"><span class="style8"><%=j%></span></td>
  </tr>
	
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Ratings</strong></div></td>
	
	
    <td bgcolor="#FFFFFF"><span class="style8">
      <% 
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
    %>
		<%
    if(ustatus.equalsIgnoreCase("waiting")){
	out.print("You are not authorized person to perform this operation");
	}
    %>	
		</span></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Recommend to Friends</strong></div></td>
    <td bgcolor="#FFFFFF"><div align="left" class="style8"><a href="recommend.jsp?id=<%=i%>"><strong>Recommend&nbsp;</strong></a></div></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style7 style5"><strong>Review  on Item</strong></div></td>
    <td bgcolor="#FFFFFF"><div align="left" class="style8"><a href="review.jsp?id=<%=i%>"><strong>Review</strong></a></div></td>
  </tr>
  <%
		   
    }    
		  
	
	 
%>
</table>



<p align="center">

  
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
          <h2>&nbsp;</h2>
          <div class="clr"></div>
           <ul class="sb_menu">
            <li ><a href="usermain.jsp">User Main </a></li>
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