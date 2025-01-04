package com.artist;

/*
Name W. J. K. FERNANDO
ITNUMBER IT22232472
Metro
*/ 

public class Artist {
	
	private int AID;
	private String name;
	private String artist_name;
	private String dob; 
	private String gender;
	private String phone; 
	private String email;
	private String qualification;
	private String username;
	
	public Artist(int aID, String name, String artist_name, String dob, String gender, String phone, String email,
			String qualification, String username) {
		AID = aID;
		this.name = name;
		this.artist_name = artist_name;
		this.dob = dob;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.qualification = qualification;
		this.username = username;
	}

	public int getAID() {
		return AID;
	}

	public String getName() {
		return name;
	}

	public String getArtist_name() {
		return artist_name;
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

	public String getQualification() {
		return qualification;
	}

	public String getUsername() {
		return username;
	}
	
}
