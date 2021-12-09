package com.example.dao;

public class ScholarshipApplication {

	private String first_name;
	private String last_name;
	private String phoneNo;
	private String emailId;
	private String stream;

	public String getStream() {
		return stream;
	}

	public void setStream(String stream) {
		this.stream = stream;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	private String address;
	private float ssc;
	private float hsc;
	private float cutoff;
	private String college;

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public float getCutoff() {
		return cutoff;
	}

	public void setCutoff(float cutoff) {
		this.cutoff = cutoff;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	@Override
	public String toString() {
		return "ScholarshipApplication [first_name=" + first_name + ", last_name=" + last_name + ", phoneNo=" + phoneNo
				+ ", address=" + address + ", ssc=" + ssc + ", hsc=" + hsc + ", cutoff=" + cutoff + ", college="
				+ college + "]";
	}

}
