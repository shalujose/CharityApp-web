package com.revature.charityapp.dao;

import java.sql.SQLException;
import java.util.List;
import com.revature.charityapp.Model.Category;

import com.revature.charityapp.Model.User;
import com.revature.charityapp.exception.DBException;

public interface IUserDAO {
	
	User findByNamePassword(String email,String password) throws SQLException, DBException;
	public void register(User user) throws DBException;
	//public void LoginAdmin() throws Exception;
	public List<Category> displayCategory() throws SQLException;
}
