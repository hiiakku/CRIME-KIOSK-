
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@page import="java.io.*,java.sql.*;"  session="true"%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>Crimefile Management</title>
	<link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />
	<script language="javascript">
function doCheck()
{
  var u=document.getElementById("username");
  var p=document.getElementById("password");
  var c=document.getElementById("conpass");
  var n=document.getElementById("name");
  var a=document.getElementById("address");
  var pi=document.getElementById("pincode");
  var ph=document.getElementById("phoneno");
  var e=document.getElementById("email");
  var v=document.getElementById("village");
  var t=document.getElementById("taluk");
  var d=document.getElementById("district");
  var s=document.getElementById("state");
  
  if(u.value == "")
  {
    alert ("enter the username");
	u.focus();
	return false;
	}
  
    if(p.value == "")
  {
    alert ("enter the password");
	p.focus();
	return false;
	}
	
	else if((p.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
	
  if(c.value == "")
  {
    alert ("enter the confirm password");
	c.focus();
	return false;
	}
	
		   if((c.value)!=(p.value))
		   {
		   alert("Re-enter the password");
		   c.focus();
		   return false;
	}
		   
	
	
	
	
  if(n.value == "")
  {
    alert ("enter the name");
    n.focus();
	return false;
	}
	  if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}

  if(pi.value == "")
  {
    alert ("enter the pincode");
	pi.focus();
	return false;
	}
	
	 else if(!parseInt(pi.value))
		{    
                    alert("Enter Integer");
		    return false;	
		}
              else if(((pi.value.length)>6))
	        {
	               alert("Pin no: should contain 6 integers ");  	            
	               pi.focus();
	               return false;
                 }
	
  if(ph.value == "")
  {
    alert ("enter the phone number");
    
	ph.focus();
	return false;
	}
   else if(!parseInt(ph.value))
		{    
                    alert("Enter valid Phone number ");
		    return false;	
		}
            else if(((ph.value.length)<6) || ((ph.value.length)>11))
	                     {
	               alert("Phone no should contain atleast 6 integers ");  
	            
	               ph.focus();
                        return false;
	                  }                 
  
    if(e.value == "")
  {
    alert ("enter the email");
	e.focus();
	return false;
	}
	
	 else if(e.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       e.focus();
		       return false;
		      }
	
	  else if(e.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        e.focus();
		        return false;
		       }
	

    if(v.value == "")
  {
    alert ("enter the village");
	v.focus();
	return false;
	}
	  if(t.value == "")
  {
    alert ("enter the taluk");
	t.focus();
	return false;
	}
  if(d.value == "")
  {
    alert ("enter the district");
	d.focus();
	return false;
	}


    if(s.value == "")
  {
    alert ("enter the state");
	s.focus();
	return false;
	}

  }
  </script>
    <style type="text/css">
<!--
.style1 {
	color: #F67637;
	font-family: "Monotype Corsiva";
	font-size: 34px;
}
.style2 {color: #FF7F00}
.style4 {color: #D6A55C}
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
		<a href="http://www.freewebsitetemplates.com"><img src="images/m2.gif" width="97" height="65" alt="M2" /></a><a href="FAQ.html"><img src="images/m3.gif" width="97" height="65" alt="M3" /></a><a href="index.html"><img src="images/m4.gif" width="97" height="65" alt="M4" /></a><a href="aboutus .html"><img src="images/m5.gif" width="94" height="65" alt="M5" /></a></div>
		<div id="left-box">
			<div class="inner">
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="271" height="132">
                  <param name="movie" value="images/home_flash.swf" />
                  <param name="quality" value="high" />
                  <embed src="images/home_flash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="271" height="132"></embed>
			  </object>
				<p>&nbsp;</p>
			    <p>Already a registered member???</p>
			    <p><a href="login.jsp">Login Here </a></p>
			    <br /><br />
				<p>Not a registered member???<br />  <a href="newregister.jsp">SignUp Here</a>.</p>
			</div>
		</div>
	  <div id="content">
	    <div id="content-bot">
          <div class="inner">
            
            <div align="justify">
              <table width="400" height="200" border="0" align="center">
                <tr>
                  <td width="690"> <%
            try {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                String con = request.getParameter("conpass");
                String se = request.getParameter("secret");
                String an = request.getParameter("answer");
                String na = request.getParameter("name");
                String add = request.getParameter("address");
                String phone = request.getParameter("phoneno");
                String pin = request.getParameter("pincode");
                String email = request.getParameter("email");
                String vill = request.getParameter("village");
                String taluk = request.getParameter("taluk");
                String dis = request.getParameter("district");
                String state = request.getParameter("state");
                String stat = "u";
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st = con1.createStatement();
                Statement st1 = con1.createStatement();
                st.executeUpdate("insert into login values('" + user + "','" + pass + "','" + stat + "')");
                st1.executeUpdate("insert into registration values('" + na + "','" + user + "','" + se + "','" + an + "', '" + add + "'," + pin + "," + phone + ",'" + email + "','" + vill + "','" + taluk + "','" + dis + "','" + state + "')");
                out.println("Congrats!!Now you are a registered Member");

            } catch (Exception e) {
                out.println(e);
            }



    %>
     <br />
                      <br />
                      </p></td>
                </tr>
              </table>
            </div>
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
			     <span class="style4">			     Six criminal drug addictes were found on Wednesday from a house near Capro building in US. Two of them were evacuated to a hospital		         </span>
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
			Copyright @ 2009, <a href="http://www.crimefilemanagement.com">www.cfm.com</a>, All rights Reserved.
		</div>
	</div>
</div>
</body>
</html>











