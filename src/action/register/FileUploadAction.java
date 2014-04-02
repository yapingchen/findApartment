package action.register;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.text.DateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import model.wholeapt;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

 public class FileUploadAction extends ActionSupport implements ServletRequestAware   {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	    private File[] toBeUploaded;  
	    private String[] toBeUploadedFileName;  
	    private String[] toBeUploadedContentType;  
	    private HttpServletRequest servletRequest;  
	    private String email_poster;
	    private String type_of_posting;
	    private String rooms;
	    private String baths;
	    private String sqft;
	    private String rent;
	    private String laundry;
	    private String parking;
	    private String pets_cat;
	    private String pets_dog;
	    private String smoking;
	    private String street;
	    private String apt;
	    private String city;
	    private String state;
	    private String description;
	    /* check box of email and phone */
	    private String emailcontact;
	    private String phonecontact;
	    /* value of email and phone */
	    private String inputemail;
	    private String inputphone;
	    private String phone_contact_type;
	    private String available_date;
	    private String end_date;
	    private String create_time;
	    private String continuelease;
	    private wholeapt newpost;

    
	    public String execute() throws IOException  
	    {  
	    	/* connect database */
	    	String resource = "orm/configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
			
			try{
				/* check whether the user has logined */
				email_poster=(String) ActionContext.getContext().getSession().get("email");
				System.out.println("email_poster="+email_poster);
				if(email_poster==null){
					JOptionPane.showMessageDialog(null,"Before posting, please login first!","Message",JOptionPane.ERROR_MESSAGE);
					return "login";
				}
				newpost=new wholeapt();
				type_of_posting=servletRequest.getParameter("type_of_posting");
				rooms=servletRequest.getParameter("rooms");
		    	baths=servletRequest.getParameter("baths");
		    	sqft=servletRequest.getParameter("sqft");
		    	rent=servletRequest.getParameter("rent");
		    	laundry=servletRequest.getParameter("laundry");
		    	parking=servletRequest.getParameter("parking");
		    	
		    	pets_cat=servletRequest.getParameter("pets_cat");
		    	pets_dog=servletRequest.getParameter("pets_dog");
		    	smoking=servletRequest.getParameter("smoking");
		    	street=servletRequest.getParameter("street");
		    	apt=servletRequest.getParameter("apt");
		    	city=servletRequest.getParameter("city");
		    	state=servletRequest.getParameter("state");
		    	description=servletRequest.getParameter("description");
		    	emailcontact=servletRequest.getParameter("emailcontact");
		    	phonecontact=servletRequest.getParameter("phonecontact");
		    	available_date=servletRequest.getParameter("availabledate");
		    	end_date=servletRequest.getParameter("enddate");
		    	continuelease=servletRequest.getParameter("continuelease");
		    	
		    	if(rent.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"Rent is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "input";
		    	}
		    	
		    	if(street.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"street is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "retry";
		    	}
		    	
		    	if(city.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"city is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "retry";
		    	}
		    	
		    	if(state.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"state is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "retry";
		    	}
		    	
		    	if(available_date.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"Available Date is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "retry";
		    	}
		    	
		    	if(end_date.equals(""))  {
		    		JOptionPane.showMessageDialog(null,"End Date is required!","Message",JOptionPane.ERROR_MESSAGE);
		    		return "retry";
		    	}
		    	
		    	/* initialize the created time of the posting */
		    	DateFormat d1 = DateFormat.getDateTimeInstance(); 
		    	create_time=d1.format(new Date());    	
		    
		    	System.out.println("rooms="+servletRequest.getParameter("rooms"));
		    	System.out.println("baths="+servletRequest.getParameter("baths"));
		    	System.out.println("sqft="+servletRequest.getParameter("sqft"));
		    	System.out.println("rent="+servletRequest.getParameter("rent"));
		    	System.out.println("laundry="+servletRequest.getParameter("laundry"));
		    	System.out.println("parking="+servletRequest.getParameter("parking"));
		    	System.out.println("pets_cat="+servletRequest.getParameter("pets_cat"));
		    	System.out.println("pets_dog="+servletRequest.getParameter("pets_dog"));
		    	System.out.println("smoking="+servletRequest.getParameter("smoking"));
		    	System.out.println("street="+servletRequest.getParameter("street"));
		    	System.out.println("apt="+servletRequest.getParameter("apt"));
		    	System.out.println("city="+servletRequest.getParameter("city"));
		    	System.out.println("state="+servletRequest.getParameter("state"));
		    	System.out.println("description="+servletRequest.getParameter("description"));
		    	System.out.println("emailcontact="+servletRequest.getParameter("emailcontact"));
		    	System.out.println("phonecontact="+servletRequest.getParameter("phonecontact"));
		    	System.out.println("inputemail="+servletRequest.getParameter("inputemail"));
		    	System.out.println("inputphone="+servletRequest.getParameter("inputphone"));
		    	System.out.println("phone_contact_type="+servletRequest.getParameter("phone_contact_type"));
		    	System.out.println("available_date="+servletRequest.getParameter("availabledate"));
		    	System.out.println("end_date="+servletRequest.getParameter("enddate"));
		    	System.out.println("continuelease="+servletRequest.getParameter("continuelease"));
		    	System.out.println("create_time="+create_time);
		    	
		    	System.out.println("file:"+toBeUploaded);
		    	System.out.println("smoking:"+smoking);
		    	newpost.setEmail_poster(email_poster);
		    	newpost.setRooms(rooms);
		    	newpost.setBaths(baths);
		    	newpost.setSqft(sqft);
		    	newpost.setRent(rent);
		    	newpost.setLaundry(laundry);
		    	newpost.setParking(parking);
		    	newpost.setCats(pets_cat);
		    	newpost.setDogs(pets_dog);
		    	newpost.setSmoking(smoking);
		    	newpost.setStreet(street);
		    	newpost.setApt(apt);
		    	newpost.setCity(city);
		    	newpost.setState(state);
		    	newpost.setDescription(description);
		    	newpost.setAvailable_date(available_date);
		    	newpost.setEnd_date(end_date);
		    	newpost.setContinuelease(continuelease);
		    	newpost.setCreate_time(create_time);
		    	
		    	if(emailcontact==null){
		    		
		    	}else if(emailcontact.equals("ok")){
		    		inputemail=servletRequest.getParameter("inputemail");
		    		newpost.setEmail_contact(inputemail);
		    	}
		    	
		    	
               if(phonecontact==null){
		    		
		    	}else if(phonecontact.equals("ok")){
		    		inputphone=servletRequest.getParameter("inputphone");
			    	phone_contact_type=servletRequest.getParameter("phone_contact_type");

			    	newpost.setPhone_contact(inputphone);
			    	newpost.setPhone_contact_type(phone_contact_type);
		    	}
		    	
		    	
		    	if(toBeUploaded!=null){
		    		/* upload files to server */
			        for(int i=0;i<toBeUploaded.length;++i){
			    	 String filePath = "E:/upload/";  

			         System.out.println(filePath);
			         System.out.println("file="+toBeUploaded[i]);
			         System.out.println("filename="+toBeUploadedFileName[i]);

			         File fileToCreate = new File(filePath, this.toBeUploadedFileName[i]);  
			         if(i==0){
				         newpost.setImg1(""+filePath+toBeUploadedFileName[i]);
			         }
			         if(i==1){
				         newpost.setImg2(""+filePath+toBeUploadedFileName[i]);

			         }
			         try {  
			            FileUtils.copyFile(this.toBeUploaded[i], fileToCreate);  
			        } catch (IOException e) {  
			            addActionError(e.getMessage());  
			        }
			     }
		    	}
		    	
		    	int res;
				res=JOptionPane.showConfirmDialog(null,"Are you sure you want to post this message?",
						"Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
				
				if(res==JOptionPane.YES_OPTION){
					/* insert this record to corresponding table accroding to the type of the posting */
			    	if(type_of_posting.equals("wholeapartment")) {
			    		newpost.setType("whole");
			    		session.insert("insertnewpostofwholeapartment",newpost);
			    	}
			    	if(type_of_posting.equals("sharedapartment"))  {
			    		newpost.setType("share");
			    		session.insert("insertnewpostofsharedapartment",newpost);
			    	}
			    	if(type_of_posting.equals("sublease")) {
			    		newpost.setType("sublease");
			    		session.insert("insertnewpostofsubleaseapartment",newpost);
			    	}

				 	session.commit();	
					return SUCCESS;  
				}
				else{
					return "nopost";
				}
		    	
	            
			 
	         
			}finally{
				session.close();
			}
			

	    }  
	
	    public File[] getToBeUploaded() {
			return toBeUploaded;
		}

		public void setToBeUploaded(File[] toBeUploaded) {
			this.toBeUploaded = toBeUploaded;
		}

		
	    public String[] getToBeUploadedFileName() {
			return toBeUploadedFileName;
		}

		public void setToBeUploadedFileName(String[] toBeUploadedFileName) {
			this.toBeUploadedFileName = toBeUploadedFileName;
		}

		public String[] getToBeUploadedContentType() {
			return toBeUploadedContentType;
		}

		public void setToBeUploadedContentType(String[] toBeUploadedContentType) {
			this.toBeUploadedContentType = toBeUploadedContentType;
		}

		public void setServletRequest(HttpServletRequest servletRequest) {  
	        this.servletRequest=servletRequest;  
	          
	    }

    
}