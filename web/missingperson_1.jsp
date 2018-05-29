
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



<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>


<script language="javascript">
function doMiss()
{
 var a=document.getElementById("fir");
  var b=document.getElementById("dis");
  var c=document.getElementById("pol");
  var d=document.getElementById("datem");
  var e=document.getElementById("dater");
   var f=document.getElementById("sex");
   var n=document.getElementById("age");
  var g=document.getElementById("complex");
  var h=document.getElementById("ht");
  var i=document.getElementById("fat");
  var j=document.getElementById("idm");
  
   var k=document.getElementById("app");
  var l=document.getElementById("nam");
  var m=document.getElementById("brief");
 
  
  
  
  
  
  if(a.value == "")
  {
    alert ("enter the fir no");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the district");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the police station");
	c.focus();
	return false;
	}
   if(d.value == "")
  {
    alert ("enter the date of missing");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the date of reporting");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter the sex ");
	f.focus();
	return false;
	}
	
	
	 if(n.value == "")
  {
    alert ("enter age");
  n.focus();
	return false;
	}
	
   if(g.value == "")
  {
    alert ("enter the complexion");
	g.focus();
	return false;
	}
	
	 if(h.value == "")
  {
    alert ("enter the height");
	h.focus();
	return false;
	}
   if(i.value == "")
  {
    alert ("enter whether fat,plump or lean");
	i.focus();
	return false;
	}
	
	 if(j.value == "")
  {
    alert ("enter the identification marks");
	j.focus();
	return false;
	}

		 if(k.value == "")
  {
    alert ("enter the deatails of wearing apparels");
	k.focus();
	return false;
	}
   if(l.value == "")
  {
    alert ("enter the name and address of missing person");
	l.focus();
	return false;
	}
	
	 if(m.value == "")
  {
    alert ("enter the brief of the case");
	m.focus();
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
.style11 {
	color: #999999;
	font-weight: bold;
}
.style13 {color: #CC0033; font-weight: bold; }
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
			<li class="active"><a href="adminhome.html">Adminhome </a></li>
			<li><a href="viewusercomplaint.jsp">Usercomplaint </a></li>
			<li><a href="viewusercrime.jsp">Usercrime</a></li>
			<li><a href="viewcontacts.jsp">Contacts</a></li>
			<li><a href="login.jsp">Logout</a></li>
		</ul>
  </div>
</div>
<div id="content">

  <div id="colOne">
    <form id="form1" name="form1" method="post" action="missingpersonaction.jsp">
<table width="411" border="0" align="center">
  <tr>
    <td height="49" colspan="2"><div align="center" class="style11">MISSING PERSONS </div></td>
  </tr>
  <tr>
    <td width="191" height="52"><div align="right" class="style13">FIR No: </div></td>
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
      <div align="center"><a href="LargeUpload.jsp">click here to upload photo</a>      
          </label>  
      </div></td>
  </tr>
</table>
</form>
    <div>
		 

	</div>
  </div>
	<div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>
		      </div>
			  
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="newadmin.jsp">New admin </a></li>
					<li><a href="hotnews.jsp">Hot News </a></li>
					<li><a href="viewhotnews.jsp">View Hot News </a></li>
					<li><a href="viewfeedback.jsp">View Feedback </a></li>
					<li><a href="mostwanted.jsp">Most Wanted </a></li>
					<li><a href="viewadminwanted.jsp">View/Delete MostWanted </a></li>
					<li><a href="missingperson.jsp">Missing Persons </a></li>
					<li><a href="viewadminmissing.jsp">View/Delete Missing Persons </a></li>
					<li><a href="criminalregister.jsp">Criminal Register </a></li>
					<li><a href="viewcomplaintreply.jsp">View Allcomplaintreply </a></li>
					<li><a href="prisonerreg.jsp">Prisoners Register </a></li>
					<li><a href="prisonerreport.jsp">ViewPrisonerReport </a></li>
					<li><a href="history.jsp">History</a></li>
					<li><a href="viewhistory.jsp">View History</a></li>
					<li><a href="fir.jsp">FIR</a></li>
					<li><a href="firreport.jsp">FIR Report</a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="adminchangepass.jsp">Change Password </a></li>
					<li><a href="criminalreport.jsp">All CriminalReport </a></li>
				</ul>
			</li>
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chatlogin.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. Designed by<em class="style1"> <a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></em></p>
</div>

</body>
</html>
















