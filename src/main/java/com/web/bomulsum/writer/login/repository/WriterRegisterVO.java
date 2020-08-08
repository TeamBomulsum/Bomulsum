package com.web.bomulsum.writer.login.repository;


public class WriterRegisterVO {

	private String writerSeq;
	private String writerEmail;
	private String writerPassword;
	private String wrtierName;
	private String sessionId;
	private String limitTime;
	private boolean autoLogin;
	
	
	
	
	
	public String getWriterSeq() {
		return writerSeq;
	}
	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}
	public boolean isAutoLogin() {
		return autoLogin;
	}
	public void setAutoLogin(boolean autoLogin) {
		this.autoLogin = autoLogin;
	}
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public String getLimitTime() {
		return limitTime;
	}
	public void setLimitTime(String limitTime) {
		this.limitTime = limitTime;
	}
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
		return "WriterRegisterVO [writerSeq=" + writerSeq + ", writerEmail=" + writerEmail + ", writerPassword="
				+ writerPassword + ", wrtierName=" + wrtierName + ", sessionId=" + sessionId + ", limitTime="
				+ limitTime + ", autoLogin=" + autoLogin + "]";
	}
	
	
	
	
	
}
