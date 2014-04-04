<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">

    <title>Posting of Apartments For Renting</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/ustified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <%--  <script>
    function details(){
    	var url=document.getElementById("url");
    	alert(url);
    window.location.href="detailsOfPosting_seeDetails";
    }
   
    </script> --%>
</head>
<body>

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
				<s:fielderror/>
	<s:debug/>		
</form>	
</body>
</html>