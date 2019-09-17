package com.revature.charityapp.Model;

public class Request {
	private int requestId;
	private int category_id;
	private String dateOfRequest;
	private double amount;
	private String status;
	
	
	@Override
	public String toString() {
		return " [Request Id= " + requestId + "   Charity Id= " + category_id + "   Request Date= " + dateOfRequest
				+ "   Amount= " + amount + "   Request Status= " + status + "]";
	}
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	
	public String getDateOfRequest() {
		return dateOfRequest;
	}
	public void setDateOfRequest(String dateOfRequest) {
		this.dateOfRequest = dateOfRequest;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

}
