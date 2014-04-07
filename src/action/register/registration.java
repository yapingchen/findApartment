package action.register;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.regex.Pattern;

import javax.swing.JOptionPane;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.opensymphony.xwork2.ActionSupport;

import model.user;

public class registration extends ActionSupport{
	
	    private String email;
	    private String password;
	    private String confirmpassword;
	    private List<user> userlist;
	    private user newuser;
	    private String originalpassword;
	    
	    
	


	public String registration() throws IOException {
		System.out.println("email in reg="+email);
		System.out.println("pw in reg="+password);
		System.out.println("cpw in reg="+confirmpassword);
		
		 String resource = "orm/configuration.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
			SqlSession session = sessionFactory.openSession();
      
			try{     
               
      		String check = "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
			Pattern regex = Pattern.compile(check);
			java.util.regex.Matcher matcher = regex.matcher(email);
			boolean isMatched = matcher.matches();
			
            userlist = session.selectList("selectuserbyemail", email);
	
                 
/*check whether the email address is valid */
                 	
      if(email.equals("")||password.equals("")||confirmpassword.equals(""))
     {
        
        JOptionPane.showMessageDialog(null,"Please fill required information!","Message",JOptionPane.WARNING_MESSAGE);
     }
     else if(!confirmpassword.equals(password))
     {
     JOptionPane.showMessageDialog(null,"Two passwords don't match, please type again!","Message",JOptionPane.WARNING_MESSAGE);
     }
     else if(!isMatched)
     {
    	 JOptionPane.showMessageDialog(null,"This email address is invalid!","Message",JOptionPane.WARNING_MESSAGE);
     }
     
     else if(!(userlist.isEmpty()))
     {
    	 JOptionPane.showMessageDialog(null,"This email address has been registered!","Message",JOptionPane.WARNING_MESSAGE);
			      }
      
         
     else {
    	 //insert new user
    	 newuser=new user();
    	 newuser.setEmail(email);
    	 newuser.setPwd(password);
         session.insert("insertuserinfo",newuser);
 	    session.commit();	
        JOptionPane.showMessageDialog(null,"Registered Successfully!","Message",JOptionPane.INFORMATION_MESSAGE);
            return SUCCESS;
     }

             }finally{
                 session.close();
             }
             
             return "fail";
	}
	
	
	public String cancel(){
		System.out.print("cancel");
		return "cancel";
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


	public String getConfirmpassword() {
		return confirmpassword;
	}


	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}


	public List<user> getUserlist() {
		return userlist;
	}


	public void setUserlist(List<user> userlist) {
		this.userlist = userlist;
	}


	public user getNewuser() {
		return newuser;
	}


	public void setNewuser(user newuser) {
		this.newuser = newuser;
	}


	public String getOriginalpassword() {
		return originalpassword;
	}


	public void setOriginalpassword(String originalpassword) {
		this.originalpassword = originalpassword;
	}
	
}
