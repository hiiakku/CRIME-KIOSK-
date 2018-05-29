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
function doJob()
{
 
  var ui=document.getElementById("userid");
  var ds=document.getElementById("detailssuspect");
  var t=document.getElementById("typecrime");
  var to=document.getElementById("typeothers");
  
 
     if(ui.value == "")
 {
  alert("Enter the user id:");
  ui.focus();
  return false;
  }


      if(ds.value == "")
 {
  alert("Enter the details suspect");
  ds.focus();
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
			
		</ul>
  </div>
  <div>
  <form name="form1" method="get" action="complaintaction.jsp">
<table width="409" border="0">
  
  <tr>
    <th width="186" scope="row"><div align="right" class="style5">UserId:</div></th>
    <td width="213">
      <input name="userid" type="text" id="userid" />      </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Detailssuspect:</div></th>
    <td>
      <input name="detailssuspect" type="text" id="detailssuspect" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Description:</div></th>
    <td>
      <textarea name="description" id="description"></textarea>       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Date:</div></th>
    <td>
      <input name="date" type="text" id="date" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Typeofcrime:</div></th>
    <td>
      <select name="typecrime" id="typecrime">
          <option>civil</option>
        <option>Others</option>
      </select>       </td>
  </tr>
  
  
  
  <tr>
    <th scope="row"><div align="right" class="style5"></div></th>
    <td>&nbsp;</td>
  <tr>
    <th scope="row"><div align="right"><span class="style5"></span></div></th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input type="submit" name="Submit" value="Register" onclick="return doJob()" />
      <input type="Reset" name="Reset" value="Cancel" />        </td>
  </tr>
</table>
</form>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm.</p>
</div>
</body>
</html>
