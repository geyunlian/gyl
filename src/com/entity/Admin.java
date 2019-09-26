package com.entity;

import java.util.HashMap;
import java.util.Map;

public class Admin {
	
	private String aname;
	
	private String apwd;

	private Map<String,String> errors=null;
	public Admin() {
		
		this.aname="";
		
		this.apwd="";
	
		this.errors=new HashMap<String,String>();
	}
	public void isValidate() {
		boolean flag=true;
		
		
	}
	public String getErrorMsg(String key) {
		String value=this.errors.get(key);
		return value==null?"":value;
	}
	
	public Map<String, String> getErrors() {
		return errors;
	}
	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}
	
	public String getUname() {
		return aname;
	}
	public void setUname(String uname) {
		this.aname = uname;
	}
	public String getUpwd() {
		return apwd;
	}
	public void setUpwd(String upwd) {
		this.apwd = upwd;
	}
	
	
}
