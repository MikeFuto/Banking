package com.user;

public class User {

	
	private String	email;
	private String	password;	
	
	private String  firstName;
	private String  lastName;
	
	private String  phone;
	
  	private Address address;
  	private Account account;
  	private String  userStatus;

//	public Account[] accountList = new Account[0];	
//	public Account[] accountList = new ArrayList<>();
  	
  	
  	
public User() {
		
	}

public String getUserStatus() {
	return userStatus;
}



public void setUserStatus(String userStatus) {
	this.userStatus = userStatus;
}



public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
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



public Account getAccount() {
	return account;
}



public void setAccount(Account account) {
	this.account = account;
}

//-------------------------------------------------------------

	
	
	
}
