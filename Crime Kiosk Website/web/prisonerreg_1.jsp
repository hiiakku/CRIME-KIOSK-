<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<script language="javascript">
function doValue()
{
 var a=document.getElementById("pn");
  var b=document.getElementById("cn");
  var c=document.getElementById("nn");
  var d=document.getElementById("tc");
  var e=document.getElementById("ci");
  var f=document.getElementById("fm"); 
  var g=document.getElementById("im");
  var h=document.getElementById("ht");
  var i=document.getElementById("wt"); 
  var j=document.getElementById("co");
  
      
  if(a.value == "")
  {
    alert ("enter the prisoner no");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the chargesheet");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the nick name");
	c.focus();
	return false;
	}
   if(d.value == "")
  {
    alert ("enter the type of crime");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the civil");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter the family member");
	f.focus();
	return false;
	}
	
	 if(g.value == "")
  {
    alert ("enter the identification mark");
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
    alert ("enter the weight");
	i.focus();
	return false;
	}
	
	 if(j.value == "")
  {
    alert ("enter the colour");
j.focus();
	return false;
	}
			
	} 
	
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
.style6 {color: #CC0033; font-weight: bold; }
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
    <p>&nbsp;</p>
    <div>
		<form id="form1" name="form1" method="get" action="prisonerregaction.jsp">
<table width="403" border="0" align="center">
  <tr>
    <td height="35" colspan="2"><div align="center"><strong>PRISONERS REGISTER</strong></div></td>
  </tr>
  <tr>
    <td width="157" height="39"><span class="style6">PRISONERS NO:</span></td>
    <td width="230">
      <label>
        <input type="text" name="pn" id="pn" />
        </label>    </td>
  </tr>
  <tr>
    <td height="33"><span class="style6">CHARGESHEET NO:</span></td>
    <td><label>
      <input type="text" name="cn" id="cn" />
    </label></td>
  </tr>
  <tr>
    <td height="36"><span class="style6">NICKNAME:</span></td>
    <td><label>
      <input type="text" name="nn" id="nn" />
    </label></td>
  </tr>
  <tr>
    <td height="33"><span class="style6">TYPE OF CRIME:</span></td>
    <td><label>
      <input type="text" name="tc" id="tc" />
    </label></td>
  </tr>
  <tr>
    <td height="30"><span class="style6">FAMILY MEMBERS:</span></td>
    <td>
      <label>
        <textarea name="fm" id="fm" cols="20" rows="5"></textarea>
        </label>    </td>
  </tr>
  <tr>
    <td height="29"><span class="style6">IDENTIFICATION MARKS :</span></td>
    <td><label>
      <input type="text" name="im" id="im" />
    </label></td>
  </tr>
  <tr>
    <td height="28"><span class="style6">HEIGHT :</span></td>
    <td><label>
      <input type="text" name="ht" id="ht" />
    </label></td>
  </tr>
  <tr>
    <td height="32"><span class="style6">WEIGHT :</span></td>
    <td><label>
      <input type="text" name=" wt" id=" wt" />
    </label></td>
  </tr>
  <tr>
    <td height="33"><span class="style6">COLOR :</span></td>
    <td><label>
      <input type="text" name="co" id="co" />
    </label></td>
  </tr>
  <tr>
    <td height="35" colspan="2">
      <label>
      <div align="center">
        <input type="submit" name="btn" id="btn" value="SAVE" onclick="return doValue()" />
             </div>
      </label>    </td>
  </tr>
</table>
</form>
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




























<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>



</head>
<body>

</body>
</html>
