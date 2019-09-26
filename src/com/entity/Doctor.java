package com.entity;

import java.util.HashMap;
import java.util.Map;

public class Doctor {
	private String dtel;
	private String dname;
	
	private String dpwd;
	private String drepwd;
	private Map<String,String> errors=null;
	public Doctor() {
		this.dtel="";
		this.dname="";
		
		this.dpwd="";
		this.drepwd="";
		this.errors=new HashMap<String,String>();
	}
	public boolean isValidate() {
		boolean flag=true;
		/*if(!this.usertel.matches("\\[1]d{10}")) {
			flag=false;
			this.usertel="";
			errors.put("errusertel", "输入号码不合法");
		}*/
		/*if(!this.uname.matches("\\w{4,10}")) {
			flag=false;
			this.uname="";
			errors.put("errusername", "用户名是4~10位字母或数字");
		}
		if(!this.useremail.matches("\\w+@\\w+\\.\\w+\\.?\\w")) {
			flag=false;
			this.useremail="";
			errors.put("erruseremail", "输入的邮箱不合法。");
		}
		if(!this.upwd.matches("\\w{6,15}")) {
			flag=false;
			this.upwd="";
			errors.put("errpassword", "密码是6~15位的字母或数字。");
		}*/
		if(!this.drepwd.equals(dpwd)) {
			flag=false;
			this.drepwd="";
			errors.put("errrepassword", "与密码不一致！");
		}
		return flag;
		
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
	public String getUtel() {
		return dtel;
	}
	public void setUtel(String utel) {
		this.dtel = utel;
	}
	public String getUname() {
		return dname;
	}
	public void setUname(String uname) {
		this.dname = uname;
	}
	public String getUpwd() {
		return dpwd;
	}
	public void setUpwd(String upwd) {
		this.dpwd = upwd;
	}
	public String getUrepwd() {
		return drepwd;
	}
	public void setUrepwd(String urepwd) {
		this.drepwd = urepwd;
	}
	
}
