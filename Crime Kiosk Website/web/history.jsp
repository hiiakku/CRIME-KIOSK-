
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
 var a=document.getElementById("cn");
  var b=document.getElementById("do");
  var c=document.getElementById("po");
  var d=document.getElementById("br");
  
  
  
  
  
  
  
  if(a.value == "")
  {
    alert ("enter the crime no");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the date of occurance");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the place of occurance");
	c.focus();
	return false;
	}
 
	 if(d.value == "")
  {
    alert ("enter the case description");
	d.focus();
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
.style2 {
	color: #CC0033;
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
		<form id="form1" name="form1" method="post" action="historyaction.jsp">
<table width="378" border="0" align="center">
  <tr>
    <td height="51" colspan="2"><div align="center"><strong>HISTORY SHEET</strong></div></td>
  </tr>
  <tr>
    <td width="183" height="34"><span class="style2">PRISONERS NO:</span></td>
    <td width="179">
      <label>
        <select name="prisoner" id="prisoner">
          <option>PR11</option>
          <option>PR12</option>
        </select>
        </label>    </td>
  </tr>
  <tr>
    <td height="32"><span class="style2">TYPE OF CRIME :</span></td>
    <td>
      <label>
        <select name="typecrime" id="select2">
          <option>Murder</option>
          <option>Dacoity</option>
        </select>
        </label>    </td>
  </tr>
  <tr>
    <td height="33"><span class="style2">DATE OF OCCURANCE :</span></td>
    <td>
      <label>
        <input type="text" name="do" id="do" />
        </label>    </td>
  </tr>
  <tr>
    <td height="34"><span class="style2">PLACE OF OCCURENCE :</span></td>
    <td>
      <label>
        <input type="text" name="po" id="po" />
        </label>    </td>
  </tr>
  <tr>
    <td height="30"><span class="style2">BRIEF DESCRIPTION OF CASE :</span></td>
    <td>
      <label>
        <textarea name="br" id="br" cols="30" rows="4"></textarea>
        </label>    </td>
  </tr>
  <tr>
    <td height="35" colspan="2"><div align="center">
      <input type="submit" name="button" id="button" value="SAVE" onclick="return doValue()" />
      <input type="Reset" name="Reset" id="Reset" value="CLEAR" />
    </div></td>
  </tr>
</table>

  <label></label>
</form>

	</div>
  </div>
	<div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>
		      </div>
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

























