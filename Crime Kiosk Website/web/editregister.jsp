


<%@page import="java.io.*,java.sql.*;"  session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function doCheck()
{
  var u=document.getElementById("username");
  var p=document.getElementById("password");
  var c=document.getElementById("conpass");
  var n=document.getElementById("name");
  var a=document.getElementById("address");
  var pi=document.getElementById("pincode");
  var ph=document.getElementById("phoneno");
  var e=document.getElementById("email");
  var v=document.getElementById("village");
  var t=document.getElementById("taluk");
  var d=document.getElementById("district");
  var s=document.getElementById("state");
  
  if(u.value == "")
  {
    alert ("enter the username");
	u.focus();
	return false;
	}
  
    if(p.value == "")
  {
    alert ("enter the password");
	p.focus();
	return false;
	}
	
	else if((p.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
	
  if(c.value == "")
  {
    alert ("enter the confirm password");
	c.focus();
	return false;
	}
	
		   if((c.value)!=(p.value))
		   {
		   alert("Re-enter the password");
		   c.focus();
		   return false;
	}
		   
	
	
	
	
  if(n.value == "")
  {
    alert ("enter the name");
    n.focus();
	return false;
	}
	  if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}

  if(pi.value == "")
  {
    alert ("enter the pincode");
	pi.focus();
	return false;
	}
	
	 else if(!parseInt(pi.value))
		{    
                    alert("Enter Integer");
		    return false;	
		}
              else if(((pi.value.length)>6))
	        {
	               alert("Pin no: should contain 6 integers ");  	            
	               pi.focus();
	               return false;
                 }
	
  if(ph.value == "")
  {
    alert ("enter the phone number");
    
	ph.focus();
	return false;
	}
   else if(!parseInt(ph.value))
		{    
                    alert("Enter valid Phone number ");
		    return false;	
		}
            else if(((ph.value.length)<6) || ((ph.value.length)>11))
	                     {
	               alert("Phone no should contain atleast 6 integers ");  
	            
	               ph.focus();
                        return false;
	                  }                 
  
    if(e.value == "")
  {
    alert ("enter the email");
	e.focus();
	return false;
	}
	
	 else if(e.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       e.focus();
		       return false;
		      }
	
	  else if(e.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        e.focus();
		        return false;
		       }
	

    if(v.value == "")
  {
    alert ("enter the village");
	v.focus();
	return false;
	}
	  if(t.value == "")
  {
    alert ("enter the taluk");
	t.focus();
	return false;
	}
  if(d.value == "")
  {
    alert ("enter the district");
	d.focus();
	return false;
	}


    if(s.value == "")
  {
    alert ("enter the state");
	s.focus();
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
<form name="form1"method="get" action="editregisteraction.jsp">
    
    
<%    
    
    try
            {
                String a = null;
                String b = null;
                String c = null;
                String d = null;
                String e = null;
                String f = null;
                String g = null;
                String h = null;
                String i = null;
                String j = null;
                String k = null;
                
                String c1 = (String) session.getAttribute("s1");
                out.println(c1);
                String c2 = (String) session.getAttribute("s2");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select name,secret_question,answer,address,pincode,phone,email,village,taluk,district,state from userreg where username='" + c1 + "'");
                while (rs.next()) {
                    a = rs.getString("name");
                    b = rs.getString("secret_question");
                    c = rs.getString("answer");
                    d = rs.getString("address");
                    e = rs.getString("pincode");
                    f = rs.getString("phone");
                    g = rs.getString("email");
                    h = rs.getString("village");
                    i = rs.getString("taluk");
                    j = rs.getString("district");
                    k = rs.getString("state");
                    
                }


        %>   
<table width="455" border="0">
  
  <tr>
    <th scope="row"><div align="right">Name:</div></th>
    <td>
      <input name="name" type="text" id="name" value='<%=a%>'/>        </td>
  </tr>
  <tr>
    <th scope="row"> <div align="right">Secret Question </div></th>
    <td><label>
      <input type="text" name="secret" value='<%=b%>' />
    </label></td>
  </tr>
  <tr>
    <th scope="row"> <div align="right">Answer</div></th>
    <td><input type="text" name="answer"  value='<%=c%>'/></td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Address:</div></th>
    <td><label>
      <input type="text" name="address" value='<%=d%>' />
    </label></td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Pincode:</div></th>
    <td>
      <input name="pincode" type="text" id="pincode" value='<%=e%>'/>        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Phoneno:</div></th>
    <td>
      <input name="phoneno" type="text" id="phoneno"  value='<%=f%>'/>       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">E-Mail:</div></th>
    <td>
      <input name="email" type="text" id="email" value='<%=g%>'/>        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Village:</div></th>
    <td>
      <input name="village" type="text" id="village" value='<%=h%>'/>        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Taluk:</div></th>
    <td>
      <input name="taluk" type="text" id="taluk"  value='<%=i%>'/>       </td>
  </tr>
  <tr>
  <th scope="row"><div align="right">District:</div></th>
    <td>
      <input name="district" type="text" id="district" value='<%=j%>'/>        </td>
  </tr>
  <tr>
  <th scope="row"><div align="right">State:</div></th>
    <td>
      <input name="state" type="text" id="state"  value='<%=k%>'/>       </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input name="Submit" type="submit" id="submit" onclick="return doCheck()" value="Edit" />
      <input name="cancel" type="submit" id="cancel" value="Cancel" />       </td>
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
	<p>Copyright &copy; 2018 cfm. </p>
</div>
</body>
</html>











