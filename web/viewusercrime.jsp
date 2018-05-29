
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
                <div><table width="501" height="289" border="0" align="left">
                        <tr>
                            <td width="505" height="285" class="style3"><div align="justify"><span class="style4"> <p>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%
            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select * from crimereport");
                String userid = "", nameinformant1 = "", addressinfmant = "", details = "", description = "",dat = "";
                                        %>          
                                        
                                        </p>
                                    </span><form id="form1" method="post" action="takecrimeaction1.jsp">
                                    <table width="469" height="49" border="1" align="left">
                                            <tr>
                                                <td width="37" height="43" >Userid</td>
                                                <td width="104">Nameofinformant</td>
                                                <td width="104">Addressinformant</td>
                                                <td width="79">DetailSuspect</td>
                                                <td width="66">Description</td>
                                                <td width="39">Date</td>
                                            </tr>
                                            <%
                                            while (rs.next()) {
                                                userid = rs.getString("userid");
                                               nameinformant1 = rs.getString("ninformant");
                                                addressinfmant = rs.getString("addressinf");
                                                details = rs.getString("detailssuspect");
                                                description = rs.getString("description");
												dat=rs.getString("datec");
                                                out.println("<tr>");
                                                out.println("<td>" + userid + "</td>");
                                                out.println("<td>" + nameinformant1 + "</td>");
                                                out.println("<td>" + addressinfmant + "</td>");
                                                out.println("<td>" + details + "</td>");
												 out.println("<td>" + description+ "</td>");
												 out.println("<td>" + dat + "</td>");
                                                out.println("<td><a href='takecrimeaction1.jsp?id=" +userid+"'>Action</a></td>");
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
                                        <p>&nbsp;</p>
                            </span></div></td>
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
                    
                </ul>
            </div>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2018 cfm. </p>
        </div>
    </body>
</html>
