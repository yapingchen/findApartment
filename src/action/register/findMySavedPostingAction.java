package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.wholeapt;
import model.savedwholeapt;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class findMySavedPostingAction extends ActionSupport {
private List<wholeapt> savedpostinglist;
private List<wholeapt> templist;
private List<savedwholeapt> savedwholeaptlist;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String savedwholeapt() throws IOException{
		find("whole");
		return "success";
	}

	public String savedsharedapt() throws IOException{
		find("share");
		return "success";
	}
	
	public String savedsubletapt() throws IOException{
		find("sublet");
		return "success";
	}
	
	private List<wholeapt> find(String type) throws IOException {
		
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		SqlSession session2 = sessionFactory.openSession();
		
		try{
			String email=(String) ActionContext.getContext().getSession().get("email");
			if(type.equals("whole")){
				ActionContext.getContext().getSession().put("type", "4");
				savedpostinglist=new ArrayList<wholeapt>();
				savedwholeaptlist=session.selectList("selectsavedpostingOfwholeapt", email);
				System.out.println("saved whole apt size="+savedwholeaptlist.size());
				
				for(int i=0;i<savedwholeaptlist.size();++i){
					String postingID=savedwholeaptlist.get(i).getPostingID();
					//System.out.println("postingid="+postingID);   
					templist=session2.selectList("selectwholepostingById",postingID);
//					System.out.println("sdsdsd"+"    "+templist.size());
//					System.out.println("templist 0="+templist.get(0).getAvailable_date());
					savedpostinglist.add(templist.get(0));
				}
			}
			else if(type.equals("share")){
				ActionContext.getContext().getSession().put("type", "5");
				savedpostinglist=new ArrayList<wholeapt>();
				savedwholeaptlist=session.selectList("selectsavedpostingOfsharedapt", email);
				System.out.println("saved shared apt size="+savedwholeaptlist.size());
				
				for(int i=0;i<savedwholeaptlist.size();++i){
					String postingID=savedwholeaptlist.get(i).getPostingID();
//					System.out.println("postingid="+postingID);   
					templist=session2.selectList("selectsharedpostingById",postingID);
//					System.out.println("sdsdsd"+"    "+templist.size());
//					System.out.println("templist 0="+templist.get(0).getAvailable_date());
					savedpostinglist.add(templist.get(0));
				}
			}else{
				ActionContext.getContext().getSession().put("type", "6");
				savedpostinglist=new ArrayList<wholeapt>();
				savedwholeaptlist=session.selectList("selectsavedpostingOfsubletapt", email);
				System.out.println("saved sublet apt size="+savedwholeaptlist.size());
				
				for(int i=0;i<savedwholeaptlist.size();++i){
					String postingID=savedwholeaptlist.get(i).getPostingID();
//					System.out.println("postingid="+postingID);   
					templist=session2.selectList("selectsubletpostingById",postingID);
//					System.out.println("sdsdsd"+"    "+templist.size());
//					System.out.println("templist 0="+templist.get(0).getAvailable_date());
					savedpostinglist.add(templist.get(0));
				}
			}
			return savedpostinglist;
		}finally{
			session.close();
			session2.close();
		}
		
		
	}

	public List<wholeapt> getSavedpostinglist() {
		return savedpostinglist;
	}

	public void setSavedpostinglist(List<wholeapt> savedpostinglist) {
		this.savedpostinglist = savedpostinglist;
	}

}
