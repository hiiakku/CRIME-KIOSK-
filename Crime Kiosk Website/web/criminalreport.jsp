
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
.style5 {color: #990000}
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
                <h2>Welcome to crimeStation!</h2>
               
                                    
                                    <span class="style4">        </span>
                                    <form id="form1" method="post" action="takeaction.jsp">
                                        <%
            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select * from criminalregister");
                String criminalno1 = "", name1 = "", nickname1 = "", age1 = "", occupation1 = "",crimetype1="",address1="",mostyesno11="";
                                        %>          
                                        
                                        <table width="521" height="49" border="1">
                                            <tr>
                                                <td width="65" height="43" ><span class="style5">Criminalno</span></td>
                                                <td width="40"><span class="style5">Name</span></td>
                                                <td width="66"><span class="style5">Nickname</span></td>
                                                <td width="26"><span class="style5">Age</span></td>
                                                <td width="68"><span class="style5">Occupation</span></td>
                                                <td width="68"><span class="style5">Crimetype</span></td>
                                                <td width="68"><span class="style5">Address</span></td>
                                                <td width="68"><span class="style5">mostyesorno</span></td>
                                            </tr>
                                            <%
                                            while (rs.next()) {
                                                criminalno1 = rs.getString("criminalno");
                                                name1 = rs.getString("name");
                                                nickname1 = rs.getString("nickname");
                                                age1 = rs.getString("age");
                                                occupation1 = rs.getString("occupation");
						crimetype1 = rs.getString("crimetype");
                                                address1 = rs.getString("address");
                                                mostyesno11 = rs.getString("mostyesorno");
                                                out.println("<tr>");
                                                out.println("<td>" + criminalno1 + "</td>");
                                                out.println("<td>" + name1 + "</td>");
                                                out.println("<td>" + nickname1 + "</td>");
                                                out.println("<td>" + age1 + "</td>");
                                                out.println("<td>" + occupation1 + "</td>");
						out.println("<td>" + crimetype1 + "</td>");
                                                out.println("<td>" + address1 + "</td>");
                                                out.println("<td>" + mostyesno11 + "</td>");
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
                              <span class="style4">
                                  <p>&nbsp;</p>
                              </span></div></td>
                       
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
                    
                </ul>
            </div>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2018 cfm.</p>
        </div>
    </body>
</html>
