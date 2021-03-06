package com.revature.charityapp.Controller;

import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.revature.charityapp.Model.Amount;
import com.revature.charityapp.Model.Category;
import com.revature.charityapp.Services.AdminService;

public class CloseRequestController {
	
public  String closeRequest(){
		
		String json = null;
		List<Amount> viewResponse = null;
		String errorMessage = null;
		AdminService adminservice=new AdminService();
		viewResponse = adminservice.closeRequest();
		
		//Convert list to json
		if ( viewResponse != null) {
			Gson gson = new Gson();
			json = gson.toJson(viewResponse);
		}
		if (errorMessage != null) {
			JsonObject obj = new JsonObject();
			obj.addProperty("errorMessage", errorMessage);
		}
		return json;
		
	}

	public static void main(String[] args) {
	CloseRequestController controller = new CloseRequestController();
	String json=controller.closeRequest();
	System.out.println(json);
}
	
}
