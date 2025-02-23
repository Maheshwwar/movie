
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Update Item</title>
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
textarea{

resize:none;
}
.style5 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style6 {
	color: #FF0000;
	font-weight: bold;
}
.style7 {font-weight: bold}
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
          <h2 class="style6"> Update Item</h2>
          <div class="clr"></div>
          <p><%
int itemid= Integer.parseInt(request.getParameter("imgid"));
//out.print(itemid);
String s1,s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
               

		
		try
		{
		
		 String query="select * from images where id ='"+itemid+"'"; 
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
		
		//s7=rs.getInt(7);
		
	}	
		
		%>
		 <% 

	
	 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
	      <form action="updateitem1.jsp?imgid=<%=i%>" method="post">
                <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Item Title </b></div></td>
						<td  width="300" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="tag" value="<%out.println(s2);%>" ></div></td>
					</tr>
					<tr>
 						<td  width="120" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>Item Color </b></div></td>
						<td  width="72" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="color" value="<%out.println(s3);%>"></div></td>
					</tr>
					<tr>
  						<td  width="100" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Item<br />
					    Description </strong></div></td>
						<td  width="82" valign="middle" height="45"><div align="left" style="margin-left:20px;">
						  <textarea name="desc" value="<%out.println(s4);%>"><%out.println(s4);%></textarea>
						</div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Item <br />
					    Uses </strong></div></td>
						<td  width="82" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="uses" value="<%out.println(s5);%>"></div></td>
					</tr>
					<tr>
  						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Item Price </strong></div></td>
						<td  width="82" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="location" value="<%out.println(s6);%>"></div></td>
					</tr>
					</tr>
					<tr>
 						<td   width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Image </strong></div></td>
						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;">
						
						<input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:150px; height:60px;" class="image_wrapper"  />
						
						
						</div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Update" style="width:100px; height:35px; background-color:#999999; color:#003399;"/>
				<a href="ViewAllItems.jsp">	<input name="Button" type="button" style="width:100px; height:35px; background-color:#999999; color:#003399;" value="Cancel"/></a></td></tr></div>
				</table>
		  \
	      </form>
		   
		  
		   
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
		 <h2>Welcome to<span style="color:#0066CC">Admin</span></h2>
          <h2><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style7">
            <li ><a href="ViewAllUsers.jsp">View All Users </a></li>
            <li><a href="AddItem.jsp">Add Item </a></li>
            <li><a href="ViewAllItems.jsp">View All Items </a></li>
            <li><a href="viewallitemswithranks.jsp">View All Items With Ranks </a></li>
            <li><a href="viewallreviewsadmin.jsp">List All Reviewed Items </a></li>
            <li><a href="viewallusersbylocation.jsp">View Similar User Location </a></li>
            <li><a href="viewuserservicesbylocation.jsp">View Similar User Services </a></li>
            <li><a href="viewallusersearchhistory.jsp">View All Users Search History </a></li>
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