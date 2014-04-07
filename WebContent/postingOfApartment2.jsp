<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posting</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:797px;
	height:513px;
	z-index:1;
	left: 52px;
	top: 22px;
}

#required{
color:#F00;
}
</style>
<%-- <script>
        function uploadFile() {
        	 var url="FileUploadActionAjax";
        	 toBeUploaded=document.getElementById("f1");

          
           if(window.XMLHttpRequest){
               req=new XMLHttpRequest();
           }else if(window.ActiveXObject){
               req=new ActiveXObject("Microsoft.XMLHTTP");
           }
           
           alert("aaaa");
           req.open("POST",url,true);
           req.onreadystatechange=callback;
           /* send this json object to servlet */
           req.send();
           
        }
        
        
        function callback(){
            if(req.readyState===4){
                if (req.status===200){
                    alert("bbbb");

                	document.getElementById("span1").innerHTML=req.responseText.parseJSON().result;
                }
            }
        }
     </script> --%>
     
<script>
   
  /* choose date */
  
   var stateData=
         {
             "state":["----","PA","CA"],
             "----":["----"],
             "PA": ["Pittsburgh","Philadelphia"],
             "CA": ["SanFransicso","LosAngeles"]
          };
  
   function choosecity(){
       var selectedState=document.getElementById("state");
       var cities=document.getElementById("city");
           cities.innerHTML="";
	var state=selectedState.value;
          
     var len=stateData[state].length;
	 var cityData=stateData[state];
		
	for(var i=0,len=cityData.length;i<len;++i){
	var op=document.createElement("option");
	op.value=cityData[i];
	op.innerHTML=cityData[i];
	cities.appendChild(op);
          }
} 
   
   /* choose available date */
  $(function() {
     $( "#datepicker" ).datepicker({
         minDate: new Date()
     });
     
   });
   
  /* choose end date */
  $(function() {
	     $( "#datepicker2" ).datepicker({
	         minDate: new Date()
	     });
	   });
  
  /* control email span */
  function showEmail(){
	   var emailSpan=document.getElementById("emailSpan");
	   var emailCheckBox=document.getElementById("emailcontact");
	   if(emailCheckBox.checked){
		   var op="<input name='inputemail'></input>";
		   emailSpan.innerHTML=op;
	       }
	   else{
		   emailSpan.innerHTML="";
	   }
	   }
  
  /* control phone span */
    function showPhone(){

	   var phoneSpan=document.getElementById("phoneSpan");
	   var phoneContactTypeSpan=document.getElementById("phoneContactTypeSpan");
	   var phoneCheckBox=document.getElementById("phonecontact");
	   if(phoneCheckBox.checked){
		   var op="<input name='inputphone' placeholder='eg.2403572432'></input>";
		   var op2="<label><input type='radio' name='phone_contact_type' value='only call'>Call Only</label>"+
		            " <label><input type='radio' name='phone_contact_type' value='only text'>Text Only"+
		             "</label><label><input type='radio' name='phone_contact_type' value='call and text are both ok'>Both</label>";
		   phoneSpan.innerHTML=op;
		   phoneContactTypeSpan.innerHTML=op2;
	       }
	   else{
		   phoneSpan.innerHTML="";
		   phoneContactTypeSpan.innerHTML="";
	       }
	   }
    
    
   </script>
   
  
 
  
</head>
<body>

<div id="apDiv1">
<s:form action="FileUploadAction" method="post" theme="simple" enctype="multipart/form-data"> 
 <div id="apDiv1">
  <table width="1001" border="1">
  
  
     <tr>
      <td width="144">Type of Posting :</td>
      <td width="199"><label><input type="radio" name="type_of_posting" value="wholeapartment" checked>Whole Apartment</label></td>
      <td width="226"><label><input type="radio" name="type_of_posting" value="sharedapartment">Find roommates</label></td>
      <td width="170"><label><input type="radio" name="type_of_posting" value="sublease">Sublease Apartment</label></td>
      <td width="228">&nbsp;</td>
    </tr>
    
    
    <tr>
      <td width="144">Available rooms:<span id="required">*</span></td>
      <td width="199">
      <select name="rooms">
      <option value="1">1</option>
      <option  value="2">2</option>
       <option  value="3">3</option>
       <option  value="4">4</option>
       </select></td>
      <td width="226">&nbsp;</td>
      <td width="170">&nbsp;</td>
      <td width="228">&nbsp;</td>
    </tr>
    <tr>
      <td>Baths:<span id="required">*</span></td>
      <td> <select name="baths">
      <option value="0">0</option>
      <option  value="0.5">0.5</option>
       <option  value="1">1</option>
       <option  value="1.5">1.5</option>
       <option  value="2">2</option>
       <option  value="2.5">2.5</option>
       <option  value="3">3</option>
       </select></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>sqft:</td>
      <td><input name="sqft" placeholder="eg.1400"></input>  </td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Rent:<span id="required">*</span></td>
      <td>$<input name="rent" placeholder="eg.1000 in total"></input></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Laundry:<span id="required">*</span></td>
      <td><select name="laundry">
