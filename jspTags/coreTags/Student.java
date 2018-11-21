package com.luv2code.jsp.tagdemo;

public class Student {
	
	private String firstName;
	private String lastName;
	private boolean goldCustomers;
	
	public Student(String firstName, String lastName, boolean goldCustomers) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.goldCustomers = goldCustomers;
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

	public boolean isGoldCustomers() {
		return goldCustomers;
	}

	public void setGoldCustomers(boolean goldCustomers) {
		this.goldCustomers = goldCustomers;
	}
	
}
