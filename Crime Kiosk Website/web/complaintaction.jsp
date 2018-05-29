


<%@page import="java.io.*,java.sql.*;"  session="true"%>
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
function doValue()
{

  var ui=document.getElementById("userid");
  var ni=document.getElementById("nameinformant");
  var d=document.getElementById("det");
 // var a=document.getElementById("address");
  var des=document.getElementById("description");
  var da1=document.getElementById("da");
   
 
  
   if(ui.value == "")
  {
    alert ("enter the userid");
	ui.focus();
	return false;
	}
	
	 if(ni.value == "")
  {
    alert ("enter the name of informant");
	ni.focus();
	return false;
	}
   /*if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}
	*/
	 if(d.value == "")
  {
    alert ("enter the details");
	d.focus();
	return false;
	}
	
	 if(des.value == "")
  {
    alert ("enter the description");
	des.focus();
	return false;
	}
	
	 if(da.value == "")
  {
    alert ("enter the date");
	d.focus();
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
			<li><a href="viewcrimereply.jsp">Crimestatus </a></li>
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
<%
            try {
               
                String userid = request.getParameter("userid");
                String detailssuspect = request.getParameter("detailssuspect");
                String description = request.getParameter("description");
                String date = request.getParameter("date");
                String typecrime = request.getParameter("typecrime");
                //String typeothers = request.getParameter("typeothers");

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st2 = con1.createStatement();
                st2.executeUpdate("insert into complaintreg(userid ,detailssuspect,description,Datc,typeofcrime) values('"+userid+"','"+detailssuspect+"','"+description+"','"+date+"','"+typecrime+"')");

                out.println("Complaint submitted,take action soon,Thank You");



            } catch (Exception e) {
                out.println(e);
            }
%>

  </form>

</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm.</p>
</div>
</body>
</html>







