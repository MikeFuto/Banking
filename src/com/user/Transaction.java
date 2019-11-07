package com.user;

public class Transaction {

	private String	date;
	private String	time;
	private String	email;
	private String	transactionType;
	private Double	transactionAmount;
	private int		checkNum;
	private int		checkAccount;
	private int		checkRouting;
	private String  transactionStatus;
	

public Transaction() {}

public Transaction(String date, String	time, String email, String	transactionType
		, Double transactionAmount , int checkNum , int checkAccount , int checkRouting) {
	
	this.date = date;
	this.time = time;
	this.email = email;
	this.transactionType = transactionType;
	this.transactionAmount = transactionAmount;
	this.checkNum = checkNum;
	this.checkAccount = checkAccount;
	this.checkRouting = checkRouting;
	}
	
	
	//file data structure
		//date,time,email,transactionType,transactionAmount,checkNum,checkAccount,checkRouting
		
@Override
public String toString() {
	return "Transaction [date=" + date + ", time=" + time + ", email=" + email + ", transactionType="
			+ transactionType + ", transactionAmount=" + transactionAmount + ", checkNum=" + checkNum
			+ ", checkAccount=" + checkAccount + ", checkRouting=" + checkRouting + "]";
}
	
	
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public Double getTransactionAmount() {
		return transactionAmount;
	}
	public void setTransactionAmount(Double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}
	public int getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(int checkNum) {
		this.checkNum = checkNum;
	}
	public int getCheckAccount() {
		return checkAccount;
	}
	public void setCheckAccount(int checkAccount) {
		this.checkAccount = checkAccount;
	}
	public int getCheckRouting() {
		return checkRouting;
	}
	public void setCheckRouting(int checkRouting) {
		this.checkRouting = checkRouting;
	}
	public String getTransactionStatus() {
		return transactionStatus;
	}

	public void setTransactionStatus(String transactionStatus) {
		this.transactionStatus = transactionStatus;
	}

	
	
	
	
	
}
