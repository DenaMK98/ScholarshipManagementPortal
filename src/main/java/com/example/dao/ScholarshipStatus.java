package com.example.dao;

public class ScholarshipStatus {
	
	private String first_name;
	private String emailId;
	private String address;
	private String contact;
	private float ssc;
	private float hsc;
	private String stream;
	private String college;
	private float cutoff;
	private String status;
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public float getSsc() {
		return ssc;
	}
	public void setSsc(float ssc) {
		this.ssc = ssc;
	}
	public float getHsc() {
		return hsc;
	}
	public void setHsc(float hsc) {
		this.hsc = hsc;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public float getCutoff() {
		return cutoff;
	}
	public void setCutoff(float cutoff) {
		this.cutoff = cutoff;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ScholarshipStatus [first_name=" + first_name + ", emailId=" + emailId + ", address=" + address
				+ ", contact=" + contact + ", ssc=" + ssc + ", hsc=" + hsc + ", stream=" + stream + ", college="
				+ college + ", cutoff=" + cutoff + ", status=" + status + "]";
	}
	
	

}
