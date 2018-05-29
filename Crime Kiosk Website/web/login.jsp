<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script language="javascript">
function doSubmit()
{
 var a=document.getElementById("username");
 var p=document.getElementById("password");
	 if(a.value == "")
 	{
 		alert("enter the username");
  		 a.focus();
		   return false;
	   }
	   
	 if(p.value == "")
 	{
 		alert("enter the password");
  		 p.focus();
		   return false;
	   }
	   
	else if((p.value.length)<6 )   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
		
		   
   }
</script>
<style type="text/css">
<!--
.style2 {color: #D6A55C}
-->
</style>
</head>
	<title>Crimefile Management</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
	
    <style type="text/css">
<!--
.style1 {
	color: #F67637;
	font-family: "Monotype Corsiva";
	font-size: 34px;
}
-->
    </style>
</head>

<body>

<div id="wrapper">
	<div id="body">
		<div id="head"></div>
		<div id="topnav">
			<a href="contactus.jsp">Contact Us</a> | <a href="http://www.google.com">Google</a>		</div>
		<h1><img src="images/logo.jpg" width="401" height="271" alt="Logo" /></h1>
		<div id="nav"><a href="index.html"><img src="images/m1.gif" width="101" height="65" alt="M1" /></a>
		<a href="map.html"><img src="images/m2.gif" width="97" height="65" alt="M2" /></a>
			<a href="FAQ.html"><img src="images/m3.gif" width="97" height="65" alt="M3" /></a>
			<a href="searchhot.jsp"><img src="images/m4.gif" width="97" height="65" alt="M4" /></a>
			<a href="aboutus .html"><img src="images/m5.gif" width="94" height="65" alt="M5" /></a>		</div>
		<div id="left-box">
			<div class="inner">
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="271" height="132">
                  <param name="movie" value="images/home_flash.swf" />
                  <param name="quality" value="high" />
                  <embed src="images/home_flash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="271" height="132"></embed>
			  </object>
				<h2>&nbsp;</h2>
				<p class="date"><a href="login.jsp"></a></p>
				<br /><br />
				<p>Not a registered member???<br />  <a href="newregister.jsp">SignUp Here</a>.</p>
		  </div>
		</div>
		<div id="content">
			<div id="content-bot">
				<div class="inner">
					<form name="form1" method="get" action="loginaction.jsp" >
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <table width="317" border="0">
  <tr>
    <th width="137" height="34" scope="col"><div align="center">Username:</div></th>
    <th width="164" scope="col"><div align="left">
     
        <input type="text" name="username" id="username" />
      
      </div></th>
  </tr>
  <tr>
    <th height="34" scope="row"><div align="center">Password:</div></th>
    <td>
      <input name="password" type="password" id="password" />
    
    </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input type="Submit" name="Submit" value="Login" onclick="return doSubmit()"  /></td>
  </tr>
</table>
</form>
					<p class="date">&nbsp;</p>
			  </div>
			</div>
		</div>
		<div id="tray">
			<div class="redbox first">
		    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="217" height="279">
              <param name="movie" value="images/mw.swf" />
              <param name="quality" value="high" />
              <embed src="images/mw.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="217" height="279"></embed>
            </object>
		  </div>
		  <div class="redbox">
				<h2 align="center" class="style1">Hot Reports </h2>
				<div>
				 <div> <span class="style13">
			     <marquee behavior="scroll" direction="up" scrolldelay="0.08">
			     <span class="style2">			     Six criminal drug addictes were found on Wednesday from a house near Capro building in US. Two of them were evacuated to a hospital		         </span>
			     </marquee>
				 </span>  				</div> 
			    </div>
				<br />
			  <a href="http://www.freewebsitetemplates.com"></a>			</div>
			<div class="redbox last">
			  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="217" height="279">
                  <param name="movie" value="images/missing.swf" />
                  <param name="quality" value="high" />
                  <embed src="images/missing.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="217" height="279"></embed>
			  </object>
		  </div>
			<div class="clear"></div>
			<div class="divider"></div>
		</div>
		<div id="footer">
			Copyright @ 2018, <a href="http://www.crimefilemanagement.com">www.cfm.com</a>, All rights Reserved.
		</div>
	</div>
</div>
</body>
</html>

