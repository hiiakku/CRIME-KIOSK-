
<%@page import="java.io.*,java.sql.*;"  session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

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
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
}
.style7 {color: #CC0000; font-weight: bold; }
-->
</style>

<script language="javascript">
function doWanted()
{
 var a=document.getElementById("name");
  var b=document.getElementById("age");
  var c=document.getElementById("add");
  var d=document.getElementById("type");
  var e=document.getElementById("complex");
   var f=document.getElementById("hair");
  var g=document.getElementById("built");
  var h=document.getElementById("passno");
  var i=document.getElementById("desc");
 
 
  
  
  if(a.value == "")
  {
    alert ("enter the name");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the age");
	b.focus();
	return false;
	}
	 else if(!parseInt(b.value))
		{    
                    alert("Enter Integer");
		    return false;	
		}
	 
	 if(c.value == "")
  {
    alert ("enter the address");
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
    alert ("enter the complexion");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter the hair colour");
	f.focus();
	return false;
	}
  
   if(g.value == "")
  {
    alert ("enter the built");
	g.focus();
	return false;
	}
	
	 if(h.value == "")
  {
    alert ("enter the passport no:");
	h.focus();
	return false;
	}
   if(i.value == "")
  {
    alert ("enter the case description");
	i.focus();
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

  <div id="colOne">
    <p>&nbsp;</p>
    <div>
		  <form id="form1" name="form1" method="post" action="mostwantedaction.jsp">
<%@ page language="java" contentType="text/html" import="java.sql.*" session="true" %>
<%
try
        {
     String fno=request.getParameter("fir");
     String distr=request.getParameter("dis");
      String pols=request.getParameter("pol");
     String datm=request.getParameter("datem");
      String datr=request.getParameter("dater");
     String se=request.getParameter("sex");
       String ag=request.getParameter("age");
     String complexi=request.getParameter("complex");
     String height=request.getParameter("ht");
     String plump=request.getParameter("fat");
     String identif=request.getParameter("idm");
      String apparel=request.getParameter("app");
     String namad=request.getParameter("nam");
      String bcc=request.getParameter("be");
      
     Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
     Statement st = con1.createStatement();
     st.executeUpdate("insert into missingperson values('"+fno+"','"+distr+"','"+pols+"','"+datm +"','"+datr+"','"+se+"','"+ag+"','"+complexi+"','"+height+"','"+plump+"','"+identif+"','"+apparel+"','"+namad+"','"+bcc+"')");

                out.println("Data completed successfully");



            } catch (Exception e) {
                out.println(e);
            



}
%>
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
	<p>Copyright &copy; 2009 cfm.</p>
</div>

</body>
</html>















