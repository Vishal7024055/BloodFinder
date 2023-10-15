package com.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class user {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
private String email;
private String password;
private String Role;


public user() {
	super();
}
public user(int id,String email, String password,String Role) {
	
	this.email = email;
	this.password = password;
	this.Role=Role;

}
public user(String email, String password, String Role) {
	
	this.email = email;
	this.password = password;
	this.Role=Role;
	}
	


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


public String getRole() {
	return Role;
}
public void setRole(String role) {
	Role = role;
}
@Override
public String toString() {
	return "user [id=" + id + ", email=" + email + ", password=" + password + ", Role=" + Role + "]";
}


}
