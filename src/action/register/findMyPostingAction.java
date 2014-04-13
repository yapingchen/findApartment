package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import model.wholeapt;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class findMyPostingAction extends ActionSupport {
private List<wholeapt> mypostingofwholeaptlist; 
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String whole() throws IOException {
		
		find("whole");
		return "success";
		
	}
	
	public String share() throws IOException{
		find("share");
		return "success";
	}
	
	public String sublet() throws IOException{
		find("sublease");
		return "success";
	}

	private List<wholeapt> find(String type) throws IOException {
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		try{
			System.out.println("in action");	
			String email=(String) ActionContext.getContext().getSession().get("email");
			
			if(type.equals("whole")){
				ActionContext.getContext().getSession().put("type", "1");
			
				mypostingofwholeaptlist=session.selectList("selectmyposting", email);
				System.out.println("size in wholeapt="+mypostingofwholeaptlist.size());
			}
			else if(type.equals("share")){
				ActionContext.getContext().getSession().put("type", "2");
				mypostingofwholeaptlist=session.selectList("selectmyshareposting", email);
				System.out.println("size in share="+mypostingofwholeaptlist.size());	
			}else{
				ActionContext.getContext().getSession().put("type", "3");
				mypostingofwholeaptlist=session.selectList("selectmysubletposting", email);
				System.out.println("size in sublease="+mypostingofwholeaptlist.size());
			}
			return mypostingofwholeaptlist;
				
		}finally{
			session.close();
		}
	}

	public List<wholeapt> getMypostingofwholeaptlist() {
		return mypostingofwholeaptlist;
	}

	public void setMypostingofwholeaptlist(List<wholeapt> mypostingofwholeaptlist) {
		this.mypostingofwholeaptlist = mypostingofwholeaptlist;
	}

	
}
