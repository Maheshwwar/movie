<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%@ include file="connect.jsp" %>
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
<style type="text/css">
<!--
.style1 {font-size: 22px}
.style2 {font-size: 18px}
.style4 {	font-size: 18px;
	color: #FF0000;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style6 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1"><span class="style4">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</span><br />
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
          <h2>Search Details  </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%
	
      	
	

      	try 
	{
      		
		
		
%>




<br>
<br>








<%
	String ustatus=null;
	String one= request.getParameter("keyword");	
		//String two= request.getParameter("t2");	

		String uname=(String)application.getAttribute("uname");

		SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		 String query5="select * from user where username='"+uname+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query5);
					   		while ( rs1.next() )
					   		{
								
								ustatus=rs1.getString(11);
								
								}
			 if(ustatus.equalsIgnoreCase("Authorized")){ 

		Statement st3 = connection.createStatement();
		   String query3 ="insert into search(username,keyword,dt) values('"+uname+"','"+one+"','"+dt+"')";
		   st3.executeUpdate (query3); 
		   }
      		
      
            // and city LIKE '%"+one+"%'
             
            	  String q2="select * from movie where itemdescription LIKE '%"+one+"%'  or itemtitle LIKE '%"+one+"%'"; 
                  Statement st8=connection.createStatement();
                  ResultSet rs8=st8.executeQuery(q2);
       	 while ( rs8.next() )
       	   {
       	
       		 int i=rs8.getInt(1);
       	String	s1=rs8.getString(2);
       	String	s2=rs8.getString(3);
    	String	s3=rs8.getString(5);
               
       	%>

       	
       	
       	<table width="400" border="0" align="center">
  <tr>
    <td bgcolor="#FF0000" >
      <div align="center" class="style2 style6">Movie Name</div>
    </div></td>
    <td align="center" bgcolor="#0000FF"><%=s1%></td>
  </tr>
  <tr>
    <td  ><div align="left" class="style5 style1 style2 style4">
      <div align="center" class="style2">View Details </div>    </td>
    <td align="center" ><a href="viewdetails.jsp?id=<%=i%>" > View Details</a></td>
  </tr>
</table>

<p align="center">
       
   	    <%
       	
       	out.println("----------------------------------------------------------------------------------------");
             }
       	  
             
         
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                
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
            <form method="get" id="search" action="#">
            </form>
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