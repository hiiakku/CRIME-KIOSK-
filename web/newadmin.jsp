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

<title>Untitled Document</title>
<script language="javascript">
function doCheck()
{
  var a=document.getElementById("username");
  var b=document.getElementById("password");
  var c=document.getElementById("conpass");
  var d=document.getElementById("name");
  var e=document.getElementById("desig");
  var f=document.getElementById("offadd");
  var g=document.getElementById("phno");
  var h=document.getElementById("address");
  var i=document.getElementById("pincode");
 var j=document.getElementById("phoneno");
  var k=document.getElementById("email");

  if(a.value == "")
  {
    alert ("enter the username");
	a.focus();
	return false;
	}
  
    if(b.value == "")
  {
    alert ("enter the password");
	b.focus();
	return false;
	}
	
	else if((b.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 b.focus();
 return false;
	 }
	
  if(c.value == "")
  {
    alert ("enter the confirm password");
	c.focus();
	return false;
	}
	
		   if((c.value)!=(b.value))
		   {
		   alert("Re-enter the password");
		   c.focus();
		   return false;
	}
		   
	
	
	
	
  if(d.value == "")
  {
    alert ("enter the name");
    d.focus();
	return false;
	}
	
	
	
	
	 if(e.value == "")
  {
    alert ("enter the designation");
	e.focus();
	return false;
	}
	 
	 
	  if(f.value == "")
  {
    alert ("enter the official address");
	f.focus();
	return false;
	}
  
    if(g.value == "")
  {
    alert ("enter the phone no:");
    g.focus();
	return false;
	}
	
	
	
	
	
	  if(h.value == "")
  {
    alert ("enter the address");
	h.focus();
	return false;
	}

  if(i.value == "")
  {
    alert ("enter the pincode");
	i.focus();
	return false;
	}
	
	 else if(!parseInt(i.value))
		{    
                    alert("Enter Integer");
		    return false;	
		}
              else if(((i.value.length)>6))
	        {
	               alert("Pin no: should contain 6 integers ");  	            
	               i.focus();
	               return false;
                 }
	
  if(j.value == "")
  {
    alert ("enter the phone number");
	j.focus();
	return false;
	}
   else if(!parseInt(j.value))
		{    
                    alert("Enter valid Phone number ");
		    return false;	
		}
            else if(((j.value.length)<6) || ((j.value.length)>11))
	                     {
	               alert("Phone no should contain atleast 6 integers ");  
	            
	               j.focus();
                        return false;
	                  }                 
  
    if(k.value == "")
  {
    alert ("enter the email");
	k.focus();
	return false;
	}
	
	 else if(k.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       k.focus();
		       return false;
		      }
	
	  else if(k.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        k.focus();
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
.style4 {
	color: #C14744;
	font-weight: bold;
}
.style8 {color: #CCCC99}
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
    <div><form name="form1"method="get" action="newadminaction.jsp" >
		  <table width="455" border="0" align="center">
<tr>
 <td height="34" colspan="2"><div align="center" class="style1 style8">ADMIN REGISTRATION </div></td>
 </tr>
  <tr>
  
    <td height="31" scope="col"><div align="right" class="style4">Username:</div></td>
    <th width="238" scope="col">
      <div align="left">
        <input name="username" type="text" id="username" />
        </div>      </th>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Password</span>:</div></td>
    <td>
      <input name="password" type="password" id="password" maxlength="8" /></td>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Confirm password</span>:</div></td>
    <td>
      <input name="conpass" type="password" id="conpass" maxlength="8" />      </td>
  </tr>
  <tr>
    <td scope="row"><div align="right"><span class="style4">Secret question</span>: </div></td>
    <td><label>
      <select name="select">
        <option>what is your pet's name?</option>
        <option>where is your house?</option>
        <option>what is the name of your first school?</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td height="29" scope="row"><div align="right"><span class="style4">Answer</span>:</div></td>
    <td><label>
      <input name="ans" type="text" id="ans" />
    </label></td>
  </tr>
  <tr>
    <td height="28" scope="row"><div align="right"><span class="style4">Name</span>:</div></td>
    <td>
      <input name="name" type="text" id="name" />      </td>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Designation</span>:</div></td>
    <td><input name="desig" type="text" id="desig" /></td>
  </tr>
  <tr>
    <td height="44" scope="row"><div align="right"><span class="style4">Official address</span>: </div></td>
    <td><textarea name="offadd" id="offadd"></textarea></td>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Phone no</span>: </div></td>
    <td><input name="phno" type="text" id="phno" /></td>
  </tr>
  <tr>
    <td scope="row"><div align="right"> <span class="style4">Residential address</span>:</div></td>
    <td>
      <textarea name="address" id="address"></textarea>      </td>
  </tr>
  <tr>
    <td height="31" scope="row"><div align="right"><span class="style4">Pincode</span>:</div></td>
    <td>
      <input name="pincode" type="text" id="pincode" />      </td>
  </tr>
  <tr>
    <td height="29" scope="row"><div align="right"><span class="style4">Phoneno</span>:</div></td>
    <td>
      <input name="phoneno" type="text" id="phoneno" />      </td>
  </tr>
  <tr>
    <td scope="row"><div align="right"><span class="style4">E-Mail</span>:</div></td>
    <td>
      <input name="email" type="text" id="email" />      </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th colspan="2" scope="row">
      <input name="Submit" type="Submit" id="submit" value="Register" onclick="return doCheck()" />&nbsp;&nbsp;&nbsp;&nbsp; 
	  
      <input name="reset" type="reset" id="cancel" value="Reset" />      </th>
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
	<p>Copyright &copy; 2018 cfm.></p>
</div>

</body>
</html>













