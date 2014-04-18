<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
   
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My Account Center</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script>
    window.onload =function() { 
    //	sign();      		    
    	 var div1=document.getElementById("div1");
	     var div2=document.getElementById("div2");
	     var div3=document.getElementById("div3");
	     var div4=document.getElementById("div4");
	     var div5=document.getElementById("div5");
	     var div6=document.getElementById("div6");
	     var welcomediv=document.getElementById("welcomediv"); 
	     var oLi1=document.getElementById("li1");
	     var oLi2=document.getElementById("li2");
	     var oLi3=document.getElementById("li3");
	     var oLi4=document.getElementById("li4");
	     var oLi5=document.getElementById("li5");
	     var oLi6=document.getElementById("li6");
	     
	    
    	 var   type= '${sessionScope.type}';
    	 
    	    div2.style.display="none";
	    	div3.style.display="none";
	    	div4.style.display="none";
	    	div5.style.display="none";
	    	div6.style.display="none";
	    	welcomediv.style.display="none";
	    	div1.style.display="none"; 
	    	
	    	oLi1.className=null;
	    	oLi2.className=null;
	    	oLi3.className=null;
	    	oLi4.className=null;
	    	oLi5.className=null;
	    	oLi6.className=null;
    	
    	 if(type=="1"){
    		 div1.style.display="block";    
    		 var oLi=document.getElementById('li1');
    		 oLi1.className='active';
    		 
    	 }
    	 else if(type=="2"){
    		 div2.style.display="block";   
    		 oLi2.className='active';
    	 }
    	 else if(type=="3"){
    		 div3.style.display="block";   
    		 oLi3.className='active';
    	 }
    	 else if(type=="4"){
    		 div4.style.display="block";   
    		 oLi4.className='active';
    	 }
    	 else if(type=="5"){
    		 div5.style.display="block";   
    		 oLi5.className='active';
    	 }
    	 else if(type=="6"){
    		 div6.style.display="block";   
    		 oLi6.className='active';
    	 }else {
    		 welcomediv.style.display="block";   
    	 }
    	};
    
    function wholeapt(){
    window.location.href="findMyPosting_whole";
    }
   
    function shareapt(){
    	window.location.href="findMyPosting_share";
    }
    
    function subletapt(){
    	window.location.href="findMyPosting_sublet";
    	
    }
    
    function savedwholeapt(){
   	   	window.location.href="findMySavedPosting_savedwholeapt";
    	
    }
    
    function savedshareapt(){
   	   	window.location.href="findMySavedPosting_savedsharedapt";	
    }
    
    function savedsubletapt(){
   	   	window.location.href="findMySavedPosting_savedsubletapt";	
    }
    
    /* function sign(){
    	 var UL1=document.getElementById("right1");
		    var UL2=document.getElementById("right2");
		    var email="${sessionScope.email}";
		    UL1.style.display="none";
    	    UL2.style.display="none";

		    if(email==""){
		    	    UL2.style.display="block";
		    }else{
		    	UL1.style.display="block";
		    }
    } */
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
			<a class="navbar-brand" href="index.jsp">Apartment</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-6">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="aboutUs.jsp"><i class="fa fa-globe"></i>About</a></li>
				<li><a href="contactUs.jsp"><i class="fa fa-phone-square"></i>Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right" id="right1" display="block">
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
			
	
		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">Manage My Postings
            <li id='li1'><a href="javascript://" onclick="wholeapt()">Whole Apt</a></li>
            <li id='li2'><a href="javascript://" onclick="shareapt()">Share Apt</a></li>
            <li id='li3'><a href="javascript://" onclick="subletapt()">Sublet Apt</a></li>
          </ul>
          <ul class="nav nav-sidebar">Manage My Savings
            <li id='li4'><a href="javascript://" onclick="savedwholeapt()">Saved Whole Apt</a></li>
            <li id='li5'><a href="javascript://" onclick="savedshareapt()">Saved Share Apt</a></li>
            <li id='li6'><a href="javascript://" onclick="savedsubletapt()">Saved Sublet Apt</a></li>
             
          </ul>
        </div>
        
        
        <!-- begin:welcome div-->     
 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="welcomediv" style="display:none">
  <p>welcome</p>
  <s:debug/>
 </div> 
    <!-- end:welcome div -->    
   
   <!-- begin:div1 for my posting of whole apartment -->     
 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div1" style="display:none">
   <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td ><div align="center">Available Rooms</div></td>
     <td ><div align="center">Rent</div></td>  
     <td ><div align="center">State</div></td>  
     <td ><div align="center">City</div></td>  
     <td ><div align="center">Street</div></td>  
     <td ><div align="center">Available Date</div></td>  
     <td ><div align="center">End Date</div></td>   
       <td ><div align="center">Details</div></td>  
     <td ><div align="center">Delete</div></td>  
     <td ><div align="center">Update</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="mypostingofwholeaptlist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete posting"><img/></s:a></td> 
             
             
             <td><s:url id="url3" action="detailsOfPosting_updatePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url3}"><img src="img/update.jpg" width="25" height="25" title="update posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
     </form>
      <s:debug/>
 </div> 
    <!-- end:div1 for my posting of whole apartment -->    
        
    <!-- begin:div2 for my posting of shared apartment -->    
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div2" style="display:none">
 <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td width="12%"><div align="center">Available Rooms</div></td>
     <td width="8%"><div align="center">Rent</div></td>  
     <td width="8%"><div align="center">State</div></td>  
     <td width="10%"><div align="center">City</div></td>  
     <td width="23%"><div align="center">Street</div></td>  
     <td width="12%"><div align="center">Available Date</div></td>  
     <td width="12%"><div align="center">End Date</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="mypostingofwholeaptlist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete posting"><img/></s:a></td> 
             
              <td><s:url id="url3" action="detailsOfPosting_updatePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url3}"><img src="img/update.jpg" width="25" height="25" title="update posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
     </form>  
      <s:debug/>    
   </div>
<!-- end:div2 for my posting of shared apartment -->    

        
        
 <!-- begin:div3 for my posting of sublet apartment -->    
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div3" style="display:none">
 <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td width="12%"><div align="center">Available Rooms</div></td>
     <td width="8%"><div align="center">Rent</div></td>  
     <td width="8%"><div align="center">State</div></td>  
     <td width="10%"><div align="center">City</div></td>  
     <td width="23%"><div align="center">Street</div></td>  
     <td width="12%"><div align="center">Available Date</div></td>  
     <td width="12%"><div align="center">End Date</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="mypostingofwholeaptlist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete posting"><img/></s:a></td> 
             
              <td><s:url id="url3" action="detailsOfPosting_updatePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url3}"><img src="img/update.jpg" width="25" height="25" title="update posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
     </form>     
      
   </div>
<!-- end:div3 for my posting of sublet apartment -->   


 <!-- begin:div4 for my saved posting of whole apartment -->    
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div4" style="display:none">
 <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td width="12%"><div align="center">Available Rooms</div></td>
     <td width="8%"><div align="center">Rent</div></td>  
     <td width="8%"><div align="center">State</div></td>  
     <td width="10%"><div align="center">City</div></td>  
     <td width="23%"><div align="center">Street</div></td>  
     <td width="12%"><div align="center">Available Date</div></td>  
     <td width="12%"><div align="center">End Date</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="savedpostinglist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletesavedPosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete saved posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
     </form>  
      <s:debug/>    
   </div>
<!-- end:div4 for my saved posting of whole apartment -->   



<!-- begin:div5 for my saved posting of shared apartment -->     
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div5" style="display:none">
 <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td width="12%"><div align="center">Available Rooms</div></td>
     <td width="8%"><div align="center">Rent</div></td>  
     <td width="8%"><div align="center">State</div></td>  
     <td width="10%"><div align="center">City</div></td>  
     <td width="23%"><div align="center">Street</div></td>  
     <td width="12%"><div align="center">Available Date</div></td>  
     <td width="12%"><div align="center">End Date</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="savedpostinglist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletesavedPosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete saved posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
                 
            </tbody>	
    	</table> 
     </form>  
      <s:debug/>    
   </div>
<!-- end:div5 for my saved posting of shared apartment -->   


<!-- begin:div6 for my saved posting of sublet apartment -->     
  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="div6" style="display:none">
 <form action="" method="post">	
   <table class="table table-striped">		
	 <thead>
	<tr>
     <td width="12%"><div align="center">Available Rooms</div></td>
     <td width="8%"><div align="center">Rent</div></td>  
     <td width="8%"><div align="center">State</div></td>  
     <td width="10%"><div align="center">City</div></td>  
     <td width="23%"><div align="center">Street</div></td>  
     <td width="12%"><div align="center">Available Date</div></td>  
     <td width="12%"><div align="center">End Date</div></td>   
  </tr> 
   </thead>
   
  <tbody>
     <s:iterator value="savedpostinglist" status="stuts"> 
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td> 
             
              <td><s:url id="url2" action="detailsOfPosting_deletesavedPosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
             <s:a href="%{url2}"><img src="img/delete.jpg" width="25" height="25" title="delete saved posting"><img/></s:a></td> 
             
                </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
     </form>  
      <s:debug/>    
   </div>
