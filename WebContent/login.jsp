<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/ustified-nav.css" rel="stylesheet">
<link href="css/docs.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
 <link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" /> 
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<script>
function signin(){
	 window.location.href="login";
}

function cancelReg(){
	alert("cancel");
	 window.location.href="register_cancel.action";
}

function register(){
	 window.location.href="register_registration.action";
}
</script>


</head>
<body class="bg-warning">
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
            <li><a href="index.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="#"><i class="fa fa-globe"></i>About</a></li>
				<li><a href="#"><i class="fa fa-phone-square"></i>Contact Us</a></li>
          </ul>
            <ul class="nav navbar-nav navbar-right">
            <li id="fat-menu" class="dropdown">
              <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">ssss <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
              </ul>
            </li>
          </ul>
            
        </div>
	<!-- /.navbar -->
	</div>
    </nav>
	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-12 col-sm-9">
				<p class="pull-right visible-xs">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="offcanvas">Toggle nav</button>
				</p>
				<div class="jumbotron">
					<h1>Hello, world!</h1>
					<p>This is an example to show the potential of an offcanvas
						layout pattern in Bootstrap. Try some responsive-range viewport
						sizes to see it in action.</p>
				</div>

			</div>
		</div>
	</div>

   <!--   form for login -->
	<s:form role="form" action="login" method="post">

		<div>
			<center>
				<h1>Sign In</h1>
			</center>
		</div>

		<table align="center">
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div class="form-group">
						<center>
							<!-- <label class="sr-only" for="exampleInputEmail2">Email address</label> -->
							<input name="email" class="form-control" id="exampleInputEmail2"
								placeholder="Enter email">
						</center>
					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div class="form-group">

						<!-- <label class="sr-only" for="exampleInputPassword2">Password</label> -->
						<input type="password" name="password" class="form-control"
							id="exampleInputPassword2" placeholder="Password">

					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div>
						<button type="submit" class="btn btn-default" onClick="signin()">Sign in</button>
					</div>
				</td>
				<td></td>
			</tr>
		</table>
		<%-- <table class="center-block table table-hover" border="1" align="center" >
					 <tbody class="table-hover">
					 <tr class="warning">
					 <td>Email(*)</td>
					<td>
						<input name="email"></input>
                                               
					</td>
				</tr>	
				</tbody>			
				<tbody class="table-hover">
				<tr>
				     <td>
						Password(*)
					</td>  
                      <td>
						<input name="password" ></input>
					</td>         
				</tr>			    
			</tbody>
			<tr class="warning">
			
				<td><button type="button" class="btn btn-info btn-lg">Large button</button></td>
				<td><input class="btn btn-default" type="submit" value="Input"></td>
				<td><s:submit class="btn btn-info" value="Submit"></s:submit></td>
                 <td><s:submit class="btn btn-info" value="Cancel"></s:submit></td>
				</tr>
		</table> --%>
		<%-- <s:debug /> --%>
	</s:form>
	
	<!-- end form for login -->
	
	<!-- form for register -->
	<s:form action="register_registration" method="post">
		<center>
			<h1>Register</h1>
		</center>
		<table align="center">
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<div class="form-group">

						<!-- <label class="sr-only" for="exampleInputEmail2">Email address</label> -->
						<input name="email" type="email" class="form-control"
							id="exampleInputEmail2" placeholder="Enter email(*)">

					</div>
				</td>
				<td></td>
			<tr>
			<tr>
				<td></td>
				<td>
					<div class="form-group">

						<!-- <label class="sr-only" for="exampleInputPassword2">Password</label> -->
						<input name="password" type="password" class="form-control"
							id="exampleInputPassword2" placeholder="Password(*)">

					</div>
				</td>
				<td></td>
			<tr>
				<td></td>
				<td>
					<div class="form-group">

						<!-- <label class="sr-only" for="exampleInputPassword2">Password</label> -->
						<input name="confirmpassword" type="password"
							class="form-control" id="exampleInputPassword2"
							placeholder="Confirm Password(*)">

					</div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>
				<div>
					<button type="submit" class="btn btn-default" onClick="register()">Register</button>
					<button type="submit" class="btn btn-default" onClick="cancelReg()">Cancel</button>
					<%-- <s:submit class="btn btn-default" value="Submit"></s:submit> --%>
					<%-- <s:submit type="button" value="Cancel" onClick="return()"></s:submit> --%>
				</div>
				</td>
				<td></td>
			</tr>
		</table>
		<%-- <table border="1" align="center" >
					 <tr>
					 <td>Email(*)</td>
					<td>
						<input name="email"></input>
                                               
					</td>
				</tr>	
							
				<tr>
				     <td>
						Password(*)
					</td>  
                      <td>
						<input name="password" ></input>
					</td>         
				</tr>	
                    
                   <tr>
                   <td>Confirm Password(*):</td>
                      <td>
						<input  name="confirmpassword"></input>
					</td>         
				</tr>	
			    
			<tr>
				<td><s:submit value="Submit"></s:submit></td>
                 <td><s:submit type="button" value="Cancel" onClick="return()"></s:submit></td>
				</tr>										
		  </table> --%>
	</s:form>
	<!-- end form for register -->
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	`

</body>
</html>