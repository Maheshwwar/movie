
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommend Item</title>
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

var detail=document.form1.t4.value;
if(detail=="")

{
alert("Please Enter Recommendation Details");
document.form1.t4.focus();
return false;
}

}

</script>



<style type="text/css">
<!--
.style1 {font-size: 22px}
textarea{

resize:none;
}
.style3 {	font-size: 18px;
	color: #FF0000;
}
.style4 {color: #FF0000}
.style8 {font-size: 16px}
.style9 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="logo">
      <h1><a href="#" class="style1"><span class="style3">Movie Recommendation System Using Sentiment Analysis From Micro blogging Data</span><br />
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
        <p class="style3">Collaborative filtering, content-based filtering, </p>
        <p class="style3">recommendation system (RS), </p>
        <p class="style3">sentiment analysis, </p>
        <p class="style3">Twitter</p>
        <h3>&nbsp;</h3>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_bg">
      <div class="mainbar">
        <div class="article">
          <h2>Recommend to All Users Of Your Location</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><%

int one= Integer.parseInt(request.getParameter("id"));	  	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
	String uname=(String)application.getAttribute("uname");
	String ulocation=(String)application.getAttribute("ulocation");

      	try 
		

	{
	
	
      		//ArrayList a1=new ArrayList();
      		
     		 
            
            //String query1="select location FROM user order by username asc"; 
            //Statement st1=connection.createStatement();
            //ResultSet rs1=st1.executeQuery(query1);
           
 	  // while ( rs1.next() )
 	  // {
 			//a1.add(rs1.getString("uname"));
 		
 	   //}
      		
        
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
<form action="recommend1.jsp" method="post" name="form1" onSubmit="return valid()">
  <div align="center" class="style1">  
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="465" border="0">
      <tr>
        <td width="245"><span class="style4 style8"><strong>Movie ID </strong></span></td>
        <td width="210"><label>
          <input type="text" name="t1" value="<%=i%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style4 style8"><strong>Movie Name </strong></span></td>
        <td><label>
          <input type="text" name="t2" value="<%=s2%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style4 style8"><strong>Recommend To All Users Of This Location</strong></span></td>
        <td><label>
           <input type="text" name="t3" value="<%=ulocation%>" readonly>
        </label></td>
      </tr>
      <tr>
        <td><span class="style4 style8"><strong>Enter Recommended Details</strong></span></td>
        <td><textarea name="t4" onClick="return changecolor();" style="size:none"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><label>
          <input type="submit" name="Submit" value="Recommend">
        </label></td>
      </tr>
    </table>
    <p>&nbsp;    </p>
  </div>
</form>

 <%

	 
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