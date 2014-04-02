package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import model.user;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport implements ServletRequestAware{
private String email;
private String password;
private HttpServletRequest servletRequest;
private List<user> userlist;
private user u;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws IOException{
		
		/* connect database */
    	String resource = "orm/configuration.xml";
		Reader reader = Resources.getResourceAsReader(resource);
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession session = sessionFactory.openSession();
		
		try{
			email=servletRequest.getParameter("email");
			password=servletRequest.getParameter("password");
			
			if(email.equals("")){
	    		JOptionPane.showMessageDialog(null,"Please input email address!","Message",JOptionPane.ERROR_MESSAGE);
	            return "retry";
			}
			
			if(password.equals("")){
	    		JOptionPane.showMessageDialog(null,"Please input password!","Message",JOptionPane.ERROR_MESSAGE);
	            return "retry";
			}
			
			userlist=session.selectList("selectuserbyemail",email);
			if(userlist.isEmpty()){
				JOptionPane.showMessageDialog(null,"This email address is not in record!","Message",JOptionPane.ERROR_MESSAGE);
	            return "retry";
			}else{
			u=userlist.get(0);
			if(password.equals(u.getPwd())){
				/* set session */
			    ActionContext.getContext().getSession().put("email",email);   
				return "loginok";
			}else{
				JOptionPane.showMessageDialog(null,"Wrong Password!","Message",JOptionPane.ERROR_MESSAGE);
	            return "retry";
			}
			
			}
			
		}finally{
			session.close();
		}
		
		
		
		
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest=servletRequest;  
		
	}

}
