
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

<div>

            <table width="485" height="28" border="0">
                <tr>
                    <td width="86" height="22" ><div align="center"><span class="style6"><strong>Matter</strong></span></div></td>
                    <td width="222"><div align="center"><span class="style6"><strong>Time</strong></span></div></td>
                    <td width="222"><div align="center"><span class="style6"><strong>place</strong></span></div></td>
                    

                </tr>
                <%
        try {
            String matter = request.getParameter("matter");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
            Statement st = con1.createStatement();
            Statement st1 = con1.createStatement();
            st1.executeUpdate("Delete from hotnews where matter='"+matter+"'");

            ResultSet rs = st.executeQuery("select matter,time,place from hotnews");
            String matter1 = "", time1 = "", place1 = "";

            while (rs.next()) {
                matter1 = rs.getString("matter");
                time1 = rs.getString("time");
                place1 = rs.getString("place");
                 out.println("<tr>");
                out.println("<td>" + matter1 + "</td>");
                out.println("<td>" + time1 + "</td>");
                out.println("<td>" + place1 + "</td>");
                               
                out.println("<td><a href='deletehotnews.jsp?matter=" + matter1 + "'>Delete</a></td>");

                out.println("<tr>");
            }
                %>


                <%

        } catch (Exception e) {
            out.println(e);
        }
                %>
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
            <p>Copyright &copy; 2009 cfm.</p>
        </div>
    </body>
</html>
