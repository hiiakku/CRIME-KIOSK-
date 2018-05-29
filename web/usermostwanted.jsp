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
function doValue()
{
 var cn=document.getElementById("crimeno");
  var ui=document.getElementById("userid");
  var ni=document.getElementById("nameinformant");
  var d=document.getElementById("det");
  var a=document.getElementById("address");
  var des=document.getElementById("description");
  var da1=document.getElementById("da");
   
    if(cn.value == "")
  {
    alert ("enter the crimeno");
	cn.focus();
	return false;
	}
  
   if(ui.value == "")
  {
    alert ("enter the userid");
	ui.focus();
	return false;
	}
	
	 if(ni.value == "")
  {
    alert ("enter the name of informant");
	ni.focus();
	return false;
	}
   if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}
	
	 if(d.value == "")
  {
    alert ("enter the details");
	d.focus();
	return false;
	}
	
	 if(des.value == "")
  {
    alert ("enter the description");
	des.focus();
	return false;
	}
	
	 if(da.value == "")
  {
    alert ("enter the date");
	da.focus();
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
			<li class="active"><a href="adminhome.html">my home </a></li>
			<li><a href="latestnews.jsp">latest news </a></li>
			<li><a href="feedback.jsp">feedbacks</a></li>
			<li><a href="login.jsp">logout</a></li>
		</ul>
  </div>
</div>
<div id="content">
  <div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>		      </div>
			  <form method="get" action="#">
					<div>
						<div align="center">
						  <input type="text" id="textfield1" name="textfield1" value="" size="18" />
						  <input type="submit" id="submit1" name="submit1" value="Search" />
					      </div>
					</div>
			  </form>
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="complaint.jsp">Complaint</a></li>
					<li><a href="crimereport.jsp">Crime Report</a></li>
					<li><a href="usermostwanted.jsp">Most Wanted </a></li>
				    <li><a href="feedback.jsp">Feedback  </a></li>
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

<form method="post" action="usermostwantedaction.jsp" >
  <table width="402" border="0">
  <tr>
    <td height="42" colspan="2"><div align="center" class="style1">MOST WANTED </div></td>
  </tr>
  <tr>
    <td width="189" height="53"><div align="right"><span class="style2">Name:</span></div></td>
    <td width="197">
      <label>
        <input name="name" type="text" id="name" />
        </label>    </td>
  </tr>
  <tr>
    <td height="22"><label>
      <div align="right">UserId</div>
    </label></td>
    <td><input name="user" type="text" id="user" /></td>
  </tr>
  <tr>
    <td height="47"><div align="right">Age:</div></td>
    <td><input name="age" type="text" id="age" /></td>
  </tr>
  <tr>
    <td height="49"><div align="right">Type of crime: </div></td>
    <td><input name="type" type="text" id="type" /></td>
  </tr>
  <tr>
    <td height="30" colspan="2"><strong>Descriptive Particulars : </strong></td>
  </tr>
  <tr>
    <td height="31"><div align="right">Complexion:</div></td>
    <td><input name="complex" type="text" id="complex" /></td>
  </tr>
  <tr>
    <td height="35"><div align="right">Hair:</div></td>
    <td><input name="hair" type="text" id="hair" /></td>
  </tr>
  <tr>
    <td height="33"><div align="right">Built:</div></td>
    <td><input name="built" type="text" id="built" /></td>
  </tr>
  <tr>
    <td height="75"><strong>Case Description: </strong></td>
    <td><textarea name="desc" cols="30" rows="4" id="desc"></textarea></td>
  </tr>
  <tr>
	</tr>
    <tr>
      <td align="left"><div align="center">
        <input type="submit" name="Submit2" value="Submit" /> 
        <input type="reset" name="Reset" value="Cancel" />
      </div></td>
    </tr>
</table>
</form> 

</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm.></p>
</div>
</body>
</html>






