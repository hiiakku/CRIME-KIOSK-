<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
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
    <p align="right"><strong><a href="mostwanted.jsp"></a> </strong></p>
    <div>
	<%@ page language="java" contentType="text/html" import="java.sql.*" session="true" %>
<%
try
        {
    String nam=request.getParameter("name");
     String ag=request.getParameter("age");
      String addr=request.getParameter("add");
     String typeof=request.getParameter("type");
      String complexn=request.getParameter("complex");
     String ha=request.getParameter("hair");
     String buil=request.getParameter("built");
     String psp=request.getParameter("passno");
     String cased=request.getParameter("desc");
    
      
     Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
     Statement st = con1.createStatement();
     st.executeUpdate("insert into mostwanted values('"+nam+"','"+ag+"','"+addr+"','"+typeof +"','"+complexn+"','"+ha+"','"+buil+"','"+psp+"','"+cased+"')");
                out.println("Data completed successfully");
 
   }             
  catch(Exception e)
          {
      out.println(e);
      }
  
    
%>
		  <form id="form1" name="form1" method="post" action="mostwantedaction.jsp">
<table width="502" border="0" align="center">
  
  <tr>
    <td width="486" height="65">
      <label>
        
        <div align="center">
		
	  <form method="post" action="simple.jsp" name="upform" enctype="multipart/form-data">
	    <br>
  <br>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
</form></div>
      </label>      </td>
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
	<p>Copyright &copy; 2018 cfm. </p>
</div>

</body>
</html>






