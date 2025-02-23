
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Items With Ranks</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {
	font-size: 18px;
	color: #FF0000;
}
.style5 {
	color: #0066CC;
	font-size: 16px;
	font-weight: bold;
}
.style6 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style7 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
.style8 {font-weight: bold}
.style9 {color: #FF0000; font-weight: bold; font-style: italic; font-family: Georgia, "Times New Roman", Times, serif; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style3">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</a></h1>
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
          <h2 align="center" class="style9">View All Movie Tweet With Popularity And Ratings </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table border="0" width="600" style="margin-left:2px; margin-right:2px;"> 
				<%
					try{      
						String s1=null,s2=null,s3=null,s4=null;
						String imguser="Admin";
						Statement stmt=connection.createStatement();
						String strQuery = "select * from movie order by count DESC";
						ResultSet rs = stmt.executeQuery(strQuery);
						//int row=0;
						while(rs.next()){
						//row++;
						int i=rs.getInt(1);
						s1=rs.getString(2);
						s2=rs.getString(3);
						s3=rs.getString(4);
						s4=rs.getString(5);
						String location = rs.getString(6);
						int rank = rs.getInt(8);
						
						//imguser=rs.getString(11);
						
				%>
				<tr>
				<td>
					<div class="gallery_box" >
               		  <a class="lightbox" id="img1" href="#" title="">
							<input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:270px; height:120px;" class="image_wrapper"  />
			   		  </a>
						<p>
							<%
							if(rank>0 && rank<= 3){%>
								<span class="style5">Popularity</span>:[<%= rank%>]&nbsp;<span class="style5">Rating</span> :<img src="Gallery/1.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>3 && rank<= 6){%>
							<span class="style5">Popularity</span>:[<%= rank%>]&nbsp;<span class="style5">Rating</span> :<img src="Gallery/2.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>6 && rank<= 12){%>
							<span class="style5">Popularity</span>:[<%= rank%>]&nbsp;<span class="style5">Rating</span> :<img src="Gallery/3.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>12 && rank<= 24){%>
							<span class="style5">Popularity</span>:[<%= rank%>]&nbsp;<span class="style5">Rating</span> :<img src="Gallery/4.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>24){%>
							<span class="style5">Popularity</span>:[<%= rank %>]&nbsp;<span class="style5">Rating</span> :<img src="Gallery/5.png" style="width:120px; height:20px;" />
						
							<%
							}
							%>
						</p>
						<p>&nbsp;<span class="style5">Movie Added By</span>  :<span style="color:#006633;" class="style5"><%=imguser%></span></p>
						
                		<!--<p><b><span class="orange"> ,</span><span class="green"> ,</span></b>  </p>-->
                </div>
				</td>
				
				<td  width="600">
           		  <p style="font-family:'Times New Roman', Times, serif;" class="style5"><span style="color:#FF0000"> Movie Name :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;" class="style5"><span style="color:#FF0000">Language:</span><%=location%></p>
						<p style="font-family:'Times New Roman', Times, serif;" class="style5"> <span style="color:#FF0000">Genre,Director,Writer,Actors: </span><%=s3%> </p>
						<p style="font-family:'Times New Roman', Times, serif; font-size:15px;"></td>
				</tr>
				
               	<%
							
						
    				}
    				rs.close();
    				connection.close();
 					stmt.close();
  					}catch(Exception e)
					{
						e.getMessage();
					}
					%>
					
							
			
			
       
	  </table></p>
          <ul class="sb_menu">
            <li></li>
            <li></li>
           <li><a href="adminmain.jsp">Back</a></li>
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
		 <h2 class="style7">Welcome to Admin</h2>
          <h2 class="style7">Admin Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style8">
            <li ><a href="ViewAllUsers.jsp">View All Users </a></li>
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