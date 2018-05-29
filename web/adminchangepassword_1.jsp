<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html" import="java.sql.*" session="true"%>
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
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
-->
</style>
<script language="javascript">
function doCheck()
{
  var un=document.getElementById("username");
  var op=document.getElementById("oldpassword");
  var np=document.getElementById("newpassword");
  var cp=document.getElementById("confirmpassword");
  
    if(un.value == "")
 {
  alert("Enter the user name");
  un.focus();
  return false;
  }
     if(op.value == "")
 {
  alert("Enter the old password");
  op.focus();
  return false;
  }


      if(np.value == "")
 {
  alert("Enter the new password");
  np.focus();
  return false;
  }
  
   if(cp.value == "")
 {
  alert("Enter the confirm password");
 cp.focus();
  return false;
  }
  
  
}
</script>
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
					<li><a href="newadmin.jsp">New admin </a></li>
					<li><a href="hotnews.jsp">Hot News </a></li>
					<li><a href="viewhotnews.jsp">View Hot News </a></li>
					<li><a href="addnewcontact.jsp">Add Contacts </a></li>
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

<form id="form1" name="form1" method="post" action="changepassaction.jsp">
    
    <% try {

                //              
                String a = null;
                
                String c1 = (String) session.getAttribute("s1");
                out.println(c1);
                String c2 = (String) session.getAttribute("s2");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select username from login where username='" + c1 + "'");
                while (rs.next()) {
                    a = rs.getString("username");
                   

                }


            %>   
<table width="371" border="0">
  <tr>
    <td height="58" colspan="2"><div align="center" class="style1">CHANGE PASSWORD </div></td>
  </tr>
  <tr>
    <td width="151" height="34"><div align="right" class="style2">Username<strong>:</strong></div></td>
    <td width="204"><label>
      <div align="justify">
        <input name="username" type="text" id="username"  value='<%=a%>'/>
      </div>
    </label></td>
  </tr>
  <tr>
    <td height="35"><div align="right" class="style2">Old Password<strong>: </strong></div></td>
    <td><div align="justify">
      <input name="oldpassword" type="password" id="oldpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="31"><div align="right" class="style2">New Password<strong>: </strong></div></td>
    <td><div align="justify">
      <input name="newpassword" type="password" id="newpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="31"><div align="right"><span class="style2">Confirm Password</span><strong>: </strong></div></td>
    <td><div align="justify">
      <input name="confirmpassword" type="password" id="confirmpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="27">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="37" colspan="2">
	<div align="center">
      <input type="submit" name="Submit" value="Change" onclick="return doCheck()"/>
    
  
     
        <input type="reset" name="reset" value="Reset" />
      </div>
                
    </td>
  </tr>
</table>
</form>

<%
            } catch (Exception e) {
                out.println(e);
            }
        %>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. </p>
</div>
</body>
</html>










