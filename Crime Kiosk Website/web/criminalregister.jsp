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
 var a=document.getElementById("crm");
  var b=document.getElementById("na");
  var c=document.getElementById("nn");
  var d=document.getElementById("ag");
  var e=document.getElementById("occ");
  var f=document.getElementById("ct"); 
  var g=document.getElementById("add");
  
  
  
  
  
  
  if(a.value == "")
  {
    alert ("enter the criminal no:");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the name");
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
    alert ("enter the age");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the occupation");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter the crimetype");
	f.focus();
	return false;
	}
	
	 if(g.value == "")
  {
    alert ("enter the address");
g.focus();
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
		  <form id="form1" name="form1" method="post" action="criminalregisteraction.jsp">

<table width="409" border="0" align="center">
  <tr>
    <td height="57" colspan="2"><div align="center"><strong>CRIMINALS REGISTER</strong></div></td>
  </tr>
  <tr>
    <td width="150" height="47"><div align="right" class="style12">Criminal No :</div></td>
    <td width="243"><label>
      
        <div align="left">
          <label>
          <select name="select">
		  <option>1
		  <option>2
		  <option>3
		  <option>4
		  <option>5
		  <option>6
		  <option>7
          </select>
          </label>
        </div>
    </label>    </td>
  </tr>
  <tr>
    <td height="46"><div align="right" class="style12">Name :</div></td>
    <td><label>
      <input type="text" name="na" id="na" />
    </label></td>
  </tr>
  <tr>
    <td height="41"><div align="right" class="style12">Nickname :</div></td>
    <td><label>
      <input type="text" name="nn" id="nn" />
    </label></td>
  </tr>
  <tr>
    <td height="43"><div align="right" class="style11 style2"><strong>Age :</strong></div></td>
    <td><label>
      <input type="text" name="ag" id="ag" />
    </label></td>
  </tr>
  <tr>
    <td height="42"><div align="right" class="style12">Occupation</div></td>
    <td><label>
      <input type="text" name="occ" id="occ" />
    </label></td>
  </tr>
  <tr>
    <td height="38"><div align="right" class="style12">Crime type:</div></td>
    <td><label>
      <input type="text" name="ct" id="ct" />
    </label></td>
  </tr>
  <tr>
    <td height="41"><div align="right" class="style12">Address :</div></td>
    <td>
      <label></label><label>
      <textarea name="add1" id="add1"></textarea>
      </label>
        <label></label></td>
  </tr>
  <tr>
    <td height="42"><div align="right" class="style12">Most Wanted:</div></td>
    <td>
      <label>
    <span class="style1"></span></label>
  
      <label><span class="style4"></span>
      <select name="select2">
	  <option>yes</option>
	  <option>No</option>
      </select>
      </label></td>
  </tr>
  <tr>
    <td height="52" colspan="2">
      <label>
        <div align="center">
          <input type="submit" name="button" id="button" value="SAVE" onclick="return doValue()" />
          <input type="reset" name="button2" id="button2" value="CLEAR" />
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
			
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. </p>
</div>

</body>
</html>








