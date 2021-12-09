package com.example.dao;

public class StudentLoginInfo {
	
	private String studentName;
	private String studentEmailId;
	private String studentPassword;
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String srudentName) {
		this.studentName = srudentName;
	}
	public String getStudentEmailId() {
		return studentEmailId;
	}
	public void setStudentEmailId(String studentEmailId) {
		this.studentEmailId = studentEmailId;
	}
	public String getStudentPassword() {
		return studentPassword;
	}
	public void setStudentPassword(String studentPassword) {
		this.studentPassword = studentPassword;
	}
	@Override
	public String toString() {
		return "StudentLoginInfo [srudentName=" + studentName + ", studentEmailId=" + studentEmailId
				+ ", studentPassword=" + studentPassword + "]";
	}
	
	

}
