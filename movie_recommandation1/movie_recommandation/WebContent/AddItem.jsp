

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Item</title>
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

var na3=document.s.tag.value;
if(na3=="")

{
alert("Please Enter Item Name");
document.s.tag.focus();
return false;
}


var na3=document.s.color.value;
if(na3=="")

{
alert("Please Enter Item Color");
document.s.color.focus();
return false;
}



var na4=document.s.desc.value;
if(na4=="")

{
alert("Please Enter Item Description");
document.s.desc.focus();
return false;
}

var na5=document.s.uses.value;
if(na5=="")

{
alert("Please Enter Item Uses");
document.s.uses.focus();
return false;
}


var price=document.s.location.value;
if(price=="")

{
alert("Please Enter Item Price");
document.s.location.focus();
return false;
}


var na6=document.s.pic.value;
if(na6=="")

{
alert("please choose image");
document.s.pic.focus();
return false;
}

}

</script>



<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #FF0000;
}
textarea{

resize:none;
}
.style2 {
	font-weight: bold;
	color: #FF0000;
}
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
    <div class="hbg">
      <img src="images/header_images.jpg" width="653" height="271" alt="" />
      <div class="text">
        <p class="style1">Collaborative filtering, content-based filtering,<br />
        recommendation system (RS), sentiment analysis, Twitter.</p>
        <h3>&nbsp;</h3>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_bg">
      <div class="mainbar">
        <div class="article">
          <h2><span>Add Movie Tweet Details !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p><form action="insertItem.jsp" name="s" method="post" enctype="multipart/form-data"  onSubmit="return valid()">
                <table width="600" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b >Movie Title </b></div></td>
						<td  width="300" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="mtitle"></div></td>
					</tr>
					<tr>
 						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><b>Runtime </b></div></td>
						<td  width="300" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="runtime"></div></td>
					</tr>
					<tr>
  						<td  width="150" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>Genre,<br />
  						    Director,<br />
  						    Writer,<br />
  						  Actors,</strong></div></td>
						<td  width="300" valign="middle" height="45"><div align="left" style="margin-left:20px;">
						  <textarea name="desc" cols="20" rows="10"></textarea>
						</div></td>
					</tr>
					<tr>
  						<td  width="150" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong>production_company</strong></div></td>
						<td  width="300" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="pcom"></div></td>
					</tr>
					<tr>
                      <td align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Language</strong></div></td>
					  <td align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;">
					    <input type="text" name="language" />
					    </div></td>
				  </tr>
					<tr>
                      <td align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left " style="margin-left:20px;"><strong>Budget</strong></div></td>
					  <td align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;">
					    <input type="text" name="budget" />
					    </div></td>
				  </tr>
					
					</tr>
					<tr>
 						<td   width="150" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><strong >Select Image </strong></div></td>
						<td  width="300" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><input type="file" name="pic"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#999999; color:#003399;"/><input type="reset" name="Reset" style="width:100px; height:35px; background-color:#999999; color:#003399;"/></td></tr></div>
			</table>
				</form></p>
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
		 <h2>Welcome to<span style="color:#0066CC"> Admin</span></h2>
          <h2><span>Admin</span> Menu</h2>
          <div class="clr"></div>
           <ul class="sb_menu style2">
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