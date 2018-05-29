
<%@page import="java.io.*,java.sql.*;"  session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <title>Crimefile Management</title>
        <link rel="stylesheet" href="style.css" type="text/css" charset="utf-8" />

        <style type="text/css">
            <!--
            .style1 {
                color: #F67637;
                font-family: "Monotype Corsiva";
                font-size: 34px;
            }
            .style2 {color: #000000}
            .style13 {color: #D6A55C}
            .style17 {color: #FF9999}
            -->
        </style>
    </head>

    <body>

        <div id="wrapper">
            <div id="body">
                <div id="head"><a href="file:///E|/crimefilemanagement/web/index.html" class="style2">index</a></div>
                <div id="topnav">
                <a href="contactus.jsp">Contact Us</a> | <a href="http://www.google.com">Google</a>		</div>
                <h1><img src="images/logo.jpg" width="401" height="271" alt="Logo" /></h1>
                <div id="nav"><a href="index.html"><img src="images/m1.gif" width="101" height="65" alt="M1" /></a>

                    <a href="map.html"><img src="images/m2.gif"    width="97" height="65" alt="M2" /></a>

                    <a href="FAQ.html"><img src="images/m3.gif" width="97" height="65" alt="M3" /></a>
                    <a href="searchhot.jsp"><img src="images/m4.gif" width="97" height="65" alt="M4" /></a>
                <a href="aboutus .html"><img src="images/m5.gif" width="94" height="65" alt="M5" /></a>		</div>
                <div id="left-box">
                    <div class="inner">
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="271" height="132">
                            <param name="movie" value="images/home_flash.swf" />
                            <param name="quality" value="high" />
                            <embed src="images/home_flash.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="271" height="132"></embed>
                        </object>
                        <p>&nbsp;</p>
                        <p>Already a registered member???</p>
                        <p class="date"><a href="login.jsp">Login Here </a></p><br /><br />
                        <p>Not a registered member???<br />  <a href="newregister.jsp">SignUp Here</a>.</p>
                    </div>
                </div>
                <div id="content">
                    <div id="content-bot">
                        <div class="inner">
                            <div id="hot">
                                <form id="form1" method="post" action="takeaction.jsp">
                                    <%
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
            Statement st = con1.createStatement();
            ResultSet rs = st.executeQuery("select matter from hotnews");
            String matter = "";
                                    %>

                                    <table width="398" height="86" border="0">

                                        <%
                                        while (rs.next()) {
                                            matter = rs.getString("matter");
                                            out.println("<tr>");
                                            out.println("<td>" + matter + "</td>");

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
                    </div>
                </div>
                <div id="tray">
                    <div class="redbox first">
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="217" height="279">
                            <param name="movie" value="images/mw.swf" />
                            <param name="quality" value="high" />
                            <embed src="images/mw.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="217" height="279"></embed>
                        </object>
                    </div>
                    <div class="redbox">
                        <h2 align="center" class="style1">Hot Reports </h2>
                        <div>
                            <div> <span class="style13">
                                    <marquee behavior="scroll" direction="up" scrolldelay="0.08">
                                        Six criminal drug addictes were found on Wednesday from a house near Capro building in US. Two of them were evacuated to a hospital
                                    </marquee >


                            </span>  				</div>
                        </div>
                        <br />
                    <a href="http://www.freewebsitetemplates.com"></a>			</div>
                    <div class="redbox last">
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="217" height="279">
                            <param name="movie" value="images/missing.swf" />
                            <param name="quality" value="high" />
                            <embed src="images/missing.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="217" height="279"></embed>
                        </object>
                    </div>
                    <div class="clear"></div>
                    <div class="divider"></div>
                </div>
                <div id="footer">
                    Copyright @ 2018
                </div>
            </div>
        </div>
    </body>
</html>

