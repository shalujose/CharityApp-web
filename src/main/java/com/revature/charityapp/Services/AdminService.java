package com.revature.charityapp.Services;

import java.sql.SQLException;

import com.revature.charityapp.Model.User;
import com.revature.charityapp.dao.AdminDAO;
import com.revature.charityapp.exception.DBException;

public class AdminService {

	AdminDAO admindao=new AdminDAO();
	public User findByAdminNameAndPassword(String name, String password) {
		User user=null;
		try {
			user=admindao.findByAdminNamePassword(name, password);
		} catch (DBException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	public void sendFundRequest(int category_Id, double amount) throws Exception {
		try {
			admindao.fund_request(category_Id,amount);
		} catch (DBException e) {
			e.printStackTrace();
		}
	}
}
