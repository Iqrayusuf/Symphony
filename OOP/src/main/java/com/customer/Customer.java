/* Name iqra
 * IT22071620
 * Metro
 */
package com.customer;

public class Customer {
     private int  Id;
     private String name;
     private String dob;
     private String gender;
     private String phone;
     private String email;
     private String userName;
     private String password;
     
	public Customer(int Id, String name, String dob, String gender, String phone, String email, String userName,
			String password) {
	
		this.Id = Id;
		this.name = name;
		this.dob = dob;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}
	public int getId() {
		return Id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDob() {
		return dob;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getUsername() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	
}
  
