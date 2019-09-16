package com.revature.charityapp.Services;

import java.sql.SQLException;

import com.revature.charityapp.Model.User;
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
	public User findByNameAndPassword(String name, String password) {
		try {
			userdao.findByNamePassword(name, password);
		} catch (DBException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
