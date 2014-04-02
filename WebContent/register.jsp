<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
 	<title>Register</title>
 <body>
 
  <s:form action="register_registration" method="post"> 
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
                   <td>Confirm Password(*):</td>
                      <td>
						<input  name="confirmpassword"></input>
					</td>         
				</tr>	
			    
			<tr>
				<td><s:submit value="Submit"></s:submit></td>
                 <td><s:submit type="button" value="Cancel" onClick="return()"></s:submit></td>
				</tr>										
		  </table>	
								</s:form>
    </body>
</html>