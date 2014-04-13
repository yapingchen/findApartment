<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="shortcut icon" href="../../assets/ico/favicon.ico"> -->

    <title>Find Your Suitable Apartment</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/ustified-nav.css" rel="stylesheet">
    
    <!-- Documentation extras -->
     <link href="css/docs.min.css" rel="stylesheet">
     
     <link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" /> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

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
    
    
    function wholeapt(){
    window.location.href="listWholeApartment_list.action";
    }
    function shareapt(){
        window.location.href="listSharedApartment_listShared.action";
        }
    function subletapt(){
        window.location.href="listSubleaseApartment_listSublease.action";
        }
    </script>
  </head>

<body>
 <!-- <header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="../" class="navbar-brand">Apartment</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li class="active">
          <a href="index.jsp">Home</a>
        </li>
        <li>
          <a href="aboutus.jsp">About Us</a>
        </li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" onclick="_gaq.push(['_trackEvent', 'Navbar', 'Community links', 'Expo']);">Sign Up</a></li>
        <li><a href="login.jsp" onclick="_gaq.push(['_trackEvent', 'Navbar', 'Community links', 'Blog']);">Sign In</a></li>
      </ul>
    </nav> -->
    
    
    
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
				<li><a href="#"><i class="fa fa-globe"></i>About</a></li>
				<li><a href="#"><i class="fa fa-phone-square"></i>Contact Us</a></li>
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
	
	
	
    
    <br><br><br>
    
   <!--  image gallery -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img src="img/apt1.jpg" alt="First slide" style="margin:auto;" width=400 height=400>
        </div>
        <div class="item">
          <img src="img/apt2.jpg"  alt="Second slide" style="margin:auto;" width=400 height=400>
        </div>
        <div class="item"> 
          <img src="img/apt3.jpg" alt="Third slide" style="margin:auto;" width=400 height=400>
        </div>
         <div class="item">
          <img src="img/apt4.jpg" alt="Fourth slide" style="margin:auto;" width=400 height=400>
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>
  <!-- /example -->
  
  
    
    <div>
        <table align="center" class="center-block" cellpadding="80" cellspacing="100" >
        <tr>
        <td><img src="img/apt.gif" alt="zezeze"   class="img-rounded" width=150 height=150>
        <br></br>
        <p><span>Find Whole Apartment/House</span></p>
        <p><button type="button" class="btn btn-primary btn-lg" onClick="wholeapt()">View Postings</button></p></td>
        <td><img src="img/share.jpg" alt="zezeze"   class="img-rounded" width=150 height=150>
         <br></br>
        <p><span>Find Whole Apartment/House</span></p>
        <p><button type="button" class="btn btn-primary btn-lg" onClick="shareapt()">View Postings</button></p></td>
        <td><img src="img/sublet.jpg" alt="zezeze" class="img-rounded" width=150 height=150> 
         <br></br>
        <p><span>Find Whole Apartment/House</span></p>
        <p><button type="button" class="btn btn-primary btn-lg" onClick="subletapt()">View Postings</button></p></td>
                 
           </tr>
        </table>
        </div> 
      
   <!--  </div> /container
    
     </header>  -->
  <!-- Footer-->
  <footer class="footer" ng-controller="FooterCtrl">
      <div class="content">
          <p>Designed and developed by students <a href="www.linkedin.com/pub/yaping-chen/89/36/45b/">Yaping(Zoe) Chen </a>and Regina</p>
          <ul class="footer-links">
              <li><a href="https://github.com/yapingchen/findApartment">Github</a></li>
              <li class="muted">&middot;</li>
              <li><a href="" ng-click="openModal()">Terms and Conditions</a></li>
          </ul>
      </div>
  </footer>
  <!-- At the privacy link and terms we can have a page to declare our privacy agreements.-->
  <!-- End of Footer-->
  
  <!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/docs.min.js"></script>
  
  </body>
</html>