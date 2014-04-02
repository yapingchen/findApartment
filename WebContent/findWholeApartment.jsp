<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Whole Apartment</title>
</head>
<body>

<form action="" method="post">
	
   <table width="99%" border="0" align="center">		
	<tr><td height=10px colspan="7" valign="top"><hr></td></tr>	
	
	<tr>
     <td width="13%"><div align="center">Rooms</div></td>
     <td width="15%"><div align="center">Rent</div></td>  
     <td width="14%"><div align="center">State</div></td>  
     <td width="14%"><div align="center">City</div></td>  
     <td width="17%"><div align="center">Street</div></td>  
     <td width="14%"><div align="center">Available Date</div></td>  
     <td width="13%"><div align="center">End Date</div></td> 
     
       
  </tr> 
  
  <tr><td height=10px colspan="7" valign="top"><hr></td></tr>
   <s:iterator value="wholeaptlist" status="stuts"> 
        <tr align="center"> 
         <td><s:property value="rooms" /></td> 
            <td><s:property value="rent" /></td> 
             <td><s:property value="state" /></td> 
              <td><s:property value="city" /></td> 
               <td><s:property value="street" /></td> 
                 <td><s:property value="available_date" /></td> 
                   <td><s:property value="end_date" /></td>      
              <td><s:url id="url" action="detailsOfPosting_seeDetails"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
            <s:a href="%{url}">Details</s:a></td>       
        </tr> 
    </s:iterator> 	
				</table> 
	<s:debug/>		
</form>	
</body>
</html>