
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
<table width="422" border="0" align="center">
 
  <tr>
    <td width="188" height="40"><div align="right" class="style73">E-mail:</div></td>
    <td width="218">
     <a href="compose.jsp" class="style73"><strong>crimefilemanagement@gmail.com</strong></a>    </td>
  </tr>
  <tr>
    <td height="42"><div align="right" class="style73">Fax:</div></td>
    <td><div align="center" class="style71">
      001-434343  </div></td>
  </tr>
  <tr>
    <td height="58"><div align="right" class="style73">Address:</div></td>
    <td><p align="center" class="style69">Crime Station </p>
      <p align="center" class="style70"><strong>U.C Building, Sasthraji Nagar</strong></p>
      <p align="center" class="style70"><strong>HC Sen Marg-06 </strong></p></td>
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
			
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm. </p>
</div>

</body>
</html>




