<option value="w/d in unit">w/d in unit</option>
<option value="laundry in bldg">laundry in bldg</option>
<option value="laundry on site">laundry on site</option>
<option value="w/d hookups">w/d hookups</option>
</select></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Parking:<span id="required">*</span></td>
      <td><select name="parking">
<option value="carport">carport</option>
<option value="attached garage">attached garage</option>
<option value="detached garage">detached garage</option>
<option value="off-street parking">off-street parking</option>
<option value="street parking">street parking</option>
<option value="valet parking">valet parking</option>
</select></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Pets:</td>
      <td><label><input type="checkbox" name="pets_cat" value="ok">cats ok</label>
<label><input type="checkbox" name="pets_dog" value="ok">dogs ok</label></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Smoking:</td>
      <td><label><input type="radio" name="smoking" value="Yes">Yes</label>
<label><input type="radio" name="smoking" value="No">No</label></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Address:</td>
      <td><label>Street:<span id="required">*</span><input name="street" placeholder="4717 ellsworth ave"></input></label></td>
      <td><label>Apt No.:
          <input name="apt" placeholder="eg.102"></input></label></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>State:<span id="required">*</span>   
         <select name="state" id="state" style="width:130px"  onchange="choosecity()">
              <option value="---"></option>
              <option value="PA">PA</option>
               <option value="CA">CA</option>
          </select>
          
      </label></td>
      <td><label>City:<span id="required">*</span>
      <select name="city" id="city" style="width:150px">
            </select>

          </label></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>More descriptions:</td>
      <td><textarea name="description" placeholder="you can write more descriptions about your apartment/house"></textarea></td>
    </tr>
   
   
   
   <tr>
      <td width="144">Contact: </td>
      <td width="199"><label><input type="checkbox" id="emailcontact" name="emailcontact" value="ok" onClick="showEmail()">email</label></td>
      <td width="226"><span id="emailSpan"></span></td>
      <td width="170">&nbsp;</td>
      <td width="228">&nbsp;</td>
    </tr>
    
       
     <tr>
      <td width="144"></td>
      <td width="199"><label><input type="checkbox" id="phonecontact" name="phonecontact" value="ok" onClick="showPhone()">phone</label></td>
      <td width="226"><span id="phoneSpan"></span></td>
      <td width="170"><span id="phoneContactTypeSpan"></span></td>
      <td width="228">&nbsp;</td>
    </tr>
    
    
    
     <tr>
      <td width="144">Available Date:<span id="required">*</span></td>
      <td width="199"><input type="text" id="datepicker" name="availabledate"></td>
      <td width="226">End Date:<span id="required">*</span></td>
      <td width="170"><input type="text" id="datepicker2" name="enddate"></td>
      <td width="228"><label><input type="checkbox" name="continuelease" value="yes">Could continue after lease?</label></td>
    </tr>
    
    
     <tr>
      <td width="144">Upload Pictures:</td>
      <td width="199"><s:file name="toBeUploaded" label="File1" /></td>
      <td width="226">&nbsp;</td>
      <td width="170">&nbsp;</td>
      <td width="228">&nbsp;</td>
    </tr>
    
     <tr>
      <td width="144"></td>
      <td width="199"><s:file name="toBeUploaded" label="File2" /></td>
      <td width="226">&nbsp;</td>
      <td width="170">&nbsp;</td>
      <td width="228">&nbsp;</td>
    </tr>
    
     <tr>
      <td><s:submit value="Submit" /></td>
      <td><s:reset value="Reset"></s:reset></td>
    </tr>
  </table>
<s:debug/>
<div>
<s:fielderror />
</div>
<s:debug/>
</div>
 </s:form>
 </div>



</body>
</html>