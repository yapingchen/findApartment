<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Enter details</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="css/ustified-nav.css" rel="stylesheet" />
<link href="css/docs.min.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"/>
<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 540px;
	height: 396px;
	z-index: 1;
	left: 12px;
	top: 107px;
}

#apDiv2 {
	position: absolute;
	width: 220px;
	height: 69px;
	z-index: 2;
	left: 584px;
	top: 106px;
}

#apDiv3 {
	position: absolute;
	width: 401px;
	height: 331px;
	z-index: 3;
	left: 1000px;
	top: 104px;
}
</style>

<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4x1V6FmVrJ8LxE7oqf_JIZQIJFvvdaQ4&sensor=true"></script>
<script>


var geocoder;
var map;


window.onload=function(){
    var UL1=document.getElementById("right1");
    var UL2=document.getElementById("right2");
    var email="${sessionScope.email}";

    if(email==""){
    	    UL1.style.display="none";
    	    UL2.style.display="block";
    }else{
    	UL1.style.display="block";
	    UL2.style.display="none";
    }
   
    };
    
    
function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(-34.397, 150.644);
  var mapOptions = {
    zoom: 15,
    center:latlng
  }
  map = new google.maps.Map(document.getElementById('apDiv3'), mapOptions);
  codeAddress();
}

function codeAddress() {
	var address="${sessionScope.mapaddress}";
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
 
google.maps.event.addDomListener(window, 'load', initialize);

</script>

</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<!-- We use the fluid option here to avoid overriding the fixed width of a normal container within the narrow content columns. -->
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-6">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Apartment</a>
		</div>




		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-6">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="aboutUs.jsp"><i class="fa fa-globe"></i>About</a></li>
				<li><a href="contactUs.jsp"><i class="fa fa-phone-square"></i>Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" id="right1">
				<li id="fat-menu" class="dropdown"><a href="#" id="drop3"
					role="button" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>${sessionScope.email}
						<b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="logout">Log Out</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="myAccountCenter.jsp">Account Center</a></li>
					</ul>
					</li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right" id="right2">
						<li ><a href="login.jsp">Sign In | Sign Up</a> 
					</li>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>

	<div id="apDiv1">
		<table class="table table-striped table-bordered table-condensed"
			width="540" border="1">
			<tr>
				<td width="178" class="btn-lg">&nbsp;</td>
				<td width="101" class="btn-lg">&nbsp;</td>
				<td width="125" class="btn-lg">Created Time:</td>
				<td width="108" class="input-group-addon text-success"><s:property value="create_time" /></td>
			</tr>
			<tr>
				<td width="178" class="btn-lg">Available Rooms:</td>
				<td width="101" class="input-group-addon text-success"><s:property value="rooms" /></td>
				<td width="125" class="btn-lg">&nbsp;</td>
				<td width="108" class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Baths:</td>
				<td class="input-group-addon text-success"><s:property value="baths" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">sqft:</td>
				<td class="input-group-addon text-success"><s:property value="sqft" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Rent:</td>
				<td class="input-group-addon text-success"><s:property value="rent" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Laundry:</td>
				<td class="input-group-addon text-success"><s:property value="laundry" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Parking</td>
				<td class="input-group-addon text-success"><s:property value="parking" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Smoking</td>
				<td class="input-group-addon text-success"><s:property value="smoking" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">Cats Allowed:</td>
				<td class="input-group-addon text-success"><s:property value="cats" /></td>
				<td class="btn-lg">Dogs Allowed:</td>
				<td class="input-group-addon text-success"><s:property value="dogs" /></td>
			</tr>
			<tr>
				<td class="btn-lg">Address:</td>
				<td class="btn-lg">Street:</td>
				<td class="input-group-addon text-success"><s:property value="street" /></td>
				<td class="btn-lg">&nbsp; </td>
			</tr>

               <tr>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">APT:</td>
				<td class="input-group-addon text-success"><s:property value="apt" /></td>
				<td class="btn-lg">&nbsp;</td>
			</tr>

			<tr>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">State:</td>
				<td class="input-group-addon text-success"><s:property value="state" /></td>
				<td class="btn-lg">&nbsp;</td>
			</tr>

			<tr>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">City:</td>
				<td class="input-group-addon text-success"><s:property value="city" /></td>
				<td class="btn-lg">&nbsp;</td>
			</tr>

			<tr>
				<td class="btn-lg">Description:</td>
				<td class="input-group-addon text-success"><s:property value="description" /></td>
				<td class="btn-lg"></td>
				<td class="btn-lg"></td>
			</tr>
			<tr>
				<td class="btn-lg">Contact:</td>
				<td class="btn-lg">Email:</td>
				<td class="input-group-addon text-success"><s:property value="email_contact" /></td>
				<td class="btn-lg">&nbsp;</td>
			</tr>
			<tr>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">Phone:</td>
				<td class="input-group-addon text-success"><s:property value="phone_contact" /></td>
				<td class="input-group-addon text-success"><s:property value="phone_contact_type" /></td>
			</tr>
			<tr>
				<td class="btn-lg">Available Date:</td>
				<td class="input-group-addon text-success"><s:property value="available_date" /></td>
				<td class="btn-lg">End Date:</td>
				<td class="input-group-addon text-success"><s:property value="end_date" /></td>
			</tr>
			<tr>
				<td class="btn-lg">Can continue after the lease?</td>
				<td class="input-group-addon text-success"><s:property value="continuelease" /></td>
				<td class="btn-lg">&nbsp;</td>
				<td class="btn-lg">&nbsp;</td>
			</tr>

		</table>
	
	</div>

	<div id="apDiv2">
		<p><img src="<s:property value="img1"/>" style="width: 300px; height: 300px;" /> 
		<p><img src="<s:property value="img2"/>" style="width: 300px; height: 300px;" />
	</div>

	<div id="apDiv3"></div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/docs.min.js"></script>
</body>
</html>
