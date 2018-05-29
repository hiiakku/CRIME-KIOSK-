<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Crimefile Management</title>
<script language="javascript">
function doValid()
{
 var compn=document.getElementById("complaint");
 if(compn.value == "")
 {
  alert("Enter the complaint no:");
  compn.focus();
  return false;
  }
  }
  </script>
</head>

<body>

<form name="form1" method="get">
  <div align="center">
    <table width="344" border="0">
      <tr>
        <th colspan="2" scope="col">COMPLAINT STATUS </th>
      </tr>
      <tr>
        <td width="162" height="41" scope="col"><div align="right">Enter the complaint no: </div></td>
      <th width="166" scope="col">
        
          <div align="justify">
            <input name="complaint" type="text" id="complaint" />
          </div></th>
    </tr>
      <tr>
        <th scope="row"><div align="right"></div></th>
      <td>&nbsp;</td>
    </tr>
      <tr>
        <th colspan="2" scope="row">
          
          <div align="center">
            <input type="submit" name="Submit" value="View Status" onclick="return doValid()" />
          </div></th>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
