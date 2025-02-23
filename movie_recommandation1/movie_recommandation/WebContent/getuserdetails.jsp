
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Get User Details</title>
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
.style3 {color: #FFFF00}
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
          <h2><span>User Details  </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><table width="600" border="1"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					
					<%
						int uid= Integer.parseInt(request.getParameter("id"));	
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where id='"+uid+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(7);
								s5=rs.getString(6);
								s6=rs.getString(11);
								//s7=rs.getString(9);
								//s8=rs.getString(8);
								if(s6.equals("waiting") && !uname.equals("admin")){
							
								//out.println("Unauthorized User");
								String keyWord = "5765586965748666502846";

									keyWord = keyWord.substring(0, 16);
									byte[] keyValue = keyWord.getBytes();
									Key key = new SecretKeySpec(keyValue, "AES");
									Cipher c2 = Cipher.getInstance("AES");
									c2.init(Cipher.ENCRYPT_MODE, key);
									String ec = new String(Base64.encode(keyWord.getBytes()));
									
									s1 = new String(Base64.encode(s1.getBytes()));
									s2 = new String(Base64.encode(s2.getBytes()));
									s3 = new String(Base64.encode(s3.getBytes()));
									s4 = new String(Base64.encode(s4.getBytes()));
									s5 = new String(Base64.encode(s5.getBytes()));
									
								
							}
								
								
								
								
					%><tr><td rowspan="8" >
						<div style="margin:10px 13px 10px 13px;" >
                		<a class="#" id="img1" href="#" >
							<input  name="image" type="image" src="profilepic_image1.jsp?id=<%=i%>" style="width:200px; height:230px;"  />
				   		</a>                	</div>
					</td>
					<tr/>
					<tr>
 						<td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Username</b></div></td>
					  <td  width="300" height="40" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="left" class="style3" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>E-Mail</b></div></td>
					  <td  width="72" height="40" valign="middle" bgcolor="#FF0000" style="color:#000000;"><div align="left" class="style3" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Mobile</strong></div></td>
					  <td  width="82" height="40" valign="middle" bgcolor="#FF0000"><div align="left" class="style3" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FF0000"><div align="left" class="style3" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Address</strong></div></td>
					  <td  width="82" height="40" align="left" valign="middle" bgcolor="#FF0000"><div align="left" class="style3" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Status</strong></div></td>
						<td  width="100" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left">
					  <div align="left" class="style3" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
				
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
				</table>
          </p>
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
		 <h2>Welcome to<span style="color:#0066CC"> Admin</span></h2>
          <h2>&nbsp;</h2>
          <div class="clr"></div>
           <ul class="sb_menu">
            <li ><a href="adminmain.jsp">Admin Main </a></li>
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