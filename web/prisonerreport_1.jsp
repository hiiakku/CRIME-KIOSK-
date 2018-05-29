
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
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select * from prisonerregister");
                String prino = "", chargesheetno1 = "", Nickname = "", typeofcrime = "", family = "", Iden = "", height = "", weight = "", color = "";
            %>          
            
            <table width="501" height="49" border="1">
                <tr>
                    <td width="38" height="43" ><span class="style5">pri.no</span></td>
                    <td width="42"><span class="style5">C.H no</span></td>
                    <td width="61"><span class="style5">Nickname</span></td>
                    <td width="71"><span class="style5">typeofcrime</span></td>
                    <td width="40"><span class="style5">family</span></td>
                    <td width="60"><span class="style5">Iden.mark</span></td>
                    <td width="41"><span class="style5">height</span></td>
                    
                    <td width="45"><span class="style5">color</span></td>
                </tr>
                <%
                while (rs.next()) {
                    prino = rs.getString("prisonerno");
                    chargesheetno1 = rs.getString("chargesheetno");
                    Nickname = rs.getString("nickname");
                    typeofcrime = rs.getString("nickname");
                    family = rs.getString("typeofcrime");
                    Iden = rs.getString("identificationmarks");
                    height = rs.getString("height");
                    //weight = rs.getString("weight");
                    color = rs.getString("colour");
                    out.println("<tr>");
                    out.println("<td>" + prino + "</td>");
                    out.println("<td>" + chargesheetno1 + "</td>");
                    out.println("<td>" + Nickname + "</td>");
                    out.println("<td>" + typeofcrime + "</td>");
                    out.println("<td>" + family + "</td>");
                    out.println("<td>" + Iden + "</td>");
                    out.println("<td>" + height + "</td>");
                    //out.println("<td>" + weight + "</td>");
                    out.println("<td>" + color + "</td>");
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
                <li><a href="chat.jsp">Chat</a></li>
                <li><a href="compose.jsp">Mail</a></li>
            </ul>
        </li>
    </ul>
</div>
</div>
<div id="footer">
    <p>Copyright &copy; 2018 cfm. Designed by<em> <span class="style1"><a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></span></em></p>
</div>
</body>
</html>
