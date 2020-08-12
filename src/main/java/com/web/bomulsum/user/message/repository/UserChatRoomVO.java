package com.web.bomulsum.user.message.repository;

public class UserChatRoomVO {
	private String writerCode;
	private String writerName;
	private String writerImg;
	public String getWriterCode() {
		return writerCode;
	}
	public void setWriterCode(String writerCode) {
		this.writerCode = writerCode;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getWriterImg() {
		return writerImg;
	}
	public void setWriterImg(String writerImg) {
		this.writerImg = writerImg;
	}
	@Override
	public String toString() {
		return "UserChatRoomVO [writerCode=" + writerCode + ", writerName=" + writerName + ", writerImg=" + writerImg
				+ "]";
	}
	
	
}
