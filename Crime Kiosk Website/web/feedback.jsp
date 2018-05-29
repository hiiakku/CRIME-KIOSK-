<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function doFeed()
{
 var a=document.getElementById("name1");
  var b=document.getElementById("email1");
  var c=document.getElementById("mess1");
   
if(a.value == "")
  {
    alert ("enter the name");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the email");
	b.focus();
	return false;
	}
	
	
	 else if(b.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       b.focus();
		       return false;
		      }
	
	  else if(b.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        b.focus();
		        return false;
		       }
	
	
	 if(c.value == "")
  {
    alert ("enter the message");
	c.focus();
	return false;
	}
  
 }
 
  </script>

<style type="text/css">
<!--
.style1 {
	color: #CC9999;
	font-weight: bold;
}
.style5 {color: #CC0033}
-->
</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1>CrimeStation</h1>
		<h2>within the hands of safe </h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="Userhomepage.html">Home </a></li>
			<li><a href="viewadminreply.jsp">Complaintstatus </a></li>
			<li><a href="compare.html">Crime Pattern </a></li>
			<li><a href="usercontact.jsp">Viewcontacts</a></li>
			<li><a href="feedback.jsp">Message</a></li>
		</ul>
  </div>
</div>
<div id="content">
  <div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>		      </div>
			  
					<div>
						<div align="center">
						  <a href="login.jsp"><input type="button" id="b1" name="b1" value="Logout" /></a>
					      </div>
					</div>
			  
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="complaint.jsp">Complaint</a></li>
					<li><a href="crimereport.jsp">Crime Report</a></li>
					<li><a href="usermissingperson.jsp">Missing Person </a></li>
					<li><a href="viewmissingperson.jsp">View Missing Person </a></li>
					<li><a href="viewmostwanted.jsp">View Mostwanted Person</a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="changepassword.jsp">Change Password</a></li>
				    <li><a href="editcomplaint.jsp">Edit Complaint</a></li>
			        <li><a href="editregister.jsp">Edit Account </a></li>
		        </ul>
			</li>
			
		</ul>
  </div>
  <div>

<form id="form1" name="form1" method="post" action="feedbackaction.jsp">
<table width="422" border="0">
  <tr>
    <td height="49" colspan="2"><div align="center"><strong>FEEDBACK  </strong></div></td>
  </tr>
  <tr>
    <td width="188" height="54"><div align="right">Name:</div></td>
    <td width="218">
      <label>
        <div align="justify">
          <input name="name1" type="text" id="name1" />
        </div>
      </label>
        <div align="justify"></div></td>
  </tr>
  <tr>
    <td height="52"><div align="right">E-mail:</div></td>
    <td>
      <label>
      <div align="justify">
        <input name="email1" type="text" id="email1" />
      </div>
      </label>
      <div align="justify"></div></td>
  </tr>
  <tr>
    <td height="57"><div align="right">Message:</div></td>
    <td><div align="justify">
      <textarea name="mess1" id="mess1"></textarea>
    </div></td>
  </tr>
  <tr>
    <td height="73" colspan="2">
      <label>
        <div align="center">
          <input type="submit" name="Submit" value="Submit" onclick="return doFeed()"/>
      
        <input type="reset" name="reset" value="Reset" />
      </div>
      </label>
     </td>
  </tr>
  <tr>
    <td height="65" colspan="2"><div align="center"><a href="compose.jsp">crimefilemanagement@gmail.com</a></div></td>
  </tr>
</table>
   </form>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm. </p>
</div>
</body>
</html>







