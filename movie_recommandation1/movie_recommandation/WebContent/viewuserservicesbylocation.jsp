
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View User Services By Location</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {font-size: 14px}
.style1 {font-size: 22px}
.style5 {font-size: 16px; font-weight: bold; }
.style9 {font-size: 14px; font-weight: bold; }
.style10 {color: #0099CC; font-weight: bold; }
.style2 {font-size: 18px;
	color: #FF0000;
}
.style6 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style11 {color: #FF0000}
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
          <h2 class="style11">All User Services Ordered By Location </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%
					  List<String> list=new ArrayList<String>();
					  
						String location=null;
						
						try 
						{
						   	String query1="select distinct location from user order by location"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs1=st.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
							location=rs1.getString(1);

								
								list.add(location);
						
					%>
          
                      
             
                      <%
						}
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					
					<% 
					for(int z=0;z<list.size();z++){
					
					String loc=list.get(z);
					%>
	     <table border="1" width="600" style="margin-left:2px; margin-right:2px;"> 
				<%
					try{      
						String s1=null,s2=null,s3=null,s4=null;
						String imguser="Admin";
						Statement stmt=connection.createStatement();
						String strQuery = "select * from images order by count DESC";
						ResultSet rs = stmt.executeQuery(strQuery);
						//int row=0;
						while(rs.next()){
						//row++;
						int i=rs.getInt(1);
						s1=rs.getString(2);
						s2=rs.getString(3);
						s3=rs.getString(4);
						s4=rs.getString(5);
						String price = rs.getString(6);
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
								<span class="style9">Rank</span>:[<%= rank%>]&nbsp;<span class="style9">Rating</span> :<img src="Gallery/1.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>3 && rank<= 6){%>
								<span class="style9">Rank</span>:[<%= rank%>]&nbsp;<span class="style9">Rating</span> :<img src="Gallery/2.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>6 && rank<= 12){%>
								<span class="style9">Rank</span>:[<%= rank%>]&nbsp;<span class="style9">Rating</span> :<img src="Gallery/3.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>12 && rank<= 24){%>
								<span class="style9">Rank</span>:[<%= rank%>]&nbsp;<span class="style3">Rating</span> :<img src="Gallery/4.png" style="width:120px; height:20px;" />
							<%
							}
							else if(rank>24){%>
								<span class="style9">Rank</span>:[<%= rank %>]&nbsp;<span class="style9">Rating</span> :<img src="Gallery/5.png" style="width:120px; height:20px;" />
						
							<%
							}
							%>
						</p>
						<p><strong>&nbsp;<span class="style3">Post Added By</span></strong>  :<span style="color:#006633;"><%=imguser%></span></p>
						
                		<!--<p><b><span class="orange"> ,</span><span class="green"> ,</span></b>  </p>-->
                </div>				</td>
				
				<td  width="600">
           		  <p style="font-family:'Times New Roman', Times, serif;"  class="style5"><span style="color:#006666"> <span class="style5">Title</span> :</span><%=s1%></p>
						<p style="font-family:'Times New Roman', Times, serif;"  class="style5"><span style="color:#006666"> <span class="style5">Price</span> :</span><%=price%></p>
						<p style="font-family:'Times New Roman', Times, serif;"  class="style5"> <span style="color:#006666"><span class="style5">Description</span>: </span><%=s3%> </p>				</td>
				</tr>
				<tr><td colspan="2"><p><h4 class="style10">Comments</h4>
				</p>
				<span class="style9">
				<%
					Statement stmt2=connection.createStatement();
						String strQuery2 = "select * from review where iid='"+i+"' and rlocation='"+loc+"' order by dt DESC";
						ResultSet rs2 = stmt2.executeQuery(strQuery2);
						//int row=0;
						while(rs2.next()){
							String usr = rs2.getString(4);
							String cmt = rs2.getString(5);
						
				%>
				</span>
				<p style="font-family:'Times New Roman', Times, serif; color:#3333CC;font-size: 14px;" class="style9"><span class="style9" style="color:#006666"> <%= usr%> : </span><span class="style9"><%=cmt%></span></p>
				<span class="style9">
				<%
				}
				
				%>
				</span></td>
				</tr>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<tr><td colspan="2"><p><h4 class="style10">Recommends</h4>
				</p>
				<%
		 // String ulocation=(String)application.getAttribute("ulocation");


	String iname="",rlocation="",ufrom="",detail="",rdate="";
	int m=0,n=0,rid=0;

   
      		
        
           String query="select * from recommend";// where rlocation='"+loc+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs11=st.executeQuery(query);
	while ( rs11.next() )
	   {
		rid=rs11.getInt(1);
		iname=rs11.getString(2);
		rlocation=rs11.getString(3);
		ufrom=rs11.getString(4);
		detail=rs11.getString(5);
		rdate=rs11.getString(6);
		
		
	
		   %>
				<p style="font-family:'Times New Roman', Times, serif; color:#3333CC;font-size: 14px;"><span style="color:#006666"><strong>From</strong>: <%= ufrom%> : </span><%=detail%></p>
				<%
				}
				
				%>
				
				</td>
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
	  </table><br><br><% 
					}
					
					connection.close();
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
            <form method="get" id="search" action="#">
            </form>
            <div class="clr"></div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="gadget">
		 <h2>Welcome to<span style="color:#0066CC"> Admin</span></h2>
          <h2><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li ><a href="ViewAllUsers.jsp">View All Users </a></li>
            <li><a href="AddItem.jsp">Add Item </a></li>
            <li><a href="ViewAllItems.jsp">View All Items </a></li>
            <li><a href="viewallitemswithranks.jsp">View All Items With Ranks </a></li>
            <li><a href="viewallreviewsadmin.jsp">List All Reviewed Items </a></li>
            <li><a href="viewallusersbylocation.jsp">View Similar User Location </a></li>
            <li class="active"><a href="viewuserservicesbylocation.jsp">View Similar User Services </a></li>
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