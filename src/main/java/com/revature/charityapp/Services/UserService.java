package com.revature.charityapp.Services;

import java.sql.SQLException;
import java.util.List;

import com.revature.charityapp.Model.Request;
import com.revature.charityapp.Model.User;
import com.revature.charityapp.dao.AdminDAO;
import com.revature.charityapp.dao.AdminDAOImp;
import com.revature.charityapp.dao.UserDAO;
import com.revature.charityapp.exception.DBException;

public class UserService {
	
	UserDAO userdao=new UserDAO();
	public void registerNow(User user) {
		try {
			userdao.register(user);
		} catch (DBException e) {
			e.printStackTrace();
		}
	}
	public User findByNameAndPassword(String email, String password) {
		User user=null;
		try {
			user = userdao.findByNamePassword(email, password);
		} catch (DBException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
		
	}

	public List<Request> viewRequest()
	{
		List<Request> list=null;
	    try {
	    	AdminDAOImp dao= new AdminDAO();
            list = dao.viewRequest();
	        display(list);
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		//return list;
		return list;
	}
	public static void display(List<Request> list) {
		StringBuilder content=new StringBuilder();
        content.append("request_id\tcategory_Id\t\tcategory_name\t\t\tdate_of_request\t\t\tamount\t\tstatus\n");
		for (Request admin : list) {
			 content.append(admin.getRequestId()).append("\t\t\t");
	            content.append(admin.getCategory_id()).append("\t\t\t");
	            content.append(admin.getCategory_name()).append("\t\t");
	            content.append(admin.getDateOfRequest()).append("\t\t");
	            content.append(admin.getAmount()).append("\t\t");
	            content.append(admin.getStatus()).append("\t\t");
	            content.append("\n");
	        }
	        System.out.println(content);
		}
	public void donateFundService(int fundrequest_id, int cate_id, int donor_id, double amount) {
		
		try {
			UserDAO.donateFund(fundrequest_id, cate_id, donor_id, amount);
		} catch (DBException e) {
			e.printStackTrace();
		}
	}
}
