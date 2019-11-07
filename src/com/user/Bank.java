package com.user;

import java.util.ArrayList;


public class Bank {

	
	private String	name;
	private String  phone;
	private String	email;
  	private Address address;
	
	public User[] userList = new User[0];				//works
	
//  	corresponding single instance of an user for the array???????????
//  	or is this an array of users with unspecified length???????
//	public User user = new User();
	
//		this is the corresponding array list	
//	userList = new ArrayList<>();

//		this seem to be getting a value about the ArrayList
//	ArrayList<User> userList = (ArrayList<User>)session.getAttribute("user");
//	public ArrayList<User> userList = ArrayList<User>[0];								//	not working

public Bank() {
	
}	
	
	
	
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}



}
