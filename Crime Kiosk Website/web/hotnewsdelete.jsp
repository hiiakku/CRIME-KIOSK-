
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
                    <li class="active"><a href="adminhome.html">Home </a></li>
                    <li><a href="latestnews.jsp">Usercomplaint </a></li>
                    <li><a href="feedback.jsp">Usercrime</a></li>
                    <li><a href="login.jsp">Userwant</a></li>
                </ul>
            </div>
        </div>
        <div id="content">
            
            <div id="colOne">
                <h2>Welcome to crimeStation!</h2>
               
                                    
                                    <span class="style4">        </span>

                                        <%
            try {
			String matter1=request.getParameter("matter1");
				out.println(matter1);

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
				
                st.executeUpdate(" delete from hotnews where matter='"+matter1+"'");
                response.sendRedirect("deletehotnews.jsp");
                                        %>          

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
                            <li><a href="mostwanted.jsp">Most Wanted </a></li>
                            <li><a href="missingperson.jsp">Missing Persons </a></li>
                            <li><a href="criminalregister.jsp">Criminal Register </a></li>
                            <li><a href="postmortum.jsp">View Complaint </a></li>
                            <li><a href="prisonerreg.jsp">Prisoners Register </a></li>
                            <li><a href="history.jsp">History</a></li>
                            <li><a href="fir.jsp">FIR</a></li>
                            <li><a href="chargesheet.jsp">Chargesheet</a></li>
                        </ul>
                    </li>
                    <li>
                        <h2>Account Settings </h2>
                        <ul>
                            <li><a href="adminchangepass.jsp">Change Password </a></li>
                        </ul>
                    </li>
                    
            </div>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2018 cfm. </p>
        </div>
    </body>
</html>
