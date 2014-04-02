package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.wholeapt;

import com.opensymphony.xwork2.ActionSupport;

public class listWholeApartmentAction extends ActionSupport {

private List<wholeapt> wholeaptlist; 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* for whole apartment */
	public String list() throws IOException{
		String type="whole";
		listAllPostings(type);
		return "success";

		
		
	}
	
	/* for shared apaprtment */
	public String listShared() throws IOException{
		String type="share";
		listAllPostings(type);
		return "success";
	}
	
	/* for sublease apaprtment */
	public String listSublease() throws IOException{
		String type="sublease";
		listAllPostings(type);
		return "success";
	}
	
	public List<wholeapt> listAllPostings(String type) throws IOException{
		String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		try{
			if(type.equals("whole")){
				wholeaptlist=session.selectList("selectallwholeaptpost");
			}
			if(type.equals("share")){
				wholeaptlist=session.selectList("selectallsharedaptpost");
			}
			if(type.equals("sublease")){
				wholeaptlist=session.selectList("selectallsubleaseaptpost");
			}
		
			System.out.print(wholeaptlist.size());
			return wholeaptlist;

		}finally{
			session.close();
		}
	}

	public List<wholeapt> getWholeaptlist() {
		return wholeaptlist;
	}

	public void setWholeaptlist(List<wholeapt> wholeaptlist) {
		this.wholeaptlist = wholeaptlist;
	}
}
