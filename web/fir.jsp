
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
 var a=document.getElementById("dis");
  var b=document.getElementById("da");
  var c=document.getElementById("ti");
  var d=document.getElementById("toi");
  var e=document.getElementById("place");
  var f=document.getElementById("for");
  var g=document.getElementById("fno");
   var h=document.getElementById("sec");
  var i=document.getElementById("refen");
  var j=document.getElementById("add");
  var k=document.getElementById("pn");
  var l=document.getElementById("cn");
  var m=document.getElementById("po");
  var n=document.getElementById("rt");
  
  var o=document.getElementById("ir");
  var p=document.getElementById("di")
  
  
  if(a.value == "")
  {
    alert ("enter the district");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the date");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the time");
	c.focus();
	return false;
	}
   if(d.value == "")
  {
    alert ("enter the type");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the place");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter whether foreign or local");
	f.focus();
	return false;
	}
	
	 if(g.value == "")
  {
    alert ("enter the fir no:");
g.focus();
	return false;
	}
	
	
	 if(h.value == "")
  {
    alert ("enter the section");
	h.focus();
	return false;
	}
	
	 if(i.value == "")
  {
    alert ("enter the reference no:");
	i.focus();
	return false;
	}
   if(j.value == "")
  {
    alert ("enter the informant address");
	j.focus();
	return false;
	}
	
	 if(k.value == "")
  {
    alert ("enter the passport no:");
	k.focus();
	return false;
	}
	
	 if(l.value == "")
  {
    alert ("enter complaint no:");
	l.focus();
	return false;
	}
	
	 if(m.value == "")
  {
    alert ("enter the police station");
m.focus();
	return false;
	}
	
	
	
	 if(n.value == "")
  {
    alert ("enter the received time:");
	n.focus();
	return false;
	}
	
	 if(o.value == "")
  {
    alert ("enter infm received:");
	o.focus();
	return false;
	}
	
	 if(p.value == "")
  {
    alert ("enter the distance from police station");
p.focus();
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
<form id="form1" name="form1" method="post" action="firaction.jsp">
<table width="427" border="0" align="center">
  <tr>
    <td colspan="2"><div align="center" class="style1">FIR</div></td>
  </tr>
  <tr>
    <td width="197">&nbsp;</td>
    <td width="214">&nbsp;</td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style4">District:</span></strong></div></td>
    <td>
      <label>
        <input type="text" name="dis" id="dis" />
        </label>       </td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style4">Date</span><span class="style5">:</span></strong></div></td>
    <td><input type="text" name="da" id="da" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Time:</span></strong></div></td>
    <td><input type="text" name="ti" id="ti" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Type of information :</span></strong></div></td>
    <td><input type="text" name="toi" id="toi" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Place of occurrence:</span></strong></div></td>
    <td><input type="text" name="place" id="place" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Foreign/Local:</span></strong></div></td>
    <td><input type="text" name="for" id="for" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Act:</span></strong></div></td>
    <td>
      <label></label>
      <select name="select" id="select">
        <option>murder</option>
        <option>suicide</option>
      </select>      </td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">FIR No:</span></strong></div></td>
    <td><input type="text" name="fno" id="fno" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Section:</span></strong></div></td>
    <td><input type="text" name="sec" id="sec" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style4">General Diary Ref Entry No:</span></strong></div></td>
    <td><input type="text" name="refen" id="refen" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Informant Address:</span></strong></div></td>
    <td>
      <label>
        <textarea name="add" cols="25" rows="2" id="add"></textarea>
        </label>    </td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style4">Passport No:</span></strong></div></td>
    <td><input type="text" name="pn" id="pn" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Complaint No:</span></strong></div></td>
    <td><input type="text" name="cn" id="cn" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Police:</span></strong></div></td>
    <td><input type="text" name="po" id="po" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Received Time:</span></strong></div></td>
    <td><input type="text" name="rt" id="rt" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Information Received:</span></strong></div></td>
    <td><input type="text" name="ir" id="ir" /></td>
  </tr>
  <tr>
    <td class="style4"><div align="right"><strong><span class="style5">Distance from Police Station:</span></strong></div></td>
    <td><input type="text" name="di" id="di" /></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="button" id="button" value="Submit" onclick="return doValue()" />
    </div></td>
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
			
			
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm. </em></p>
</div>

</body>
</html>





