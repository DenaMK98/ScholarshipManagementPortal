package com.example.dao;

public class AdminLoginInfo {
	
	private String adminName;
	private String adminEmailId;
	private String adminPassword;
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminEmailId() {
		return adminEmailId;
	}
	public void setAdminEmailId(String adminEmailId) {
		this.adminEmailId = adminEmailId;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	@Override
	public String toString() {
		return "AdminLoginInfo [adminName=" + adminName + ", adminEmailId=" + adminEmailId + ", adminPassword="
				+ adminPassword + "]";
	}
	
	

}
