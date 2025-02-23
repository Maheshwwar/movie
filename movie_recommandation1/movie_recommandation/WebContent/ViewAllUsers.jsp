<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Users</title>
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
.style6 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style7 {color: #FFFF00}
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
          <h2><span>View All Users  </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> <table width="650" border="1"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 0px 0px 0px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
                        
                        <td  width="150" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><strong>Mobile</strong></div></td>
                        <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Address</b></div></td>
                        <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Gender</b></div></td>
                        <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>Status</b></div></td>
						 <td  width="100" valign="baseline" height="0" style="color: #2c83b0;"><div align="center"><b>View Details</b></div></td>
                      </tr>
                      <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								//s7=rs.getString(9);
								s8=rs.getString(11);
								
								String status="";
								
						
					%>
                      <tr>
                        <td  width="72" height="0" valign="baseline" bgcolor="#FF0000" style="color:#000000;"><span class="style7">&nbsp;&nbsp;
                        <%out.println(s1);%>
                        </span></td>
                        
                        <td  width="82" height="0" valign="baseline" bgcolor="#FF0000"><span class="style7">&nbsp;&nbsp;
                        <%out.println(s3);%>
                        </span></td>
                        <td height="0"  valign="baseline" bgcolor="#FF0000"><span class="style7">&nbsp;&nbsp;
                        <%out.println(s4);%>
                        </span></td>
                       
                        <td height="0"  valign="baseline" bgcolor="#FF0000"><span class="style7">&nbsp;&nbsp;
                        <%out.println(s6);%>
                        </span></td>
							
                        <%
						if(s8.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="100" height="0"align="center" valign="baseline" bgcolor="#FF0000" style="color:#000000;"><a href="generatekeyconfirm.jsp?uid=<%=i%>"  title="Click here to make user Authorized" class="style7">waiting&nbsp;</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="10" height="0"align="center" valign="baseline" bgcolor="#FF0000" style="color:#000000;"><span class="style7">
                        <%out.println(s8);%>
                        &nbsp;</span></td>
                        <%
						}
						%>
						 <td  width="10" height="0"align="center" valign="baseline" bgcolor="#FF0000" style="color:#000000;"><span class="style7"><a href="getuserdetails.jsp?id=<%=i%>" title="Click here to see  <%out.println(s1);%>  details"> View Details</a>
                         &nbsp;</span></td>
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
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
                        <td  valign="baseline" height="0">&nbsp;</td>
						 <td  valign="baseline" height="0">&nbsp;</td>
                      </tr>
                    </table>
          </p>
          <ul class="sb_menu">
            <li></li>
            <li></li>
            <li></li>
            <li><a href="adminmain.jsp">Back</a></li>
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
            <li class="active"><a href="ViewAllUsers.jsp">View All Users </a></li>
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