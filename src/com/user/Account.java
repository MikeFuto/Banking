package com.user;

public class Account {

	public int		accountNum;
	private String	nickName;
	private double	balance;
	private String	odStatus;	
	
public Account() {
		
	}

public Account(int accountNum, String nickName, double balance, String odStatus) {
	
	this.accountNum = accountNum;
	this.nickName = nickName;
	this.balance = balance;
	this.odStatus = odStatus;
}


@Override
public String toString() {
	return "Account [accountNum=" + accountNum + ", nickName=" + nickName + ", balance=" + balance + ", odStatus="
			+ odStatus + "]";
}





public int getAccountNum() {
	return accountNum;
}



public void setAccountNum(int accountNum) {
	this.accountNum = accountNum;
}



public String getNickName() {
	return nickName;
}



public void setNickName(String nickName) {
	this.nickName = nickName;
}



public double getBalance() {
	return balance;
}



public void setBalance(double balance) {
	this.balance = balance;
}



public String getOdStatus() {
	return odStatus;
}



public void setOdStatus(String odStatus) {
	this.odStatus = odStatus;
}



}
