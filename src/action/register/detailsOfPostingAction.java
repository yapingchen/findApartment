package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import javax.swing.JOptionPane;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.savedwholeapt;
import model.wholeapt;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class detailsOfPostingAction extends ActionSupport {
private String Id;
private String type;
private List<wholeapt> listofPosting;
private wholeapt posting;

private String email_poster;
private String rooms;
private String baths;
private String sqft;
private String rent;
private String laundry;
private String parking;
private String cats;
private String dogs;
private String smoking;
private String street;
private String apt;
private String city;
private String state;
private String description;
/* check box of email and phone */
private String email_contact;
private String phone_contact;
private String phone_contact_type;
private String available_date;
private String end_date;
private String continuelease;
private String create_time;
private String address;

private String img1;
private String img2;
private String hint;
private List<savedwholeapt> savedlist;




	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String seeDetails() throws IOException{
		
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		hint="(Not Provided)";
		
		try{
			System.out.println("id is="+Id);
			System.out.println("type is "+type);
			if(type.equals("whole")){
				listofPosting=session.selectList("selectwholepostingById", Integer.parseInt(Id));
			}
			
			if(type.equals("share")){
				listofPosting=session.selectList("selectsharedpostingById", Integer.parseInt(Id));
			}
			
			if(type.equals("sublease")){
				listofPosting=session.selectList("selectsubletpostingById", Integer.parseInt(Id));
			}
			
			posting=listofPosting.get(0);
			/* get the details of this posting */
			rooms=posting.getRooms();
			baths=posting.getBaths();
			rent=posting.getRent();
			cats=posting.getCats();
			dogs=posting.getDogs();
			smoking=posting.getSmoking();
			sqft=posting.getSqft();
			laundry=posting.getLaundry();
			parking=posting.getParking();
			street=posting.getStreet();
			state=posting.getState();
			city=posting.getCity();
			description=posting.getDescription();
			email_contact=posting.getEmail_contact();
			phone_contact=posting.getPhone_contact();
			phone_contact_type=posting.getPhone_contact_type();
			available_date=posting.getAvailable_date();
			end_date=posting.getEnd_date();
			create_time=posting.getCreate_time();
			continuelease=posting.getContinuelease();
			img1=posting.getImg1();
			img2=posting.getImg2();
			address=street+","+city+","+state;
			ActionContext.getContext().getSession().put("mapaddress", address);
			
		System.out.println("dogs="+dogs);
			if(sqft.equals("")) sqft=hint;
			if(smoking == null) smoking=hint;
			if(cats==null) cats=hint;
			if(dogs==null) dogs=hint;
			if(apt==null) apt=hint;
			
			if(email_contact==null) email_contact=hint;
			if(phone_contact==null) phone_contact=hint;
			if(phone_contact_type==null) phone_contact_type=hint;
			if(continuelease==null) continuelease=hint;
			
			return SUCCESS;
		}finally{
			session.close();
		}

	}
	
	public String deletesavedPosting() throws IOException{
	
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		try{
			savedwholeapt aa=new savedwholeapt();
			/*delete saved posting by user's email and postingID*/	
			System.out.println("Id in deletedsaved Posting:"+Id);
			int res;
			res=JOptionPane.showConfirmDialog(null,"Are you sure you want to post this message?",
					"Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
			if(res==JOptionPane.YES_OPTION){
				aa.setPostingID(Id);
				aa.setUserID((String) ActionContext.getContext().getSession().get("email"));
				
				if(type.equals("whole")){
					session.delete("deletesavedpostingofwholeapt",aa);
				}else if(type.equals("share")){
					session.delete("deletesavedpostingofsharedapt",aa);
				}else{
					session.delete("deletesavedpostingofsubleaseapt",aa);	
				}
				session.commit();	
	    		JOptionPane.showMessageDialog(null,"Deleted Successfully!","Message",JOptionPane.INFORMATION_MESSAGE);

			}else{
				return "nodelete";
			}
			
		}finally{
			
			session.close();
		}
		return "deleteok";
		
		
		
	}
	
	public String deletePosting(){
		System.out.println("Id="+Id);
		System.out.println("type="+type);
		
		String resource = "orm/configuration.xml";
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		try{
			if(type.equals("whole")){
				savedlist=session.selectList("selectsavedpostingOfwholeaptbyId",Id);
				System.out.println("size in savedlist="+savedlist.size());
			}else if(type.equals("share")){
				savedlist=session.selectList("selectsavedpostingOfsharedaptById",Id);	
			}else savedlist=session.selectList("selectsavedpostingOfsubletaptById",Id);	
			
			int res;
			
			if(savedlist.size()>0){
				res=JOptionPane.showConfirmDialog(null,"Some users have already saved your posting, if you choose to delete this posting, are you sure you still want to delete this posting?",
						"Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
			}else{
				res=JOptionPane.showConfirmDialog(null,"Are you sure you want to delete this posting?",
						"Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
			}
			
			if(res==JOptionPane.YES_OPTION){
				if(type.equals("whole")){
					session.delete("deletepostingofwholeaptById",Id);
					if(savedlist.size()>0){
					for(int i=0;i<savedlist.size();++i){
						session.delete("deletesavedpostingofwholeaptById",savedlist.get(i).getId());
					  }
					}
					session.commit();
					JOptionPane.showConfirmDialog(null,"Deleted Successfully!",
							"Message",JOptionPane.OK_OPTION);
			
				
				}else if(type.equals("share")){
					
					session.delete("deletepostingofsharedaptById",Id);
					if(savedlist.size()>0){
					for(int i=0;i<savedlist.size();++i){
						session.delete("deletesavedpostingofsharedaptById",savedlist.get(i).getId());
					  }
					}
					session.commit();
					JOptionPane.showConfirmDialog(null,"Deleted Successfully!",
							"Message",JOptionPane.OK_OPTION);
				}else{
					
					session.delete("deletepostingofsubleaseaptById",Id);
					if(savedlist.size()>0){
					for(int i=0;i<savedlist.size();++i){
						session.delete("deletesavedpostingofsubleaseaptById",savedlist.get(i).getId());
					  }
					}
					session.commit();
					JOptionPane.showConfirmDialog(null,"Deleted Successfully!",
							"Message",JOptionPane.OK_OPTION);
				
				}
				
				return "deleteok";

			}else{
				return "nodelete";
			}
		}finally{
			session.close();
		}
		
		
	}

	public String updatePosting(){
		System.out.println("Id in update="+Id);
		System.out.println("type in update="+type);
		
		String resource = "orm/configuration.xml";
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		try{
			if(type.equals("whole")){
				listofPosting=session.selectList("selectwholepostingById",Id);
				posting=listofPosting.get(0);
				System.out.println(posting.getApt());
				getPosting();
				
			}else if(type.equals("share")){
				
			}else{
				
			}
			
			return "updatedok";
		}finally{
			session.close();
		}
		
		
	}
	
	public wholeapt getPosting() {
		return posting;
	}



	public void setPosting(wholeapt posting) {
		this.posting = posting;
	}



	public String getEmail_poster() {
		return email_poster;
	}



	public void setEmail_poster(String email_poster) {
		this.email_poster = email_poster;
	}



	public String getRooms() {
		return rooms;
	}



	public void setRooms(String rooms) {
		this.rooms = rooms;
	}



	public String getBaths() {
		return baths;
	}



	public void setBaths(String baths) {
		this.baths = baths;
	}



	public String getSqft() {
		return sqft;
	}



	public void setSqft(String sqft) {
		this.sqft = sqft;
	}



	public String getRent() {
		return rent;
	}



	public void setRent(String rent) {
		this.rent = rent;
	}



	public String getLaundry() {
		return laundry;
	}



	public void setLaundry(String laundry) {
		this.laundry = laundry;
	}



	public String getParking() {
		return parking;
	}



	public void setParking(String parking) {
		this.parking = parking;
	}



	public String getCats() {
		return cats;
	}



	public void setCats(String cats) {
		this.cats = cats;
	}



	public String getDogs() {
		return dogs;
	}



	public void setDogs(String dogs) {
		this.dogs = dogs;
	}



	public String getSmoking() {
		return smoking;
	}



	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}



	public String getStreet() {
		return street;
	}



	public void setStreet(String street) {
		this.street = street;
	}



	public String getApt() {
		return apt;
	}



	public void setApt(String apt) {
		this.apt = apt;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getEmail_contact() {
		return email_contact;
	}



	public void setEmail_contact(String email_contact) {
		this.email_contact = email_contact;
	}



	public String getPhone_contact() {
		return phone_contact;
	}



	public void setPhone_contact(String phone_contact) {
		this.phone_contact = phone_contact;
	}



	public String getPhone_contact_type() {
		return phone_contact_type;
	}



	public void setPhone_contact_type(String phone_contact_type) {
		this.phone_contact_type = phone_contact_type;
	}



	public String getAvailable_date() {
		return available_date;
	}



	public void setAvailable_date(String available_date) {
		this.available_date = available_date;
	}



	public String getEnd_date() {
		return end_date;
	}



	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}



	public String getContinuelease() {
		return continuelease;
	}



	public void setContinuelease(String continuelease) {
		this.continuelease = continuelease;
	}



	public String getCreate_time() {
		return create_time;
	}



	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}



	public String getImg1() {
		return img1;
	}



	public void setImg1(String img1) {
		this.img1 = img1;
	}



	public String getImg2() {
		return img2;
	}



	public void setImg2(String img2) {
		this.img2 = img2;
	}



	public String getHint() {
		return hint;
	}



	public void setHint(String hint) {
		this.hint = hint;
	}



	public List<wholeapt> getListofPosting() {
		return listofPosting;
	}

	public void setListofPosting(List<wholeapt> listofPosting) {
		this.listofPosting = listofPosting;
	}

	public String getId() {
	return Id;
}

public void setId(String id) {
	Id = id;
}



public String getType() {
	return type;
}



public void setType(String type) {
	this.type = type;
}

}
