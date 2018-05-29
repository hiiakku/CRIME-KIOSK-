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
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chat.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>
  <div>

<form id="form1" name="form1" method="post" action="usermissingaction.jsp">
<table width="411" border="0" align="center">
  <tr>
    <td height="49" colspan="2"><div align="center" class="style11">MISSING PERSONS </div></td>
  </tr>
  <tr>
    <td width="191" height="52"><div align="right" class="style13">Sl No: </div></td>
    <td width="204">
      <label>
        <input name="fir" type="text" id="fir" />
        </label>    </td>
  </tr>
  <tr>
    <td height="53"><div align="right" class="style13">District:</div></td>
    <td><input name="dis" type="text" id="dis" /></td>
  </tr>
  <tr>
    <td height="51"><div align="right" class="style13">Place: </div></td>
    <td><input name="pol" type="text" id="pol" /></td>
  </tr>
  <tr>
    <td height="52"><div align="right" class="style13">Date of missing: </div></td>
    <td><input name="datem" type="text" id="datem" /></td>
  </tr>
  <tr>
    <td height="54"><div align="right" class="style13">Date of report: </div></td>
    <td><input name="dater" type="text" id="dater" /></td>
  </tr>
  <tr>
    <td height="55"><div align="right" class="style13">Sex </div></td>
    <td><input name="sex" type="text" id="sex" /></td>
  </tr>
  <tr>
    <td height="55"><div align="right" class="style13">Age</div></td>
    <td><input name="age" type="text" id="age" /></td>
  </tr>
  <tr>
    <td height="51"><div align="right" class="style13">Complexion:</div></td>
    <td><input name="complex" type="text" id="complex" /></td>
  </tr>
  <tr>
    <td height="54"><div align="right" class="style13">Height:</div></td>
    <td><input name="ht" type="text" id="ht" /></td>
  </tr>
  <tr>
    <td height="51"><div align="right" class="style13">Whether fat,plump or lean: </div></td>
    <td><input name="fat" type="text" id="fat" /></td>
  </tr>
  <tr>
    <td height="51"><div align="right" class="style13">Identification marks: </div></td>
    <td>
      <label>
        <textarea name="idm" id="idm"></textarea>
        </label>    </td>
  </tr>
  <tr>
    <td height="84"><div align="right" class="style13">Details of wearing apparels including ornaments at the time of missing: </div></td>
    <td><textarea name="app" id="app"></textarea></td>
  </tr>
  <tr>
    <td height="74"><div align="right" class="style13">Name and address of missing person: </div></td>
    <td><textarea name="nam" id="nam"></textarea></td>
  </tr>
  <tr>
    <td height="52"><div align="right" class="style13">Brief of the case: </div></td>
    <td><textarea name="brief" id="brief"></textarea></td>
  </tr>
  <tr>
    <td height="52" colspan="2">
      <label></label>
      
        <div align="center">
          <input type="submit" name="Submit2" value="Submit" onclick="return doMiss()" /> 
          <input type="reset" name="Reset" value="Reset" />
          </div>
      <div align="center"></div></td>
    </tr>
  <tr>
    <td height="52" colspan="2">
      <label>
      <div align="center"></div>
      </label>  
      </div></td>
  </tr>
</table>
   </form>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm. </p>
</div>
</body>
</html>







