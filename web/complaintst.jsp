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
.style3 {color: #CC3333}
.style4 {
	color: #C14744;
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
			<li class="active"><a href="adminhome.html">Home </a></li>
			<li><a href="viewusercomplaint.jsp">Usercomplaint </a></li>
			<li><a href="feedback.jsp">Usercrime</a></li>
			<li><a href="login.jsp">Userwant</a></li>
		</ul>
  </div>
</div>
<div id="content">

  <div id="colOne">
    <h2>Welcome to crimeStation!</h2>
		<div><table width="501" height="289" border="0" align="left">
  <tr>
    <td width="505" height="285" class="style3"><div align="justify"><span class="style4"> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
    </span>
        <form id="form1" method="post" action="">
          <p>&nbsp;</p>
          <table width="393" height="90" border="1">
            <tr>
              <td> Username </td>
              <td><label>
                <input type="text" name="user1" />
              </label></td>
            </tr>
            <tr>
              <td>Action</td>
              <td><label>
                <input type="text" name="action1" />
              </label></td>
            </tr>
            <tr>
              <td colspan="2"><label>
                <input type="submit" name="Submit" value="Submit" />
                <input name="Reset" type="reset" id="Reset" value="Reset" />
              </label></td>
              </tr>
          </table>
          <p>&nbsp; </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </form>
        </div></td>
  </tr>
</table>
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
					  <div align="center"></div>
					</div>
			  </form>
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="newadmin.jsp">New admin </a></li>
					<li><a href="hotnews.jsp">Hot News </a></li>
					<li><a href="mostwanted.jsp">Most Wanted </a></li>
					<li><a href="missingperson.jsp">Missing Persons </a></li>
					<li><a href="criminalregister.jsp">Criminal Register </a></li>
					<li><a href="postmortum.jsp">View Complaint </a></li>
					<li><a href="prisonerreg.jsp">Prisoners Register </a></li>
					<li><a href="history.jsp">History</a></li>
					<li><a href="fir.jsp">FIR</a></li>
					<li><a href="chargesheet.jsp">Chargesheet</a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="adminchangepass.jsp">Change Password </a></li>
				</ul>
			</li>
			
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. Designed by<em> <span class="style1"><a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></span></em></p>
</div>
</body>
</html>
