<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.io.*,java.sql.*;"  session="true"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<script language="javascript">
            function doJob()
            {
                var cmp=document.getElementById("comploaintno");
                var ui=document.getElementById("userid");
                var ds=document.getElementById("detailssuspect");
                var t=document.getElementById("typecrime");
                var to=document.getElementById("typeothers");
                
                if(cmp.value == "")
                    {
                        alert("Enter the complaint no:");
                        cmp.focus();
                        return false;
                    }
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
                            
                            if(t.value == "")
                                {
                                    alert("Enter the type of crime");
                                    t.focus();
                                    return false;
                                }
                                
                                if(to.value == "")
                                    {
                                        alert("Enter the type of other crimes");
                                        to.focus();
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
			<li class="active"><a href="adminhome.html">my home </a></li>
			<li><a href="latestnews.jsp">latest news </a></li>
			<li><a href="feedback.jsp">feedbacks</a></li>
			<li><a href="login.jsp">logout</a></li>
		</ul>
  </div>
</div>
<div id="content">
  <div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>		      </div>
			  <form method="get" action="complaintstatus.jsp">
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
					<li><a href="complaint.jsp">Complaint</a></li>
					<li><a href="crimereport.jsp">Crime Report</a></li>
					<li><a href="usermostwanted.jsp">Most Wanted </a></li>
				    <li><a href="feedback.jsp">Feedback  </a></li>
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
<form name="form1" method="get" action="complaintstatus.jsp">
            
            
            
            <% try {

                //              
               // String a = null;
                String b = null;
                String c = null;
                String d = null;
                String e = null;
                String f = null;
                String c1 = (String) session.getAttribute("s1");
                out.println(c1);
                String c2 = (String) session.getAttribute("s2");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select detailssuspect,Description,Datc,typeofcrime,others from complaintreg where userid='" + c1 + "'");
                while (rs.next()) {
                    //a = rs.getString("complaintno");
                    b = rs.getString("detailssuspect");
                    c = rs.getString("Description");
                    d = rs.getString("Datc");
                    e = rs.getString("typeofcrime");
                    f = rs.getString("others");

                }


            %>   
            
            <table width="487" border="0">
                
                
                <tr>
                    <th scope="row"><div align="right">Detailssuspect:</div></th>
                    <td>
                        <input name="detailssuspect" type="text" id="detailssuspect" value='<%=b%>'/>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Description:</div></th>
                    <td><label>
                            <input type="text" name="description"  value='<%=c%>'/>
                    </label></td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Date:</div></th>
                    <td>
                        <input name="date" type="text" id="date" value='<%=d%>'/>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Typeofcrime:</div></th>
                    <td>
                        <select name="typecrime" id="typecrime" value='<%=e%>'>
                            <option>civil</option>
                            <option>Others</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                <th scope="row"><div align="right">others:</div></th>
                <td>
                    <input type="text" name="others" id="others" value='<%=f%>' >
                </td>
                <tr>
                    <th scope="row"><div align="right">Your Status</div></th>
                    <td><label>
                    <input type="text" name="textfield" value="considered" />
                    </label></td>
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
	<p>Copyright &copy; 2009 cfm.</p>
</div>
</body>
</html>


