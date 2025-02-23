<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Recommends</title>
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
.style2 {	font-size: 18px;
	color: #FF0000;
}
.style6 {font-size: 18px; color: #FF0000; font-weight: bold; }
.style7 {
	color: #FF0000;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-style: italic;
}
.style8 {color: #FF0000}
.style10 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style7">View Your Recommends Based On Location </h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%
		  String ulocation=(String)application.getAttribute("ulocation");
		   String uname=(String)application.getAttribute("uname");
		

	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		String query1="select distinct iid from recommend where rlocation='"+ulocation+"' order by rcount desc"; 
			 Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(query1);
		   while(rs1.next()){
		   int itemid=rs1.getInt(1);
      		
        
           //String query="select distinct  from recommend where rlocation='"+ulocation+"'"; 
		   String query= "select distinct iid,iname,rlocation,ufrom from recommend where iid ='"+itemid+"' and rlocation='"+ulocation+"' and ufrom!='"+uname+"'";
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		//s5=rs.getString(5);
		//s6=rs.getString(5);
		
		
	
		   %>

<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5 style8"><em><strong>Topic ID</strong></em></div></td>
    <td width="480"><span class="style10"><%=i%></span></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8"><em><strong>Movie Name </strong></em></div></td>
    <td><span class="style10"><%=s2%></span></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8"><em><strong>Recommended To </strong></em></div></td>
    <td><span class="style10"><%=s3%> Users</span></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8"><em><strong>Recommend From</strong></em></div></td>
    <td><span class="style10"><%=s4%></span></td>
  </tr>
  <tr>
    <td><div align="left" class="style5 style8"><em><strong>View Movie</strong></em></div></td>
    <td><div align="left"><a href="viewdetails.jsp?id=<%=i%>"><strong>View&nbsp;</strong></a></div></td>
  </tr>
</table>



  <%
out.println("---------------------------------------------------------------------------------");
	 
	   }}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</strong></p>
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