<!-- end:div6 for my saved posting of sublet apartment -->   
 
      </div>
      
    </div>
    
   

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/docs.min.js"></script>
  </body>
</html>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="http://cdn.sendori.com/js/inlinekeywords.js"></script>
<script type="text/javascript" src="http://cdn.sendori.com/js/pconfig.js"></script>
<script type="text/javascript">
    var sndpID = '13102';
    var sndgID = '{1CF41509-980C-475F-826A-B3C456DDE94C}';
    var CorrectedDomain;
    var OriginalDomain;
	var ipAddress;
	var merchantId;
	var coupon;
	var couponCap;
	var couponCheckoutCap = 1;
	
	var couponCookieExpire = 4;
	var searchAssistDisplay = 0;
	var inlineText = 1; 
	var couponCodeUI = 1;
	var couponSliderHeading = "Deal for you!";
	var moreCouponsPopupClose = 0;
	var applyCodeMerchantIds = [5161,818325,233046,289238,5506,5307];

	var tvDomain = "srv.searchassist.com";
	var tvPid = "617693";
	var tvServiceDomain = "http://TVIntegrationLB-1934379260.us-west-1.elb.amazonaws.com";
	var TVServicesID;
	var TVServiceFlag;
	var isCheckout;
    var cVersion;
    var bVersion;
    var gGnericTitle = "Click Here to see all the Groupon Deals in your Local Area";
    var gGenericDescription = "Restaurants, Shows, Events, Local & National Businesses";
    var gGenericButtonText = "Get Groupon";
    var gGenericDomains = ["www.aol.com","www.target.com","www.kohls.com","www.macys.com","www.homedepot.com","www.kmart.com","www.lowes.com","www.walgreens.com","www.forever21.com","www.southwest.com","www.coupons.com","www.priceline.com","www.oldnavy.com","www.autotrader.com","www.aa.com","www.staples.com","www.hotels.com","www.united.com","www.proflowers.com","www.starbucks.com","www.express.com","www.travelocity.com","www.lumosity.com"];
    var gToken = "US_AFF_0_200944_201919_0";
    var gGenericCap = 1;
    var gMerchantCap = 2;
    var gGenericCookieExpire = 24;

	function createCookie(e,t,n){if(n){var r=new Date;r.setTime(r.getTime()+n*60*60*1e3);var i="; expires="+r.toGMTString()}else var i="";document.cookie=e+"="+t+i+"; path=/"}function readCookie(e){var t=e+"=";var n=document.cookie.split(";");for(var r=0;r<n.length;r++){var i=n[r];while(i.charAt(0)==" ")i=i.substring(1,i.length);if(i.indexOf(t)==0)return i.substring(t.length,i.length)}return null}function eraseCookie(e){createCookie(e,"",-1)}function sendoriInline2(){function t(e,t,r){if((e==-1||!n(r.charAt(e)))&&(t>=r.length||!n(r.charAt(t)))){return true}return false}function n(e){var t=e.charCodeAt(0);if(t>47&&t<58||t>64&&t<91||t>96&&t<123){return true}return false}var e=window.location!=window.parent.location?true:false;if(e){return false}var r=$jOld.noConflict();var i="";r.each(r.browser,function(e,t){i+=e+":"+t});var s=i.split(":");var o=s[0]+" "+s[2];r(document).ready(function(){if(document.domain.indexOf("www")>-1){var e=document.domain}else{var e="www."+document.domain}if(r.inArray(e,gGenericDomains)>-1&&grouponDisplay==1){var t=1}if(grouponDisplay==1&&(coupon==undefined||coupon=="")){var n=Math.floor(Math.random()*50+1);if(t==1){var i=1;var s=n;var u=new Date;var a="GENERIC_GROUPON_COUPON";u.setTime(expirationDate.getTime()+gGenericCookieExpire*60*60*1e3);if(r.cookie("groupon_generic_coupon")==undefined){if(parseInt(gGenericCap)>0){r.cookie("groupon_generic_coupon",1,{expires:u,path:"/",domain:cookieDomain});var f=1}}else{couponCount=parseInt(r.cookie("groupon_generic_coupon"));if(couponCount<parseInt(gGenericCap)){newCount=couponCount;++newCount;r.removeCookie("groupon_generic_coupon");r.cookie("groupon_generic_coupon",newCount,{expires:u,path:"/",domain:cookieDomain});var f=1}else{var f=0}}}else{var i=100;var s=0;var a="MERCHANT_GROUPON_COUPON";var l=new Date;l.setTime(expirationDate.getTime()+couponCookieExpire*60*60*1e3);if(r.cookie("groupon_merchant_coupon")==undefined){if(parseInt(gMerchantCap)>0){r.cookie("groupon_merchant_coupon",1,{expires:l,path:"/",domain:cookieDomain});var f=1}}else{couponCount=parseInt(r.cookie("groupon_merchant_coupon"));if(couponCount<parseInt(gMerchantCap)){newCount=couponCount;++newCount;r.removeCookie("groupon_merchant_coupon");r.cookie("groupon_merchant_coupon",newCount,{expires:l,path:"/",domain:cookieDomain});var f=1}else{var f=0}}}if(f&&f==1){r.ajax({url:"https://partner-api.groupon.com/deals.json?tsToken="+gToken+"&offset="+s+"&limit="+i,type:"GET",dataType:"jsonp",success:function(e){if(t&&t==1){var n=1;var i=e.deals[0];var s="http://cdn.sendori.com/test/coupons/img/grouponText.jpg";var u=i.uuid+";"+gGnericTitle+";"+gGenericDescription+";"+s+";"+i.dealUrl+";"+i.merchant.websiteUrl+";"+i.merchant.id+";";var f="coupon_container_groupon";var l="coupon_body_groupon";var c="";var h="Savings for you!"}else{var p=document.domain.replace("www.","").toLowerCase();for(D=0;D<e.deals.length;D++){var d=e.deals[D];merchantUrl=d.merchant.websiteUrl;if(merchantUrl.indexOf(p)>=0){var n=1;var v=1;var u=d.uuid+";"+d.title+";"+d.pitchHtml.replace(/<\/?[^>]+>/gi,"")+";"+d.mediumImageUrl+";"+d.dealUrl+";"+merchantUrl+";"+d.merchant.id+";";var f="coupon_container_grouponmerchant";var l="coupon_body_grouponmerchant";var c="<div id='grouponIcon' style='background-image:url("+d.mediumImageUrl+")'></div>";var h=d.merchant.name}}}couponRespArrayGroupon=u.split(";");couponIDGroupon=couponRespArrayGroupon[0];couponTitleGroupon=couponRespArrayGroupon[1].substr(0,80);couponDescriptionGroupon=couponRespArrayGroupon[2].substr(0,190);couponImageGroupon=couponRespArrayGroupon[3];couponUrlGroupon=couponRespArrayGroupon[4];couponMerchantGroupon=couponRespArrayGroupon[5];couponMerchantIDGroupon=couponRespArrayGroupon[6];buttonId="noBtn";moreBtnText="Get Groupon";applyClass=" ";moreButtonClass="buttonSavings";coupondivInsert="<div id="+f+" class='noFALinks' style='display: none;'><div id='coupon_header'><div style='POSITION: absolute; MARGIN-TOP: 4px; MARGIN-left: 5px; RIGHT: auto'><DIV id='snd_logo'></div></div><div id='coupon_message'>"+h+"</div><div style='POSITION: absolute; MARGIN-TOP: 4px; RIGHT: 0px; MARGIN-RIGHT: 5px; LEFT: auto'><div id='icon_close'></div></div></div><div id="+l+"><div id='couponIcon' style='background-image: url(http://cdn.sendori.com/test/coupons/img/grouponText.jpg);'></div>"+c+"<div style='POSITION: absolute; MARGIN-LEFT: 135px; padding-top: 3px'><div id='coupon_title'>"+couponTitleGroupon+"</div><div id='coupon_description'>"+couponDescriptionGroupon+"</div></div><div id='"+buttonId+"'></div><div class='savingsBtnSection'><button type='button' class='"+moreButtonClass+" "+applyClass+"'>"+moreBtnText+"</button></div></div><div id='coupon_footer'></div></div>";couponImpressionLogUrl="http://l.sendori.com/stbin/coupon.cgi?GROUPON_COUPON_IMPRESSION,"+a+","+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantGroupon+","+couponMerchantIDGroupon+",GROUPON,GROUPON,"+o+","+couponUrlGroupon+",";r.ajax({url:couponImpressionLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});r(document.body).append(coupondivInsert);if(r("#coupon_container_groupon").is(":visible")){}else{r("#coupon_container_groupon").slideDown(1600)}r("#coupon_container_groupon #icon_close").click(function(){r("#coupon_container_groupon").slideUp(1500)});if(r("#coupon_container_grouponmerchant").is(":visible")){}else{r("#coupon_container_grouponmerchant").slideDown(1600)}r("#coupon_container_grouponmerchant #icon_close").click(function(){r("#coupon_container_grouponmerchant").slideUp(1500)});r("#couponIcon,#coupon_title,.buttonSavings").live("click",function(){if(r.cookie){if(t&&t==1){r.cookie("groupon_generic_coupon","50",{expires:expirationDate,path:"/",domain:cookieDomain})}else{r.cookie("groupon_merchant_coupon","50",{expires:expirationDate,path:"/",domain:cookieDomain})}}else{if(t&&t==1){createCookie("groupon_generic_coupon","50",24)}else{createCookie("groupon_merchant_coupon","50",couponCookieExpire)}}couponClickLogUrl="http://l.sendori.com/stbin/coupon.cgi?GROUPON_COUPON_CLICK,"+a+","+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantGroupon+","+couponMerchantIDGroupon+",GROUPON,GROUPON,"+o+","+couponUrlGroupon+",";r.ajax({url:couponClickLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});setTimeout(function(){location.href=couponUrlGroupon},200)});r("#snd_logo").hover(function(){r(this).css("cursor","pointer")},function(){r(this).css("cursor","auto")});r("#snd_logo").click(function(){window.open("http://support.sendori.com/home")})},error:function(){alert("GroupOn Service Error: Not Responding")}})}}if(coupon!=undefined&&couponDisplay!=0&&coupon!=""){couponMultipleArray=coupon.split("||");couponMultiCount=couponMultipleArray.length;couponRespArray=coupon.split(";");couponID=couponRespArray[0];couponTitle=couponRespArray[1].substr(0,80);couponDescription=couponRespArray[3].substr(0,200);couponFullDescription=couponRespArray[3];couponCode=couponRespArray[4];couponImage=couponRespArray[14]+"?height=30&width=120";couponExpireDate=couponRespArray[13];couponNoSubidUrl=couponRespArray[10];couponUrl=couponNoSubidUrl.split("19632936").join("19632936&subid="+sndGUID);couponMerchantID=couponRespArray[5];couponMerchantName=couponRespArray[6];couponCategoryID=couponRespArray[16];couponCategoryName=couponRespArray[17];couponMerchantUrl=couponRespArray[8];couponMerchantDisplayUrl=couponRespArray[7];couponExpire=new Date(couponExpireDate);couponExpireString=couponExpire.toString();couponExpireDisplay=couponExpireString.substr(4,6)+","+couponExpire.getFullYear();if(couponCode==""){buttonId="btn_getDeal"}else{buttonId="btn_getCode"}applyClass="";if(couponMultiCount>1){moreButtonClass="buttonMore";moreBtnText="More Coupons"}else{moreButtonClass="hideOnLoad";moreBtnText=""}if(r.browser.msie){for(D=0;D<applyCodeMerchantIds.length;D++){if(applyCodeMerchantIds[D]==couponMerchantID){buttonId="noBtn";moreBtnText="Apply Code";applyClass="marginTopMore";break}}}coupondivInsert="<div id='coupon_container' class='noFALinks' style='display: none;'><div id='coupon_header'><div style='POSITION: absolute; MARGIN-TOP: 4px; MARGIN-left: 5px; RIGHT: auto'><DIV id='snd_logo'></div></div><div id='coupon_message'>"+couponSliderHeading+"</div><div style='POSITION: absolute; MARGIN-TOP: 4px; RIGHT: 0px; MARGIN-RIGHT: 5px; LEFT: auto'><div id='icon_close'></div></div></div><div id='coupon_body'><div id='couponIcon' style='background-image: url("+couponImage+");'></div><div style='POSITION: absolute; MARGIN-LEFT: 135px; padding-top: 3px'><div id='coupon_title'>"+couponTitle+"</div><div id='coupon_description'>"+couponDescription+"</div></div><div id='"+buttonId+"'></div><div class='moreBtnSection'><button type='button' class='"+moreButtonClass+" "+applyClass+"'>"+moreBtnText+"</button></div></div><div id='coupon_footer'></div></div>";couponImpressionLogUrl="http://l.sendori.com/stbin/coupon.cgi?COUPON_IMPRESSION,S,"+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantDisplayUrl+","+couponMerchantID+","+couponCategoryName+","+couponCategoryID+","+o+","+couponUrl+","+cVersion+","+bVersion+",";r.ajax({url:couponImpressionLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});r(document.body).append(coupondivInsert);if(r("#coupon_container").is(":visible")){}else{r("#coupon_container").slideDown(1600)}r("#icon_close").click(function(){r("#coupon_container").slideUp(1500)});r("#btn_getCode").live("click",function(){if(couponCodeUI==0){r("#btn_getCode").hide(100);r("#code").show(100)}});r("#couponIcon,#btn_getDeal,#couponcode_go,#btn_getCode,#coupon_title").live("click",function(){if(r.cookie){r.cookie("sendori_coupon","50",{expires:expirationDate,path:"/",domain:cookieDomain})}else{createCookie("sendori_coupon","50",couponCookieExpire)}couponClickLogUrl="http://l.sendori.com/stbin/coupon.cgi?COUPON_CLICK,"+couponID+","+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantDisplayUrl+","+couponMerchantID+","+couponCategoryName+","+couponCategoryID+","+o+","+couponUrl+","+cVersion+","+bVersion+",";r.ajax({url:couponClickLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});if(couponCodeUI!=0){setTimeout(function(){location.href=couponUrl},700);if(couponCode!=""){couponWindowName="couponCodeWindow"+logTime;couponMerchantNameNoSpace=couponMerchantName.replace(/[^a-z]/gi,"");couponWindowName=window.open("","couponCode"+couponMerchantNameNoSpace+"","height=340,width=428,toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, directories=no, status=no,copyhistory=no");couponWindowName.document.write('<html lang="en"><head><meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible"><meta charset="UTF-8"><scr'+'ipt type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></scr'+'ipt><style>body{color: #333333;font-family:Helvetica;margin:0;padding:0;background: #eeeeee;}*{margin:0;padding:0;}.buttonMore{padding-left: 0;padding-right: 0;width: 190px;border-radius: 6px 6px 6px 6px;background-color: #FF6633;background-image: linear-gradient(#FF9933, #FF6633);background-size: 100% auto;border: 0 none;color: white;cursor: pointer;font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;font-size: 1.23077rem;font-weight: bold;letter-spacing: 1.5px;line-height: 1.5em;overflow: visible;padding: 0.32em 0.63em;text-shadow: 0 -1px 1px gray;}.buttonMore:hover{background-image: linear-gradient(#FF7F00, #FF4000);background-size: 100% auto;}.moreBtnSection{margin-top:3px;margin-left:220px;position:relative;}.buttonMoreOld{ cursor:pointer;border-top:1px solid #96d1f8;  background:#326DB1;  background:-webkit-gradient(linear,left top,left bottom,from(#3e779d),to(#326DB1));  background:-webkit-linear-gradient(top,#3e779d,#326DB1);  background:-moz-linear-gradient(top,#3e779d,#326DB1);  background:-ms-linear-gradient(top,#3e779d,#326DB1);  background:-o-linear-gradient(top,#3e779d,#326DB1);  padding:5px 10px;  -webkit-border-radius:5px;  -moz-border-radius:5px;  border-radius:5px;  -webkit-box-shadow:rgba(0,0,0,1) 0 1px 0;  -moz-box-shadow:rgba(0,0,0,1) 0 1px 0;  box-shadow:rgba(0,0,0,1) 0 1px 0;  text-shadow:rgba(0,0,0,.4) 0 1px 0;  color:white;  font-size:13px;  font-weight:bold;  font-family:Helvetica,Arial,Sans-Serif;  text-decoration:none;  vertical-align:middle;  height:15px; width:92px; margin-top:3px;margin-left:270px;position:relative;}#couponWindowHeader{background-image: url("http://cdn.sendori.com/images/bg_header.png");background-repeat: repeat-x;border-left: 1px none #1A5189;border-right: 1px none #1A5189;border-top: 1px none #1A5189;display: block;height: 30px;}#snd_logo{background-image: url("http://cdn.sendori.com/images/logo.png");background-repeat: no-repeat;cursor: auto;float: left;height: 17px;margin-right: 10px;margin-top: 1px;width: 65px;}.inner{padding: 6px 12px;}.primary{margin-top:10px;}#merchantHeading{min-width: auto;width: auto;position: relative;z-index: 1;margin: 0 auto;max-width: 975px;padding-left: 0;padding-right: 0;}#merchantHeading.inner{padding: 5px 10px;}.windowHeader{display: table;width: 100%;padding:5px;}.clearfix:after{clear: both;content: "";display: table;}.windowHeader h1{color: #333333;font-family: helvetica;font-size:28px;line-height: 30px;display: table-cell;vertical-align: middle;margin-right:5px;}.windowHeader img{float: right;text-align: right;margin-right:10px; margin-top: 4px;border: 1px solid #DFDFDF;}hr{color: #999;background-color: #999;height: 1px;}#coupon-code .label{color:#333333;font-size:16px;padding:5px;font-weight:bold;font-family: helvetica;}.labelInfo{color:#6A6A6A;font-size:14px;padding:5px;font-weight:bold;font-family: helvetica;}#coupon-code code{color: #006600;font-size: 21px;font-weight:bold;font-family: helvetica;}#detailSection{margin-top: 20px;padding:5px;font-family: helvetica;}#detailSection a{color: #0033FF;text-decoration: none;font-weight:bold;font-size:14px;}#detailSection .description{font-size:14px;color:#666666;}#expireSection{margin-top:15px;}#expireSection .expireText{padding:5px;font-size: 14px;color:#333333;font-weight:bold;font-family: helvetica;}#expireSection .expireDate{color: #006600;font-size: 14px;font-weight:bold;font-family: helvetica;}.title{margin-bottom:5px;}</style><title>Coupon Code for '+couponMerchantName+'</title></head><body class="popup locale-us redesign noFALinks"><div id="couponWindowHeader"><div style="POSITION: absolute;MARGIN-TOP: 4px;MARGIN-left: 5px;RIGHT: auto"><div id="snd_logo" style="cursor: auto;"></div></div></div><div class="module" id="merchantHeading"><div class="inner"><div class="windowHeader clearfix"><h1>'+couponMerchantName+'</h1><img width="120" height="30" src="'+couponImage+'" alt="Coupons"></div><hr><div><div class="primary"><div id="coupon-code"><span class="label">Coupon Code: </span><code title="Use the code at checkout">'+couponCode+'</code></br><span class="labelInfo">[Use the code at checkout to <span style="color:#CE2027;font-weight:bold;">Save</span>]</span></div><div class="details" id="detailSection" style="display: block;"><p class="title"><a rel="nofollow" target="_blank" href="'+couponUrl+'">'+couponTitle+'</a></p><p class="description">'+couponFullDescription+'</p></div><div class="details" id="expireSection" style="display: block;"><span class="expireText">Offer Ends: </span><span class="expireDate">'+couponExpireDisplay+'</span></div></div></div></div></div><div class="moreBtnSection"><button type="button" class="'+moreButtonClass+'" couponText="'+coupon+'" sndGUID="'+sndGUID+'" ipAddress="'+ipAddress+'" browserDisplay="'+o+'" couponMerchantDisplayUrl="'+couponMerchantDisplayUrl+'" couponMerchantID="'+couponMerchantID+'" morePopClose="'+moreCouponsPopupClose+'" couponMerchantName="'+couponMerchantName+'" image="'+couponImage+'" cVersion="'+cVersion+'" couponUrl="'+couponUrl+'" bVersion="'+bVersion+'">More Coupons</button></div><scr'+'ipt type="text/javascript" src="http://cdn.sendori.com/js/sndCodeToMoreCoupons.js"></scr'+"ipt></body></html>");couponWindowName.focus()}}else{window.open(couponUrl,"_blank")}});r("#snd_logo").hover(function(){r(this).css("cursor","pointer")},function(){r(this).css("cursor","auto")});r("#snd_logo").click(function(){window.open("http://support.sendori.com/home")});r(".buttonMore").click(function(){if(moreBtnText=="More Coupons"){if(r.cookie){r.cookie("sendori_coupon","50",{expires:expirationDate,path:"/",domain:cookieDomain})}else{createCookie("sendori_coupon","50",couponCookieExpire)}var e=new Date;var t=e.getMonth()+1;var n=e.getDate();var i=e.getFullYear()+"/"+(t<10?"0":"")+t+"/"+(n<10?"0":"")+n;var s=e.getHours()+":"+e.getMinutes()+":"+e.getSeconds();couponClickLogUrl="http://l.sendori.com/stbin/coupon.cgi?COUPON_CLICK,"+couponID+","+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantDisplayUrl+","+couponMerchantID+","+couponCategoryName+","+couponCategoryID+","+o+","+couponUrl+","+cVersion+","+bVersion+",";r.ajax({url:couponClickLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});moreCouponClickLogUrl="http://l.sendori.com/stbin/coupon.cgi?COUPON_IMPRESSION,M,"+i+","+s+","+sndGUID+","+ipAddress+","+couponMerchantDisplayUrl+","+couponMerchantID+","+couponCategoryName+","+couponCategoryID+","+o+","+couponUrl+","+cVersion+","+bVersion+",";r.ajax({url:moreCouponClickLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});couponWindowName="moreCouponsWindow"+logTime;couponMerchantNameNoSpace=couponMerchantName.replace(/[^a-z]/gi,"");couponWindowName=window.open("","MoreSavings"+couponMerchantNameNoSpace+"","height=620,width=428,toolbar=no, menubar=no, scrollbars=yes, resizable=no,location=no, directories=no, status=no,copyhistory=no");moreCouponsContent='<html lang="en"><head><meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible"><meta charset="UTF-8"><scr'+'ipt type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></scr'+'ipt><style>body{color: #333333;font-family:Helvetica;margin:0;padding:0;background: #FCFBF9;}*{margin:0;padding:0;}#couponWindowHeader{background-image: url("http://cdn.sendori.com/images/bg_header.png");background-repeat: repeat-x;border-left: 1px none #1A5189;border-right: 1px none #1A5189;border-top: 1px none #1A5189;display: block;height: 30px;}#snd_logo{background-image: url("http://cdn.sendori.com/images/logo.png");background-repeat: no-repeat;cursor: auto;float: left;height: 17px;margin-right: 10px;margin-top: 1px;width: 65px;}.inner{padding: 6px 12px;}.primary{margin-top:10px;}#merchantHeading{min-width: auto;width: auto;position: relative;z-index: 1;margin: 0 auto;max-width: 975px;padding-left: 0;padding-right: 0;}#merchantHeading.inner{padding: 5px 10px;}.windowHeader{display: table;width: 100%;padding:5px;}.clearfix:after{clear: both;content: "";display: table;}.windowHeader h1{color: #333333;font-family: helvetica;font-size:28px;line-height: 30px;display: table-cell;vertical-align: middle;margin-right:5px;}.windowHeader img{float: right;text-align: right;margin-right:10px; margin-top: 4px;border: 1px solid #DFDFDF;}hr{color: #999;background-color: #999;height: 1px;}#coupon-code .label{color:#333333;font-size:16px;padding:5px;font-weight:bold;font-family: helvetica;}.labelInfo{color:#6A6A6A;font-size:14px;padding:5px;font-weight:bold;font-family: helvetica;}#coupon-code code{color: #006600;font-size: 21px;font-weight:bold;font-family: helvetica;}#detailSection{margin-top: 20px;padding:5px;font-family: helvetica;}#detailSection a{color: #0033FF;text-decoration: none;font-weight:bold;font-size:14.5px;}#detailSection .description{font-size:12px;color:#333333;}#expireSection{margin-top:15px;}#expireSection .expireText{padding:5px;font-size: 14px;color:#333333;font-weight:bold;font-family: helvetica;}#expireSection .expireDate{color: #006600;font-size: 14px;font-weight:bold;font-family: helvetica;}.title{margin-bottom:5px;}.title{margin-bottom:5px;}.floatRight{float:right;}.couponCode{background:linear-gradient(centerbottom,white,#EEEEEE0px,white15px) repeat scroll 0 0 transparent;border:1px solid #CCC;color:#006600;font-size:15px;font-weight:bold;width:120px!important;padding:2px 4px}.popup-module-deal {border-bottom: 1px dashed #999999;padding: 0.30769rem 0;}#detailSection a:hover{color:#003366;}.btn_getDeal{cursor:pointer;background-image:url(http://cdn.sendori.com/test/coupons/img/get_deal.png);background-repeat:no-repeat;height:30px;margin-right:2px;width:112px;margin-top:1px;}.btn_getCode{cursor:pointer;background-image:url(http://cdn.sendori.com/test/coupons/img/get_code.png);background-repeat:no-repeat;height:30px;margin-right:2px;width:112px;margin-top:1px;}</style><title>More Coupons for '+couponMerchantName+'</title></head><body class="popup locale-us redesign"><div id="couponWindowHeader"><div style="POSITION: absolute;MARGIN-TOP: 4px;MARGIN-left: 5px;RIGHT: auto"><div id="snd_logo" style="cursor: auto;"></div></div></div><div class="module" id="merchantHeading"><div class="inner"><div class="windowHeader clearfix"><h1>'+couponMerchantName+'</h1><img width="120" height="30" src="'+couponImage+'" alt="Coupons"></div><hr><div><div class="primary noFALinks">';for(D=0;D<couponMultiCount;D++){couponRespArrayMore=couponMultipleArray[D].split(";");couponIDMore=couponRespArrayMore[0];couponTitleMore=couponRespArrayMore[1].substr(0,80);couponDescriptionMore=couponRespArrayMore[3].substr(0,200);couponFullDescriptionMore=couponRespArrayMore[3];couponCodeMore=couponRespArrayMore[4];couponImageMore=couponRespArrayMore[14]+"?height=30&width=120";couponExpireDateMore=couponRespArrayMore[13];couponNoSubidUrlMore=couponRespArrayMore[10];couponUrlMore=couponNoSubidUrlMore.split("19632936").join("19632936&subid="+sndGUID);couponMerchantIDMore=couponRespArrayMore[5];couponMerchantNameMore=couponRespArrayMore[6];couponCategoryIDMore=couponRespArrayMore[16];couponCategoryNameMore=couponRespArrayMore[17];couponMerchantUrlMore=couponRespArrayMore[8];couponMerchantDisplayUrlMore=couponRespArrayMore[7];moreCouponsContent+='<div class="details popup-module-deal" id="detailSection" style="display: block;"><p class="title"><a rel="nofollow" id="'+couponIDMore+'-title">'+couponTitleMore+"</a>";if(couponCodeMore!=""){if(D==0){moreCouponsContent+='<span class="floatRight"><input class="couponCode" type="text" title="Use the Code at Checkout" value="'+couponCodeMore+'"/></span></p><p id="'+couponIDMore+'-description" class="description">'+couponDescriptionMore+"</p></div>"}else{moreCouponsContent+='<span class="floatRight btn_getCode" merchantName="'+couponMerchantNameMore+'" couponCode="'+couponCodeMore+'" expire="'+couponExpireDateMore+'" image="'+couponImageMore+'" couponUrl="'+couponUrlMore+'" couponId="'+couponIDMore+'" sndGUID="'+sndGUID+'" ipAddress="'+ipAddress+'" browserDisplay="'+o+'" couponMerchantDisplayUrl="'+couponMerchantDisplayUrl+'" couponMerchantID="'+couponMerchantID+'" morePopClose="'+moreCouponsPopupClose+'" cVersion="'+cVersion+'" bVersion="'+bVersion+'"></span></p><p id="'+couponIDMore+'-description" class="description">'+couponDescriptionMore+"</p></div>"}}else{moreCouponsContent+='<span class="floatRight btn_getDeal" merchantName="'+couponMerchantNameMore+'" couponCode="'+couponCodeMore+'" expire="'+couponExpireDateMore+'" image="'+couponImageMore+'" couponUrl="'+couponUrlMore+'" couponId="'+couponIDMore+'" sndGUID="'+sndGUID+'" ipAddress="'+ipAddress+'" browserDisplay="'+o+'" couponMerchantDisplayUrl="'+couponMerchantDisplayUrl+'" couponMerchantID="'+couponMerchantID+'" morePopClose="'+moreCouponsPopupClose+'" cVersion="'+cVersion+'" bVersion="'+bVersion+'"></span></p><p class="description">'+couponDescriptionMore+"</p></div>"}}moreCouponsContent+="</div></div></div></div><scr"+'ipt type="text/javascript" src="http://cdn.sendori.com/js/sndCouponHandle.js"></scr'+"ipt></body></html>";couponWindowName.document.write(moreCouponsContent);couponWindowName.focus();setTimeout(function(){location.href=couponUrl},1200)}else{r.cookie("sendori_coupon","50",{expires:expirationDate,path:"/",domain:cookieDomain});couponClickLogUrl="http://l.sendori.com/stbin/coupon.cgi?COUPON_CLICK,"+couponID+","+logFinalDate+","+logTime+","+sndGUID+","+ipAddress+","+couponMerchantDisplayUrl+","+couponMerchantID+","+couponCategoryName+","+couponCategoryID+","+o+","+couponUrl+","+cVersion+","+bVersion+",";r.ajax({url:couponClickLogUrl,type:"GET",dataType:"jsonp",cache:false,success:function(){},error:function(){}});if(couponCodeUI!=0){setTimeout(function(){location.href=couponUrl},800)}}})}if(inlineText!=0){var c=0;var h=3;var p=new Array;var d=document.URL;var v=false;var m=new Object;var g=new Object;var y=new Array;var b="";var w="";var E="";var S="";var x=false;if(typeof partner_config!=="undefined"){for(var T=0;T<partner_config.products.length;T++){var N=partner_config.products[T].id;if(sndpID==N){x=true;b=partner_config.products[T].inline_brand;w=partner_config.products[T].inline_keyword;if((b==undefined||b=="")&&(w==undefined||w=="")){return}}}}if(!x){return}for(var T=0;T<inline_keyword_obj.inlinebrands.length;T++){var C=inline_keyword_obj.inlinebrands[T].brandword;var k=inline_keyword_obj.inlinebrands[T].hostname;if(C.indexOf(" ")>0){k+="|"+C;C=C.substring(0,C.indexOf(" "))}m[C]=k}for(var T=0;T<blacklist_keywords.blacklist.length;T++){var C=blacklist_keywords.blacklist[T].keyword;g[C]=""}function L(e){if(e=="SCRIPT"||e=="TITLE"||e=="A"||e=="STYLE"||e=="H1"||e=="H2"||e=="H3"||e=="H4"||e=="INPUT"||e=="IMG"||e=="FORM"||e=="BUTTON"||e=="LINK"||e=="IFRAME"||e=="SELECT"||e=="ALT"||e=="LABEL"||e=="META"||e=="NOSCRIPT"||e=="OBJECT"||e=="PARAM"||e=="CITE"||e=="/BODY"||e=="BR"||e=="HEAD"){return true}else{return false}}function A(e){var t=document.URL;var n=new Object;n.substituted=false;if(v==true){return n}var r=0;var i;textlower=e.toLowerCase();r=0;var s="</span></a>";n.newText="";var o=0;for(T=0;T<e.length&&c<h;++T){var u="";var a="";var f=0;if(m[e]!=null||e[T]==" "||e[T]==";"||e[T]==","||e[T]=="."||e[T]=="<"||e[T]==">"||e[T]=="?"){if(m[e]!=null&&m[e].indexOf(t)<0){r=0;T=e.length;u=e.substring(r,i);if(m[e].indexOf("keyword")>=0){a="keyword"}}else{keytoCompare=e.substring(r,T);if(g[keytoCompare]!=undefined&&g[keytoCompare]!=""){v=true;break}if(m[keytoCompare]!=undefined){while(f<m.length){if(m[keytoCompare].indexOf("|")>0){valuetoCompare=m[keytoCompare].substring(m[keytoCompare].indexOf("|")+1,m[keytoCompare].length)}else{valuetoCompare=keytoCompare}if(e.indexOf(valuetoCompare,r)==r&&m[keytoCompare].indexOf(t)<0){T=r+valuetoCompare.length;u=e.substring(r,T);if(m[keytoCompare].indexOf("keyword")>=0){a="keyword"}}}}}if(u!=""){wordlower=u.toLowerCase();adbrandterm=u;if(u.indexOf("&")>=0){adbrandterm=u.replace("&","")}if(u.indexOf("'")>=0){adbrandterm=u.replace("'","")}if(n.newText==""){preElement=e.substring(0,r)}else{preElement=n.newText.substring(0,r+o)}var l=e.substring(T);if(a=="keyword"){if(w!=undefined&&w!=""){highlightStartTag="<a href='http://securelink.sendori.com/r?key="+adbrandterm+"&spid="+w+"&output=redirect&ix=1' target='_blank'><span id='inlineTextHighlight'>"}else continue}else{if(b!=undefined&&b!=""){highlightStartTag="<a href='http://securelink.sendori.com/br?key="+adbrandterm+"&spid="+b+"&output=redirect&ix=1' target='_blank'><span id='inlineTextHighlight'>"}else continue}s="</span></a>";n.newText=preElement+highlightStartTag+u+s+l;n.substituted=true;o+=highlightStartTag.length+s.length;p[p.length]="http://l.sendori.com/stbin/lognow.cgi/?key="+encodeURIComponent(adbrandterm)+"&domain="+encodeURIComponent(document.URL);c++}r=T+1}}return n}function O(e){if(v==true){return}var t=e.nodeValue;var n=e.parentNode;var r=A(t);if(r.substituted==true){var i=document.createElement("text");i.innerHTML=r.newText;n.replaceChild(i,e)}}function M(e){if(L(e.nodeName)){return}if(e.nodeName=="#text"&&r.trim(e.nodeValue).length>0){O(e)}if(e.hasChildNodes()){for(var t=0;t<e.childNodes.length;t++){M(e.childNodes[t])}}}if(typeof console==="undefined"||typeof console.log==="undefined"){console={};console.log=function(){}}r.expr[":"].HasBlackListURL=function(e,t,n){var i=false;r.each(blacklist_urls.urls,function(t){urlstring=this.url.toString().toLowerCase();if(r(e).attr("href")!=null&&r(e).attr("href")!=="undefined"&&r(e).attr("href").toString().toLowerCase().indexOf(urlstring)>=0){i=true}});return i};if(r("a:HasBlackListURL('')").length>0){v=true}var _=document.getElementsByTagName("body");for(var D=0;D<_.length;D++){var P=_[D];M(P)}r("[class*=nav_pop_li]").find("a[href*=securelink.sendori.com/]").each(function(e){var t=r(this).text();r(this).replaceWith(t)});if(!v){r("HTML").find("span#inlineTextHighlight").css("visibility","visible");for(var D=0;D<p.length;D++){r.ajax({url:p[D],type:"GET",dataType:"jsonp",cache:false,error:function(){}})}}else{r("a[href*=securelink.sendori.com/]").each(function(e){var t=r(this).text();r(this).replaceWith(t)})}}})}function sendoriSlider(){function f(){var e=false;if(CorrectedDomain!=undefined&&OriginalDomain!=undefined){if(n!=undefined&&n!=""){for(var i=0;i<slider_keywords.slidertext.length;i++){var s=slider_keywords.slidertext[i].BRAND;if(CorrectedDomain.indexOf(s.toLowerCase())>=0){brand_category=slider_keywords.slidertext[i].CATEGORY;if(n!=undefined&&n!="")y(brand_category,"NX",n,"");else y(brand_category,"NX",1860,"");e=true;break}}}if(!e&&r!=undefined&&r=="Y"){c(CorrectedDomain,"NX")}}if(t!=undefined&&t!=""){if(!h()&&!p()&&!d()&&!v()&&!m()){return false}if(d()){query=g("p")}else{query=g("q")}if(query==undefined||query==null||query==""){return false}if(cookieDomain.indexOf(query)>=0){return false}y(query,"SERP",t,"")}}function l(e,t,n,i,s,o){divToInsert="<div id='slider_container' class='noFALinks' style='display:none'><div id='slider_header'>";if(e=="NX"&&r!=undefined&&r=="Y"){divToInsert+="<div id='notification_alert'></div>"+"<div id='notification_message'></div>"}divToInsert+="<div style='left:auto; position:absolute; right:0;margin-right:5px;margin-top:4px;'><div id='snd_logo'></div>"+"<div id='icon_close'></div></div></div>"+"<div id='slider_body'>";var u=a.browser;if(u.msie&&u.version.slice(0,3)=="7.0"){divToInsert+="<div id='favicon'></div><div style='margin-left:30px;padding-top:3px;'>"}else{a("#favicon").css("height","16px");divToInsert+="<div id='favicon'></div><div style='margin-left:30px;padding-top:3px;position:absolute;'>"}divToInsert+="<div id='ad_title'></div>"+"<div id='ad_body'></div></div>"+"<div id='bt_learn'></div>"+"</div>"+"<div id='slider_footer'>"+"<div id='ad_url'></div></div>"+"</div>";divToInsert+="<div style='display:none;'><img src='//pixel.quantserve.com/pixel/p-fbiS6Ydv_HyB-.gif' border='0' height='1' width='1' alt='Quantcast'/></div>";var f=f||[];f.push({qacct:"p-fbiS6Ydv_HyB-"});var l=document.createElement("script");l.type="text/javascript";l.src="http://edge.quantserve.com/quant.js";l.async=true;var c=document.getElementsByTagName("script")[0];c.parentNode.insertBefore(l,c);divToInsert+="<div style='display:inline;'><img height='1' width='1' style='border-style:none;' src='//googleads.g.doubleclick.net/pagead/viewthroughconversion/1001837251/?value=0&label=FqiuCJWt7AMQw6Xb3QM&guid=ON&script=0'/></div>";var h=1001837251;var p="FqiuCJWt7AMQw6Xb3QM";var d=window.google_tag_params;var v=true;var m=document.createElement("script");m.type="text/javascript";m.src="www.googleadservices.com/pagead/conversion.js";m.async=true;var c=document.getElementsByTagName("script")[0];c.parentNode.insertBefore(m,c);a(document.body).append(divToInsert);if(a("#slider_container").is(":visible")){}else{a("#slider_container").slideDown(1500)}a("#icon_close").click(function(){a("#slider_container").slideUp(1500)});if(e=="NX"){a("#notification_message").html(b());a("#icon_close").click(function(){a("#slider_container").slideUp(1500)})}a("#ad_title").html(t);a("#ad_body").html(n);a("#ad_url").html("Sponsored by: "+i);if(o=="G"){favicon_url="url(http://www.google.com/s2/favicons?domain="+i+")"}else{favicon_url="url("+o+")"}a("#favicon").css("background-image",favicon_url);a("#slider_body").click(function(){window.open(s)});a("#ad_url").hover(function(){a(this).css("cursor","pointer")},function(){a(this).css("cursor","auto")});a("#snd_logo").hover(function(){a(this).css("cursor","pointer")},function(){a(this).css("cursor","auto")});a("#ad_url").click(function(){window.open(s)});a("#snd_logo").click(function(){window.open("http://support.sendori.com/home")})}function c(){var e="<div id='Nx_slider_container' class='noFALinks' style='display:none'>"+"<div id='slider_header'>"+"<div id='notification_alert'></div>"+"<div id='notification_message'></div>"+"<div style='left: auto; position: absolute; right:0;margin-right: 5px;margin-top:4px;'><div id='snd_logo'></div>"+"<div id='icon_close'></div></div>"+"</div>"+"</div>";e+="<div style='display:none;'><img src='//pixel.quantserve.com/pixel/p-fbiS6Ydv_HyB-.gif' border='0' height='1' width='1' alt='Quantcast'/></div>";var t=t||[];t.push({qacct:"p-fbiS6Ydv_HyB-"});var n=document.createElement("script");n.type="text/javascript";n.src="http://edge.quantserve.com/quant.js";n.async=true;var r=document.getElementsByTagName("script")[0];r.parentNode.insertBefore(n,r);e+="<div style='display:inline;'><img height='1' width='1' style='border-style:none;' src='//googleads.g.doubleclick.net/pagead/viewthroughconversion/1001837251/?value=0&label=FqiuCJWt7AMQw6Xb3QM&guid=ON&script=0'/></div>";var i=1001837251;var s="FqiuCJWt7AMQw6Xb3QM";var o=window.google_tag_params;var u=true;var f=document.createElement("script");f.type="text/javascript";f.src="www.googleadservices.com/pagead/conversion.js";f.async=true;var r=document.getElementsByTagName("script")[0];r.parentNode.insertBefore(f,r);a(document.body).append(e);if(a("#Nx_slider_container").is(":visible")){a("#Nx_slider_container").slideUp(1500)}else if(!a("slider_container").is(":visible")){a("#Nx_slider_container").slideDown(1500)}if(a("slider_container").is(":visible")){a("#Nx_slider_container").css("display","none")}a("#icon_close").click(function(){a("#Nx_slider_container").slideUp(1500)});a("#snd_logo").hover(function(){a(this).css("cursor","pointer")},function(){a(this).css("cursor","auto")});a("#snd_logo").click(function(){window.open("http://support.sendori.com/home")});a("#notification_message").html(b())}function h(){if(document.referrer.indexOf("www.google.com/url")!=-1&&document.URL.indexOf("google.com")==-1){return true}return false}function p(){if(document.referrer.indexOf("www.bing.com/search")!=-1&&document.URL.indexOf("bing.com/search")==-1){return true}return false}function d(){if(document.referrer.indexOf("search.yahoo.com/search")!=-1&&document.URL.indexOf("search.yahoo.com")==-1){return true}return false}function v(){if(document.referrer.indexOf("www.ask.com/web")!=-1&&document.URL.indexOf("ask.com/web")==-1){return true}return false}function m(){if(document.referrer.indexOf("www.search.ask.com/web")!=-1&&document.URL.indexOf("search.ask.com/web")==-1){return true}if(document.referrer.indexOf("search.snapdo.com/")!=-1&&document.URL.indexOf("search.snapdo.com")==-1){return true}if(document.referrer.indexOf("isearch.avg.com/search")!=-1&&document.URL.indexOf("isearch.avg.com")==-1){return true}if(document.referrer.indexOf("search.babylon.com/")!=-1&&document.URL.indexOf("search.babylon.com")==-1){return true}if(document.referrer.indexOf("mysearch.avg.com/search")!=-1&&document.URL.indexOf("mysearch.avg.com/search")==-1){return true}if(document.referrer.indexOf("www.claro-search.com/")!=-1&&document.URL.indexOf("www.claro-search.com")==-1){return true}if(document.referrer.indexOf("isearch.babylon.com/")!=-1&&document.URL.indexOf("isearch.babylon.com")==-1){return true}if(document.referrer.indexOf("isearch.fantastigames.com/web")!=-1&&document.URL.indexOf("isearch.fantastigames.com")==-1){return true}if(document.referrer.indexOf("start.funmoods.com/results.php")!=-1&&document.URL.indexOf("start.funmoods.com")==-1){return true}return false}function g(e){var t;var n=document.referrer;var r=n.split("&");for(var i=0;i<r.length;i++){var s=r[i].indexOf(e+"=");arg=r[i].substring(0,s+1);if(s!=-1&&(arg==e||arg.indexOf("?"+e)!=-1)){t=r[i].substring(s+2)}else continue}return unescape(t)}function y(e,t,n,i){a.ajax({url:"http://securelink.sendori.com/r?key="+e+"&spid="+n+"&output=json&rf="+document.domain,type:"GET",dataType:"jsonp",cache:false,success:function(e){if(typeof e.ads[0]!=="undefined"){if(e.ads[0].displayURL.indexOf("http")>=0||e.ads[0].displayURL.indexOf("https")>=0){displayURL=e.ads[0].displayURL.substring(e.ads[0].displayURL.indexOf("//")+2)}else displayURL=e.ads[0].displayURL;if(e.ads[0].url.indexOf("http")<0){clickURL="http://"+e.ads[0].url}else clickURL=e.ads[0].url;if(t=="SERP"){a("#sndSERPSlider").html("<iframe width='2px' height='2px' src='"+e.ads[0].url+"'></iframe>")}if(t=="NX"){i="G";for(var n=0;n<slider_keywords.slidertext.length;n++){var s=slider_keywords.slidertext[n].BRAND;if(displayURL.indexOf(s)>=0){i=slider_keywords.slidertext[n].FAVICONSRC}}}l(t,e.ads[0].title,e.ads[0].description,displayURL,clickURL,i)}else if(t=="NX"&&r!=undefined&&r=="Y"){c()}}})}function b(){var e="Your input '"+OriginalDomain+"' has been corrected to '"+CorrectedDomain+"'";var t="";var n=e.length>63?63:e.length;for(i=0;i<n;++i){t+=e.charAt(i)}if(n==63)t+="...";return t}var e=false;var t;var n;var r;if(typeof partner_config!=="undefined"){for(var s=0;s<partner_config.products.length;s++){var o=partner_config.products[s].id;if(sndpID==o){e=true;t=partner_config.products[s].slider_referrer;n=partner_config.products[s].slider_Nx;r=partner_config.products[s].Ntfcn;if((r==undefined||r=="")&&(n==undefined||n=="")&&(t==undefined||t=="")){return}else break}}}if(!e){return}var u=window.location!=window.parent.location?true:false;var a=$jOld.noConflict(true);a(document).ready(function(){if(!u){f()}})}for(i=0;i<partner_config.products.length;i++){if(partner_config.products[i].id==sndpID){var tvInlineTxt=partner_config.products[i].tvI;var tvTransitional=partner_config.products[i].tvT;var tvBanner=partner_config.products[i].tvB;var savingsDisplay=partner_config.products[i].savings;var amazonDisplay=partner_config.products[i].amazon;var grouponDisplay=partner_config.products[i].groupon}}if(tvInlineTxt==1&&tvTransitional==1&&tvBanner==0){var tvCid=1}else if(tvInlineTxt==1&&tvTransitional==0&&tvBanner==0){var tvCid=2}else if(tvInlineTxt==1&&tvTransitional==1&&tvBanner==1){var tvCid=5}else if(tvInlineTxt==0&&tvTransitional==1&&tvBanner==0){var tvCid=6}else if(tvInlineTxt==0&&tvTransitional==0&&tvBanner==1){var tvCid=7}else if(tvInlineTxt==1&&tvTransitional==0&&tvBanner==1){var tvCid=8}else if(tvInlineTxt==0&&tvTransitional==1&&tvBanner==1){var tvCid=9}else if(tvInlineTxt==0&&tvTransitional==0&&tvBanner==0){var tvCid=0}if(sndgID!=undefined){var sndGUID=sndgID.substring(1,37)}else{var sndGUID="NA"}var tvServiceUrl=tvServiceDomain+"/TVServiceApp/Service1.svc/GetTVDatawithSid/"+sndGUID;if(TVServiceFlag==0&&tvCid!=0){var confsc=document.createElement("script");confsc.src="http://"+tvDomain+"/pubjs?pid="+tvPid+"&uid="+sndGUID+"&sid="+TVServicesID+"&cid="+tvCid;confsc.type="text/javascript";confsc.id="confsc";document.getElementsByTagName("head")[0].appendChild(confsc)}if(TVServiceFlag==undefined&&tvCid!=0){$.ajax({url:tvServiceUrl,type:"GET",dataType:"jsonp",success:function(e){if(e.GetTVDatawithSidResult.GetTvData==0){var t=document.createElement("script");var n=e.GetTVDatawithSidResult.sId;t.src="http://"+tvDomain+"/pubjs?pid="+tvPid+"&uid="+sndGUID+"&sid="+n+"&cid="+tvCid;t.type="text/javascript";t.id="confsc";document.getElementsByTagName("head")[0].appendChild(t)}},error:function(){alert("Service Error: Not Responding")}})}(function(e,t,n){function i(e){return e}function s(e){return o(decodeURIComponent(e.replace(r," ")))}function o(e){if(e.indexOf('"')===0){e=e.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\")}return e}function u(e){return a.json?JSON.parse(e):e}var r=/\+/g;var a=e.cookie=function(r,o,f){if(o!==n){f=e.extend({},a.defaults,f);if(o===null){f.expires=-1}if(typeof f.expires==="number"){var l=f.expires,c=f.expires=new Date;c.setDate(c.getDate()+l)}o=a.json?JSON.stringify(o):String(o);return t.cookie=[encodeURIComponent(r),"=",a.raw?o:encodeURIComponent(o),f.expires?"; expires="+f.expires.toUTCString():"",f.path?"; path="+f.path:"",f.domain?"; domain="+f.domain:"",f.secure?"; secure":""].join("")}var h=a.raw?i:s;var p=t.cookie.split("; ");var d=r?null:{};for(var v=0,m=p.length;v<m;v++){var g=p[v].split("=");var y=h(g.shift());var b=h(g.join("="));if(r&&r===y){d=u(b);break}if(!r){d[y]=u(b)}}return d};a.defaults={};e.removeCookie=function(t,n){if(e.cookie(t)!==null){e.cookie(t,null,n);return true}return false}})(jQuery,document);var logDate=new Date;var logmonth=logDate.getMonth()+1;var logday=logDate.getDate();var logFinalDate=logDate.getFullYear()+"/"+(logmonth<10?"0":"")+logmonth+"/"+(logday<10?"0":"")+logday;var logTime=logDate.getHours()+":"+logDate.getMinutes()+":"+logDate.getSeconds();var expirationDate=new Date;expirationDate.setTime(expirationDate.getTime()+couponCookieExpire*60*60*1e3);var cookieDomain=document.domain;var currentPageUrl=document.URL;var $jOld=jQuery.noConflict(true);if($jOld.cookie){if($jOld.cookie("sendori_coupon")==undefined){if(parseInt(couponCap)>0){$jOld.cookie("sendori_coupon",1,{expires:expirationDate,path:"/",domain:cookieDomain});var couponDisplay=1}else{var couponDisplay=1}}else{couponCount=parseInt($jOld.cookie("sendori_coupon"));if(couponCount<parseInt(couponCap)){newCount=couponCount;++newCount;$jOld.removeCookie("sendori_coupon");$jOld.cookie("sendori_coupon",newCount,{expires:expirationDate,path:"/",domain:cookieDomain});var couponDisplay=1}else{var couponDisplay=0;if(isCheckout==undefined){var couponDisplay=0}if(isCheckout==1&&couponCount!=50){var checkoutCookieVal=$jOld.cookie("sendori_checkout_coupon");if(checkoutCookieVal==undefined){$jOld.cookie("sendori_checkout_coupon",1,{expires:expirationDate,path:"/",domain:cookieDomain});var couponDisplay=1}else if(checkoutCookieVal<couponCheckoutCap){checkoutCookieVal++;$jOld.cookie("sendori_checkout_coupon",checkoutCookieVal,{expires:expirationDate,path:"/",domain:cookieDomain});var couponDisplay=1}else{$jOld.cookie("sendori_checkout_coupon",50,{expires:expirationDate,path:"/",domain:cookieDomain});var couponDisplay=0}}}}}else{if(readCookie("sendori_coupon")==undefined){if(parseInt(couponCap)>0){createCookie("sendori_coupon",1,couponCookieExpire);var couponDisplay=1}else{var couponDisplay=1}}else{couponCount=parseInt(readCookie("sendori_coupon"));if(couponCount<parseInt(couponCap)){newCount=couponCount;++newCount;eraseCookie("sendori_coupon");createCookie("sendori_coupon",newCount,couponCookieExpire);var couponDisplay=1}else{var couponDisplay=0;if(isCheckout==undefined){var couponDisplay=0}if(isCheckout==1&&couponCount!=50){var checkoutCookieVal=readCookie("sendori_checkout_coupon");if(checkoutCookieVal==undefined){createCookie("sendori_checkout_coupon",1,couponCookieExpire);var couponDisplay=1}else if(checkoutCookieVal<couponCheckoutCap){checkoutCookieVal++;createCookie("sendori_checkout_coupon",checkoutCookieVal,couponCookieExpire);var couponDisplay=1}else{createCookie("sendori_checkout_coupon",50,couponCookieExpire);var couponDisplay=0}}}}}if(savingsDisplay==0){var couponDisplay=0}sendoriInline2();sendoriSlider()
</script>
<div id="sndSERPSlider" class="hideOnLoad"></div>
<style type='text/css'>
#inlineTextHighlight{background:none repeat scroll 0 50% transparent;text-decoration:underline;display:inline;visibility:none;color:#f35b00 !important;font-family:Arial;cursor:pointer;line-height:1.5em}
#slider_header{height:26px;width:510px;background-image:url(http://cdn.sendori.com/images/bg_header.png);background-repeat:repeat-x;border-left:1px #1A5189;border-top:1px #1A5189;border-right:1px #1A5189;display:block}
#coupon_header{height:26px;width:710px;background-image:url(http://cdn.sendori.com/images/bg_header.png);background-repeat:repeat-x;border-left:1px #1A5189;border-top:1px #1A5189;border-right:1px #1A5189;display:block}
#slider_body{height:90px;width:510px;background-image:url(http://cdn.sendori.com/images/bg_body.png);background-repeat:repeat-x;border-top:1px #438ECE;border-bottom:1px #438ECE;border-left:1px #1A5189;border-right:1px #1A5189;display:block;cursor:pointer}
#coupon_body{height:110px;width:710px;background-color:#FFF;border-top:1px #438ECE;border-bottom:1px #438ECE;border-left:1px #1A5189;border-right:1px #1A5189;display:block;cursor:pointer}
#coupon_body_groupon{height:80px;width:710px;background-color:#FFF;border-top:1px #438ECE;border-bottom:1px #438ECE;border-left:1px #1A5189;border-right:1px #1A5189;display:block;cursor:pointer}
#coupon_body_grouponmerchant{height:110px;width:710px;background-color:#FFF;border-top:1px #438ECE;border-bottom:1px #438ECE;border-left:1px #1A5189;border-right:1px #1A5189;display:block;cursor:pointer}
#slider_footer{height:30px;width:510px;background-image:url(http://cdn.sendori.com/images/bg_footer.png);background-repeat:repeat-x;border-left:1px #1A5189;border-right:1px #1A5189;border-bottom:1px #1A5189;display:block;cursor:auto}
#coupon_footer{height:10px;width:710px;background-image:url(http://cdn.sendori.com/images/bg_footer.png);background-repeat:repeat-x;border-left:1px #1A5189;border-right:1px #1A5189;border-bottom:1px #1A5189;display:block;cursor:auto}
#bt_learn{background-image:url(http://cdn.sendori.com/images/btn_learn.png);background-repeat:no-repeat;height:90px;margin-right:5px;width:112px;margin-top:60px;left:auto;right:0;top:0;position:absolute}
#btn_getDeal{background-image:url(http://cdn.sendori.com/test/coupons/img/get_deal.png);background-repeat:no-repeat;height:90px;margin-right:15px;width:112px;margin-top:45px;left:auto;right:0;top:0;position:absolute}
#btn_getCode{background-image:url(http://cdn.sendori.com/test/coupons/img/get_code.png);background-repeat:no-repeat;height:90px;margin-right:15px;width:112px;margin-top:45px;left:auto;right:0;top:0;position:absolute}
#icon_alert{height:16px;width:16px;background-image:url(http://cdn.sendori.com/images/icon_alert.png);padding:5px}
#icon_close{background-image:url(http://cdn.sendori.com/images/icon_close.png);background-repeat:no-repeat;display:block;float:left;height:16px;width:16px;cursor:pointer}
#favicon{background-position:center top;background-repeat:no-repeat;height:90px;margin-left:5px;margin-top:5px;width:16px;float:left;position:relative}
#couponIcon{background-repeat:no-repeat;margin-left:5px;margin-top:5px;height:30px;width:120px;float:left;position:absolute;border:1px solid #DFDFDF}
#couponSmallIcon{background-position:center top;background-repeat:no-repeat;width:110px;height:30px;margin-left:5px;margin-top:5px;float:left;position:relative}
#ad_title{font-family:Helvetica;font-size:13pt;font-weight:700;color:#000;text-decoration:underline;margin-right:122px;text-align:left}
#coupon_title{font-family:Helvetica;font-size:12pt;font-weight:700;color:#036;text-decoration:underline;margin-right:127px;margin-top:3px;text-align:left;line-height:20px;display:table}
#ad_body{font-family:Helvetica;font-size:11pt;color:#333;padding-top:5px;margin-right:125px;text-align:left}
#ad_url{color:#FFF;float:left;font-family:Helvetica;font-size:10pt;margin-right:10px;margin-left:10px;padding-top:6px;cursor:auto}
#snd_logo{background-image:url(http://cdn.sendori.com/images/logo.png);background-repeat:no-repeat;height:17px;width:65px;cursor:auto;float:left;margin-right:10px;margin-top:1px}
#sndsug{font:arial,helvetica,sans-serif!important;font-size:16px!important}
#sndsug a{color:#000!important;text-decoration:none!important;padding-left:6px}
.suggest_logo{background-image:url(http://cdn.sendori.com/images/feedback_logo.png);background-position:center;background-repeat:no-repeat;float:left;height:16px;padding-top:7px;width:25px}
#snds{display:block!important}
#notification_message{color:#FFF;float:left;font-family:Helvetica;font-size:8pt;font-weight:700;padding-left:0;margin-top:5px;text-decoration:none}
#coupon_message{color:#FFF;float:left;font-family:Helvetica;font-size:16px;font-weight:bold;padding-left:270px;margin-top:3px;text-decoration:none;text-shadow: #333 0.1em 0.1em 0.2em;}
#notification_alert{background-image:url(http://cdn.sendori.com/images/icon_alert.png);background-position:center center;background-repeat:no-repeat;float:left;height:16px;padding-left:10px;padding-top:5px;width:16px}
#slider_container{width:510px;height:146px;display:none;position:fixed;left:50%;bottom:0;margin-left:-255px;z-index:9999999999;border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;box-shadow:0 0 9px #515151;-webkit-box-shadow:0 0 9px #515151;-moz-box-shadow:0 0 9px #515151}
#coupon_container{width:710px;height:146px;display:none;position:fixed;left:50%;bottom:0;margin-left:-370px;z-index:9999999999;border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;box-shadow:0 0 9px #515151;-webkit-box-shadow:0 0 9px #515151;-moz-box-shadow:0 0 9px #515151}
#coupon_container_groupon{width:710px;height:116px;display:none;position:fixed;left:50%;bottom:0;margin-left:-370px;z-index:9999999999;border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;box-shadow:0 0 9px #515151;-webkit-box-shadow:0 0 9px #515151;-moz-box-shadow:0 0 9px #515151}
#coupon_container_grouponmerchant{width:710px;height:146px;display:none;position:fixed;left:50%;bottom:0;margin-left:-370px;z-index:9999999999;border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;box-shadow:0 0 9px #515151;-webkit-box-shadow:0 0 9px #515151;-moz-box-shadow:0 0 9px #515151}
#Nx_slider_container{width:510px;height:26px;display:none;position:fixed;left:50%;bottom:0;margin-left:-255px;border-radius:4px 4px 0 0;-webkit-border-radius:4px 4px 0 0;-moz-border-radius:4px 4px 0 0;z-index:9999999999;border-left:1px #1A5189;border-top:1px #1A5189;border-right:1px #1A5189;box-shadow:0 0 9px #515151;-webkit-box-shadow:0 0 9px #515151;-moz-box-shadow:0 0 9px #515151}
#coupon_description{width:440px;font-family:Helvetica;font-size:14px;color:#000;margin-top:6px;text-align:left;}
.couponCode{background:linear-gradient(centerbottom,white,#EEEEEE0px,white15px) repeat scroll 0 0 transparent;border:2px solid #CCC;color:#33669A;font-size:1.5em;text-shadow:1px 1px 0 #CCC;width:120px!important;padding:2px 4px}
#code{margin-right:5px;margin-top:60px;left:auto;right:0;top:0;position:absolute}
#code a{color:#000;display:inline-block;font-size:12px;font-weight:700;padding-top:5px;text-decoration:none}
.hideOnLoad{display:none}
#sndSugTbl{background-color:#FFF;width:570px}
.buttonMoreOld{ border-top:1px solid #96d1f8;  background:#326DB1;  background:-webkit-gradient(linear,left top,left bottom,from(#3e779d),to(#326DB1));  background:-webkit-linear-gradient(top,#3e779d,#326DB1);  background:-moz-linear-gradient(top,#3e779d,#326DB1);  background:-ms-linear-gradient(top,#3e779d,#326DB1);  background:-o-linear-gradient(top,#3e779d,#326DB1);  padding:5px 10px;  -webkit-border-radius:5px;  -moz-border-radius:5px;  border-radius:5px;  -webkit-box-shadow:rgba(0,0,0,1) 0 1px 0;  -moz-box-shadow:rgba(0,0,0,1) 0 1px 0;  box-shadow:rgba(0,0,0,1) 0 1px 0;  text-shadow:rgba(0,0,0,.4) 0 1px 0;  color:white;  font-size:13px;  font-weight:bold;  font-family:Helvetica,Arial,Sans-Serif;  text-decoration:none;  vertical-align:middle;  height:15px; margin-right:15px; width:92px; margin-top:85px; left:auto; right:0; top:0; position:absolute }
.buttonMore{padding-left: 0;padding-right: 0;width: 112px;border-radius: 6px 6px 6px 6px;background-color: #FF6633;background-image: linear-gradient(#FF9933, #FF6633);background-size: 100% auto;border: 0 none;color: white;cursor: pointer;font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;font-size: 13.4px;font-weight: bold;line-height: 1.5em;overflow: visible;padding:6px 3px;text-shadow: 0 -1px 1px gray;}
.buttonMore:hover{background-image: linear-gradient(#FF7F00, #FF4000);background-size: 100% auto;}
.moreBtnSection{margin-right:15px; margin-top:82px; left:auto; right:0; top:0; position:absolute;}
.marginTopMore{margin-top:-20px!important;}
.buttonSavings{padding-left: 0;padding-right: 0;width: 112px;border-radius: 6px 6px 6px 6px;background-color: #FF6633;background-image: linear-gradient(#FF7F00, #FF4000);background-size: 100% auto;border: 0 none;color: white;cursor: pointer;font-family: "Helvetica Neue",Helvetica,Arial,"Lucida Grande",sans-serif;font-size: 13.4px;font-weight: bold;line-height: 1.5em;overflow: visible;padding:6px 3px;text-shadow: 0 -1px 1px gray;}
.buttonSavings:hover{background-image: linear-gradient(#FF7F00, #FF4000);background-size: 100% auto;}
.savingsBtnSection{margin-right:15px; margin-top:55px; left:auto; right:0; top:0; position:absolute;}
#grouponIcon{background-repeat:no-repeat;margin-left:5px;margin-top:40px;height:60px;width:120px;float:left;position:absolute;border:1px solid #DFDFDF}

</style>