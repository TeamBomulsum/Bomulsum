package com.web.bomulsum.writer.login.repository;

public class WriterRegisterVO {

	private String writerEmail;
	private String writerPassword;
	private String wrtierName;
	
	public String getWriterEmail() {
		return writerEmail;
	}
	public void setWriterEmail(String writerEmail) {
		this.writerEmail = writerEmail;
	}
	public String getWriterPassword() {
		return writerPassword;
	}
	public void setWriterPassword(String writerPassword) {
		this.writerPassword = writerPassword;
	}
	public String getWrtierName() {
		return wrtierName;
	}
	public void setWrtierName(String wrtierName) {
		this.wrtierName = wrtierName;
	}
	@Override
	public String toString() {
		return "WriterRegisterVO [writerEmail=" + writerEmail + ", writerPassword=" + writerPassword + ", wrtierName="
				+ wrtierName + "]";
	}
	
	
	
}
