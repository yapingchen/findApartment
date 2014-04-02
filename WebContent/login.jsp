<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<s:form action="login" method="post"> 
				<table border="1" align="center" >
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
				<td><s:submit value="Submit"></s:submit></td>
                 <td><s:submit value="Cancel"></s:submit></td>
				</tr>										
		  </table>	
		  <s:debug/>
								</s:form>
</body>
</html>