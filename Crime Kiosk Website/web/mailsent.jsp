
<html>

<%@page import="java.io.*,java.sql.*;"  session="true"%>

<head>
<LINK REL=STYLESHEET TYPE="text/css" HREF="styles.css">
<title>Email support</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FF9900" text="#000000">
    <p>&nbsp;</p>
    <p>&nbsp;    </p>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#EEEEEE">
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr bgcolor="#FFFFFF">
          <td><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../blank/"></a></font></td>
          <td align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>CrimeFile Management  :<font color="#CC0000"> <font color="#FF0000">Email to support
            </font></font><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>contact</b></font></b></font></td>
          <td align="right"><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../resume/"></a></font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<hr noshade size="1">
<br>
<br>
<%
            try {
                String to1 = request.getParameter("to");
                String from1= request.getParameter("from");
                 String cc1 = request.getParameter("cc");
                  String bcc1 = request.getParameter("bcc");
                  
                  String subject1 = request.getParameter("subject");
                  String msg = request.getParameter("msg"); 
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "root");
                Statement st = con1.createStatement();
                //Statement st1 = con1.createStatement();
                st.executeUpdate("insert into mail values('" + to1+ "','" + from1 + "' ,'" + cc1 + "' ,'" + bcc1 + "','"+subject1+"','"+msg+"' )");
               // st1.executeUpdate("insert into register values('" + logname + "','" + fname + "','" + midname + "','" + question + "','" + answer + "','" + org + "','" + address + "','" + city + "','" + state + "'," + postcode + ",'" + country + "'," + hphone + "   ," + mphone + ",'" + fax + "','" + account + "','" + select4 + "','" + birthday + "','" + email + "')");
                out.println("Thank You , mail"  + from1 +  " has been succesfully send to crimefile@gmail.com ");



            } catch (Exception e) {
                out.println(e);
            }


%>
<br>
<br>
<hr noshade size="1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">crimefile</font><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">
      &copy; Copyright  2005-2009</font></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
