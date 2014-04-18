package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import model.savedwholeapt;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class savePostingAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String type;
	private String Id;
	private String userID;
	private savedwholeapt save;
	private List<savedwholeapt> savelist;

	/**
	 * 
	 */
	public String execute() throws IOException{
		
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		SqlSession session2 = sessionFactory.openSession();
	
		try{
			System.out.println("sdsds");
			userID=(String) ActionContext.getContext().getSession().get("email");
			if(userID==null){
				JOptionPane.showMessageDialog(null,"Please login first!","Message",JOptionPane.ERROR_MESSAGE);
				return "login";
			}
			System.out.println(userID);
			System.out.println(type);
			System.out.println(Id);
			
			save=new savedwholeapt();
			save.setUserID(userID);
			save.setPostingID(Id);
			System.out.println(type);
			System.out.println(Id);
			
			int res;
			res=JOptionPane.showConfirmDialog(null,"Are you sure you want to save this posting?",
					"Confirm",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
			
			if(res==JOptionPane.YES_OPTION){
				if(type.equals("whole")){
					savelist=new ArrayList<savedwholeapt>();
					savelist=session2.selectList("checkduplicatesavedwholeapt",save);
					if(savelist.size()>0) {
						JOptionPane.showConfirmDialog(null,"You have already saved this posting before!",
								"Message",JOptionPane.WARNING_MESSAGE);
						return "returntolistwholeapt";
					}
		            session.insert("insertnewsavedwholeapt", save);
		            session.commit();
					return "returntolistwholeapt";
				}
				
				if(type.equals("share")){
					savelist=new ArrayList<savedwholeapt>();
					savelist=session2.selectList("checkduplicatesavedsharedapt",save);
					if(savelist.size()>0) {
						JOptionPane.showConfirmDialog(null,"You have already saved this posting before!",
								"Message",JOptionPane.WARNING_MESSAGE);
						return "returntolistsharedapt";
					}
		            session.insert("insertnewsavedsharedapt", save);
		            session.commit();
					return "returntolistsharedapt";
				}
				
				else{
					savelist=new ArrayList<savedwholeapt>();
					savelist=session2.selectList("checkduplicatesavedsubleaseapt",save);
					if(savelist.size()>0) {
						JOptionPane.showConfirmDialog(null,"You have already saved this posting before!",
								"Message",JOptionPane.WARNING_MESSAGE);
						return "returntolistsubletapt";
					}
		            session.insert("insertnewsavedsubleaseapt", save);
		            session.commit();
					return "returntolistsubletapt";
				}
				
				
			}else{
				if(type.equals("whole")) 	return "returntolistwholeapt";
				if(type.equals("share"))     return "returntolistsharedapt";
				else   return "returntolistsubletapt";
				
			}
			
			
			
		}finally{
			session.close();
		}		
		
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	


	public String getUserID() {
	return userID;
}
public void setUserID(String userID) {
	this.userID = userID;
}
public savedwholeapt getSave() {
	return save;
}
public void setSave(savedwholeapt save) {
	this.save = save;
}

}
