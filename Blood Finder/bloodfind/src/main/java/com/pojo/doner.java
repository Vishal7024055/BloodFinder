package com.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class doner {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private String mobile;
	private String dob;
	private String bgrp;
	private String State;
	private String city;
	private String hiv;
	
	
	public doner() {
		super();
	}


	public doner(int id, String name, String email, String mobile, String dob, String bgrp, String state, String city,
			String hiv) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.dob = dob;
		this.bgrp = bgrp;
		this.State = state;
		this.city = city;
		this.hiv = hiv;
	}
	public doner( String name, String email, String mobile, String dob, String bgrp, String state, String city,
			String hiv) {

		
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.dob = dob;
		this.bgrp = bgrp;
		this.State = state;
		this.city = city;
		this.hiv = hiv;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getBgrp() {
		return bgrp;
	}


	public void setBgrp(String bgrp) {
		this.bgrp = bgrp;
	}


	public String getState() {
		return State;
	}


	public void setState(String state) {
		State = state;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getHiv() {
		return hiv;
	}


	public void setHiv(String hiv) {
		this.hiv = hiv;
	}


	@Override
	public String toString() {
		return "doner [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", dob=" + dob
				+ ", bgrp=" + bgrp + ", State=" + State + ", city=" + city + ", hiv=" + hiv + "]";
	}



	
	
}
