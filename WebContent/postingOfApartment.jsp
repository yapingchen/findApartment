<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posting</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="css/bootstrap-theme.css" rel="stylesheet" />
<link href="css/bootstrap-theme.min.css" rel="stylesheet" />
<link href="css/ustified-nav.css" rel="stylesheet" />
<link href="css/docs.min.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">

 	

 
<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 797px;
	height: 513px;
	z-index: 1;
	left: 52px;
	top: 22px;
}

#required {
	color: #F00;
}
</style>

   <%--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/docs.min.js"></script> --%>
	
<script>

window.onload = function() {
	var UL1 = document.getElementById("right1");
	var UL2 = document.getElementById("right2");
	var email = "${sessionScope.email}";

	if (email == "") {
		UL1.style.display = "none";
		UL2.style.display = "block";
	} else {
		UL1.style.display = "block";
		UL2.style.display = "none";
	}

};

function postingapt() {
	window.location.href = "postingOfApartment.jsp";
}

function wholeapt() {
	window.location.href = "listWholeApartment_list.action";
}
function shareapt() {
	window.location.href = "listSharedApartment_listShared.action";
}
function subletapt() {
	window.location.href = "listSubleaseApartment_listSublease.action";
}

	/* choose date */

	var stateData = {
		"state" : [ "----","PA", "CA","NY","IL","FL","TX","AZ","OH","IN","CO" ],
		"----" : [ "----" ],
		"PA" : [ "Pittsburgh", "Philadelphia","Allentown","Altoona" ],
		"CA" : [ "San Fransicso", "LosAngeles","San Diego", "San Jose" ],
		"NY" : ["New York City","Buffalo","Albany"],
		"IL" : ["Chicago","Springfield"],
		"FL" : ["Tampa","Miami","Melbourne"],
		"TX" : ["Dallas","Austin","Arlington"],
		"AZ" : ["Phoenix","Tucson"],
		"OH" : ["Cincinnati","Columbus"],
		"IN" : ["Indianapolis"],
		"CO" : ["Denver","Boulder"]
	};
	function choosecity() {
		var selectedState = document.getElementById("state");
		var cities = document.getElementById("city");
		cities.innerHTML = "";
		var state = selectedState.value;

		var len = stateData[state].length;
		var cityData = stateData[state];

		for (var i = 0, len = cityData.length; i < len; ++i) {
			var op = document.createElement("option");
			op.value = cityData[i];
			op.innerHTML = cityData[i];
			cities.appendChild(op);
		}
	}

	/* choose available date */
	$(function() {
		$("#datepicker").datepicker({
			minDate : new Date()
		});

	});

	/* choose end date */
	$(function() {
		$("#datepicker2").datepicker({
			minDate : new Date()
		});
	});

	/* control email span */
	function showEmail() {
		var emailSpan = document.getElementById("emailSpan");
		var emailCheckBox = document.getElementById("emailcontact");
		if (emailCheckBox.checked) {
			var op = "<input name='inputemail'></input>";
			emailSpan.innerHTML = op;
		} else {
			emailSpan.innerHTML = "";
		}
	}

	/* control phone span */
	function showPhone() {

		var phoneSpan = document.getElementById("phoneSpan");
		var phoneContactTypeSpan = document
				.getElementById("phoneContactTypeSpan");
		var phoneCheckBox = document.getElementById("phonecontact");
		if (phoneCheckBox.checked) {
			var op = "<input name='inputphone' placeholder='eg.2403572432'></input>";
			var op2 = "<label><input type='radio' name='phone_contact_type' value='only call'>Call Only</label>"
					+ " <label><input type='radio' name='phone_contact_type' value='only text'>Text Only"
					+ "</label><label><input type='radio' name='phone_contact_type' value='call and text are both ok'>Both</label>";
			phoneSpan.innerHTML = op;
			phoneContactTypeSpan.innerHTML = op2;
		} else {
			phoneSpan.innerHTML = "";
			phoneContactTypeSpan.innerHTML = "";
		}
	}
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
				<li><a href="contactUs.jsp"><i class="fa fa-phone-square"></i>Contact
						Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" id="right1">
					<li id="fat-menu" class="dropdown"><a href="#" id="drop3"
						role="button" class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user"></i>${sessionScope.email} <b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="logout">Log Out</a></li>
							<li role="presentation"><a role="menuitem" tabindex="-1"
								href="myAccountCenter.jsp">Account Center</a></li>
						</ul></li>
				</ul>

				<ul class="nav navbar-nav navbar-right" id="right2">
					<li><a href="login.jsp">Sign In | Sign Up</a></li>
				</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<div id="apDiv1">
		<s:form action="FileUploadAction" method="post" theme="simple"
			enctype="multipart/form-data">
			<div id="apDiv1">
				<h2>Enter the details :</h2>
				<table class="table table-striped table-bordered" width="1001" border="1">


					<tr>
						<td width="144" class="btn-lg">Type of Posting :</td>
						<td width="199" class="btn-lg"><label><input type="radio"
								name="type_of_posting" value="wholeapartment" checked>Whole
								Apartment</label></td>
						<td width="226" class="btn-lg"><label><input type="radio"
								name="type_of_posting" value="sharedapartment">Find
								roommates</label></td>
						<td width="170" class="btn-lg"><label><input type="radio"
								name="type_of_posting" value="sublease">Sublease
								Apartment</label></td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>


					<tr>
						<td width="144" class="btn-lg">Available rooms:<span id="required">*</span></td>
						<td width="199" class="btn-lg"><select name="rooms">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
						</select></td>
						<td width="226" class="btn-lg">&nbsp;</td>
						<td width="170" class="btn-lg">&nbsp;</td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Baths:<span id="required">*</span></td>
						<td class="btn-lg"><select name="baths">
								<option value="0">0</option>
								<option value="0.5">0.5</option>
								<option value="1">1</option>
								<option value="1.5">1.5</option>
								<option value="2">2</option>
								<option value="2.5">2.5</option>
								<option value="3">3</option>
						</select></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">sqft:</td>
						<td class="btn-lg"><input name="sqft" placeholder="eg.1400"></input></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Rent:<span id="required">*</span></td>
						<td class="btn-lg">$<input name="rent" placeholder="eg.1000 in total"></input></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Laundry:<span id="required">*</span></td>
						<td class="btn-lg"><select name="laundry">
								<option value="w/d in unit">w/d in unit</option>
								<option value="laundry in bldg">laundry in bldg</option>
								<option value="laundry on site">laundry on site</option>
								<option value="w/d hookups">w/d hookups</option>
						</select></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Parking:<span id="required">*</span></td>
						<td class="btn-lg"><select name="parking">
								<option value="carport">carport</option>
								<option value="attached garage">attached garage</option>
								<option value="detached garage">detached garage</option>
								<option value="off-street parking">off-street parking</option>
								<option value="street parking">street parking</option>
								<option value="valet parking">valet parking</option>
						</select></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Pets:</td>
						<td class="btn-lg"><label><input type="checkbox" name="pets_cat"
								value="ok">cats ok</label> <label><input type="checkbox"
								name="pets_dog" value="ok">dogs ok</label></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Smoking:</td>
						<td class="btn-lg"><label><input type="radio" name="smoking"
								value="Yes">Yes</label> <label><input type="radio"
								name="smoking" value="No">No</label></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">Address:</td>
						<td class="btn-lg"><label>Street:<span id="required">*</span><input
								name="street" placeholder="4717 ellsworth ave"></input></label></td>
						<td class="btn-lg"><label>Apt No.: <input name="apt"
								placeholder="eg.102"></input></label></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg"><label>State:<span id="required">*</span> 
						<select name="state" id="state" style="width: 130px" onchange="choosecity()">
									<option value="---"></option>
									<option value="PA">PA</option>
									<option value="CA">CA</option>
									<option value="NY">NY</option>
									<option value="IL">IL</option>
									<option value="FL">FL</option>
									<option value="TX">TX</option>
									<option value="AZ">AZ</option>
									<option value="OH">OH</option>
									<option value="IN">IN</option>
									<option value="CO">CO</option>							
									</select>

						</label></td>
						<td class="btn-lg"><label>City:<span id="required">*</span> <select
								name="city" id="city" style="width: 150px">
							</select>

						</label></td>
						<td class="btn-lg">&nbsp;</td>
						<td class="btn-lg">&nbsp;</td>
					</tr>
					<tr>
						<td class="btn-lg">More descriptions:</td>
						<td colspan="4" class="btn-lg"><textarea name="description" cols="110" rows="3"
								placeholder="you can write more descriptions about your apartment/house"></textarea></td>
					</tr>



					<tr>
						<td width="144" class="btn-lg">Contact:</td>
						<td width="199" class="btn-lg"><label><input type="checkbox"
								id="emailcontact" name="emailcontact" value="ok"
								onClick="showEmail()">email</label></td>
						<td width="226" class="btn-lg"><span id="emailSpan"></span></td>
						<td width="170" class="btn-lg">&nbsp;</td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>


					<tr>
						<td width="144" class="btn-lg"></td>
						<td width="199" class="btn-lg"><label><input type="checkbox"
								id="phonecontact" name="phonecontact" value="ok"
								onClick="showPhone()">phone</label></td>
						<td width="226" class="btn-lg"><span id="phoneSpan"></span></td>
						<td width="170" class="btn-lg"><span id="phoneContactTypeSpan"></span></td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>



					<tr>
						<td width="144" class="btn-lg">Available Date:<span id="required">*</span></td>
						<td width="199" class="btn-lg"><input type="text" id="datepicker"
							name="availabledate"></td>
						<td width="226" class="btn-lg">End Date:<span id="required">*</span></td>
						<td width="170" class="btn-lg"><input type="text" id="datepicker2"
							name="enddate"></td>
						<td width="228" class="btn-lg"><label><input type="checkbox"
								name="continuelease" value="yes">Could continue after
								lease?</label></td>
					</tr>


					<tr>
						<td width="144" class="btn-lg">Upload Pictures:</td>
						<td width="199" class="btn-lg"><s:file name="toBeUploaded" label="File1" /></td>
						<td width="226" class="btn-lg">&nbsp;</td>
						<td width="170" class="btn-lg">&nbsp;</td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>

					<tr>
						<td width="144" class="btn-lg"></td>
						<td width="199" class="btn-lg"><s:file name="toBeUploaded" label="File2" /></td>
						<td width="226" class="btn-lg">&nbsp;</td>
						<td width="170" class="btn-lg">&nbsp;</td>
						<td width="228" class="btn-lg">&nbsp;</td>
					</tr>

					<tr>
					<td></td>
						<td class="btn-lg" class="active"><s:submit value="Submit" /><span class="sr-only">(current)</span></a></td>
						<td class="btn-lg" class="active"><s:reset value="Reset" ></s:reset><span class="sr-only">(current)</span></a></td>
					<td >&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				
				<div>
					<s:fielderror />
				</div>
				<s:debug />
			</div>
		</s:form>
	</div>

	<!-- Placed at the end of the document so the pages load faster -->
<%-- 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/docs.min.js"></script>
 --%>
</body>
</html>