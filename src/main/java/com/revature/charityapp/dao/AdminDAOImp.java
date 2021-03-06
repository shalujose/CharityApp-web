package com.revature.charityapp.dao;

import java.sql.SQLException;
import java.util.List;

import com.revature.charityapp.Model.Amount;
import com.revature.charityapp.Model.Request;
import com.revature.charityapp.Model.Transaction;
import com.revature.charityapp.exception.DBException;

public interface AdminDAOImp {
	
	List<Request> viewRequest() throws SQLException;
	List<Transaction> viewResponse() throws SQLException, DBException;
	List<Amount> matchAmount() throws SQLException;
	public void fund_request(int category_Id,double amount) throws Exception;
	public void resetPasword(String password) throws Exception;
	public void addCategory(String category_name) throws Exception;
}
