package com.web.bomulsum.writer.gempoint.repository;

import java.sql.Date;

public class WriterGempointVO {
	private String gemSeq;
	private String writeCodeSeq;
	private int gemPoint;
	private String gemUsage;
	private int gemPrice;
	private String gemLog;
	private Date gemDate;
	
	public String getGemSeq() {
		return gemSeq;
	}
	public void setGemSeq(String gemSeq) {
		this.gemSeq = gemSeq;
	}
	public String getWriteCodeSeq() {
		return writeCodeSeq;
	}
	public void setWriteCodeSeq(String writeCodeSeq) {
		this.writeCodeSeq = writeCodeSeq;
	}
	public int getGemPoint() {
		return gemPoint;
	}
	public void setGemPoint(int gemPoint) {
		this.gemPoint = gemPoint;
	}
	public String getGemUsage() {
		return gemUsage;
	}
	public void setGemUsage(String gemUsage) {
		this.gemUsage = gemUsage;
	}
	public int getGemPrice() {
		return gemPrice;
	}
	public void setGemPrice(int gemPrice) {
		this.gemPrice = gemPrice;
	}
	public String getGemLog() {
		return gemLog;
	}
	public void setGemLog(String gemLog) {
		this.gemLog = gemLog;
	}
	public Date getGemDate() {
		return gemDate;
	}
	public void setGemDate(Date gemDate) {
		this.gemDate = gemDate;
	}
	
	@Override
	public String toString() {
		return "WriterGempointVO [gemSeq=" + gemSeq + ", writeCodeSeq=" + writeCodeSeq + ", gemPoint=" + gemPoint
				+ ", gemUsage=" + gemUsage + ", gemPrice=" + gemPrice + ", gemLog=" + gemLog + ", gemDate=" + gemDate
				+ "]";
	}
	
	
	
}
