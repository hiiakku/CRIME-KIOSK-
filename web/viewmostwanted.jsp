
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
.style8 {color: #660000; font-weight: bold; }
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

  <div id="colOne">
    <h2>Welcome to crimeStation!</h2>
		<div>
		 <form id="form1" method="post" action="viewcomplaintreply.jsp">
                                        <%
            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select name,age,address,typeofcrime from mostwanted");
                String name = "", age = "", addr = "",typeofcrime="";
                                        %>          
                                        
                                        <table width="485" height="28" border="0">
                                            <tr>
                                                <td width="86" height="22" ><span class="style8">Name</span></td>
                                                <td width="89"><span class="style8">Age</span></td>
                                                <td width="222"><span class="style8">Address</span></td>
												 <td width="222"><span class="style8">Type of Crime </span></td>
												 <td width="222">&nbsp;</td>
                                            </tr>
                                            <%
                                            while (rs.next()) {
                                              name = rs.getString("name");
                                               age  = rs.getString("age");
                                              addr = rs.getString("address");
					     typeofcrime = rs.getString("typeofcrime");
                                                
                                                out.println("<tr>");
                                                out.println("<td>" + name + "</td>");
                                                out.println("<td>" + age + "</td>");
                                                out.println("<td>" +  addr + "</td>");
                                                out.println("<td>" +  typeofcrime + "</td>");
					                                                
                                                out.println("<tr>");
                                            }
                                            %>
           </table>
                                        
          </form>
									 <%

            } catch (Exception e) {
                out.println(e);
            }
                                    %>
		</div>
  </div>
	<div id="colTwo">
		<ul>
			<li>
			  <div align="center"><a href="login.jsp"><input type="button" id="b1" name="b1" value="Logout" /></a></div>
			  
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
			        <li><a href="editregister.jsp">Edit Account</a></li>
		        </ul>
			</li>
			
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2018 cfm.</p>
</div>
</body>
</html>