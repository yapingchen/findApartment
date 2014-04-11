<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/ustified-nav.css" rel="stylesheet">
    
    <!-- Documentation extras -->
<link href="css/docs.min.css" rel="stylesheet">

<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" /> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

    <title>Posting of Apartments For Renting</title>

   <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
 <script>
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
	    
 </script>
 
</head>
<body style="padding-top: 70px">

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <!-- We use the fluid option here to avoid overriding the fixed width of a normal container within the narrow content columns. -->
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-6">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">Apartment</a>
        </div>
        
        
     

       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-6">
          <ul class="nav navbar-nav">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact Us</a></li>
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
            
        </div> <!-- /.navbar-collapse -->
      </div>
    </nav>    
    

<form action="" method="post">

 <!-- width="99%" border="0" align="center"  -->
	
   <table class="table table-hover">		
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
             <s:a href="%{url}"><img src="img/details.jpg" width="25" height="25" title="see details of posting"><img/></s:a></td>  
                             
            
             <td><s:url id="url2" action="savePosting"> 
              <s:param name="Id" value="Id"></s:param> 
               <s:param name="type" value="type"></s:param> 
                  </s:url>
            <s:a href="%{url2}"><img src="img/save.jpg" width="25" height="25" title="save posting"><img/></s:a></td>       
        </tr> 
                 </s:iterator> 
            </tbody>	
    	</table> 
</form>

<ul class="pagination">
  <li class="disabled"><a href="#">&laquo;</a></li>
  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
   <li class="active"><a href="#">2 <span class="sr-only">(current)</span></a></li>
</ul>

    
				<s:fielderror/>
	<s:debug/>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/docs.min.js"></script>
</body>
</html>