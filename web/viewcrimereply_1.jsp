<%@page import="java.io.*,java.sql.*"  session="true"%>
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
			<li><a href="viewcrimereply.jsp">Crimestatus </a></li>
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
                <li>
                    <h2>More Facilities </h2>
                    <ul>
                        <li><a href="chat.jsp">Chat</a></li>
                        <li><a href="compose.jsp">Mail</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    <div id="colOne">

            <form name="form1" method="post" action="viewcrimereply.jsp" >
			<%    
    
    try
            {
                String a = null;
                String b = null;
                String c = null;
                                
                String c1 = (String) session.getAttribute("s1");
                out.println(c1);
                String c2 = (String) session.getAttribute("s2");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st = con1.createStatement();
                ResultSet rs = st.executeQuery("select user,crimeid,takeaction from takecrimeaction where user='" + c1 + "'");
                while (rs.next()) {
                    a = rs.getString("user");
                    b = rs.getString("crimeid");
                    c = rs.getString("takeaction");
                    
                    
                }


        %>   
              <table width="376" border="1">
                <tr>
                  <td width="163">Userid</td>
                  <td width="197"><label>
                    <input type="text" name="user"  value='<%=a%>'/>
                  </label></td>
                </tr>
                <tr>
                  <td>Crimeid</td>
                  <td><label>
                    <input type="text" name="crimeid" value='<%=b%>'/>
                  </label></td>
                </tr>
                <tr>
                  <td>Take Action </td>
                  <td><label>
                    <input type="text" name="takeaction" value='<%=c%>'/>
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
            <p>Copyright &copy; 2009 cfm</p>
        </div>
    </body>
</html>







