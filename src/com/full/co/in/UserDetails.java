package com.full.co.in;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;
@PersistenceCapable
public class UserDetails {
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	@Persistent
	private String email;
	@Persistent
	private String name;
	@Persistent
	private String password;
	@Persistent
	String mobile;
	

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	UserDetails(String email,String name,String password, String mobile)
	{
	
		this.email=email;
		this.name=name;
		this.password=password;
		this.mobile=mobile;
	}
	
	

	public UserDetails() {
		// TODO Auto-generated constructor stub
	}

	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		// TODO Auto-generated method stub
		return mobile;
	}



}
