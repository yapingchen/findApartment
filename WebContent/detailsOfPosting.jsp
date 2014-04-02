<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:540px;
	height:396px;
	z-index:1;
	left: 12px;
	top: 107px;
}

#apDiv2 {
	position:absolute;
	width:220px;
	height:69px;
	z-index:2;
	left: 584px;
	top: 106px;
}
</style>
</head>

<body>
<div id="apDiv1">
  <table width="540" border="1">
   <tr>
      <td width="178">&nbsp;</td>
      <td width="101">&nbsp;</td>
      <td width="125">Created Time:</td>
      <td width="108"><s:property value="create_time" /></td>
    </tr>
    <tr>
      <td width="178">Available Rooms:</td>
      <td width="101"><s:property value="rooms" /></td>
      <td width="125">&nbsp;</td>
      <td width="108">&nbsp;</td>
    </tr>
    <tr>
      <td>Baths:</td>
      <td><s:property value="baths" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>sqft:</td>
      <td><s:property value="sqft" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Rent:</td>
      <td><s:property value="rent" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Laundry:</td>
      <td><s:property value="laundry" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Parking</td>
      <td><s:property value="parking" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Smoking</td>
      <td><s:property value="smoking" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Cats Allowed:</td>
      <td><s:property value="cats" /></td>
      <td>Dogs Allowed:</td>
      <td><s:property value="dogs" /></td>
    </tr>
    <tr>
      <td>Address:</td>
      <td>Street:</td>
      <td><s:property value="street" /></td>
      <td>&nbsp;</td>
    </tr>
    
     <tr>
      <td>&nbsp;</td>
      <td>State:</td>
      <td><s:property value="state" /></td>
      <td>&nbsp;</td>
    </tr>
    
     <tr>
      <td>&nbsp;</td>
      <td>City:</td>
      <td><s:property value="city" /></td>
      <td>&nbsp;</td>
    </tr>
    
    <tr>
      <td>Description:</td>
      <td><s:property value="description" /></td>
    </tr>
    <tr>
      <td>Contact:</td>
      <td>Email:</td>
      <td><s:property value="email_contact" /></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Phone:</td>
      <td><s:property value="phone_contact" /></td>
      <td><s:property value="phone_contact_type" /></td>
    </tr>
    <tr>
      <td>Available Date:</td>
      <td><s:property value="available_date" /></td>
      <td>End Date:</td>
      <td><s:property value="end_date" /></td>
    </tr>
    <tr>
      <td>Can continue after the lease?</td>
      <td><s:property value="continuelease" /></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    
  </table>
  <s:debug/>
</div>

<div id="apDiv2">
<img src="<s:property value="img1"/>"  style="width:100px;height:100px;"/>
<img src="<s:property value="img2"/>"  style="width:100px;height:100px;"/>
</div>


</body>
</html>
