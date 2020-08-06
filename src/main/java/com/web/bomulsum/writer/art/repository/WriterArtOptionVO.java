package com.web.bomulsum.writer.art.repository;

public class WriterArtOptionVO {
	
	private String artOptionSeq;
	private String memberCodeSeq;
	private String artCodeSeq;
	private String artOptionName;
	private int artOptionPrice;
	private String artOptionChoice;
	private int artOptionCount;
	private String artOptionPay;
	
	@Override
	public String toString() {
		return "writerArtOptionVO [artOptionSeq=" + artOptionSeq + ", memberCodeSeq=" + memberCodeSeq + ", artCodeSeq="
				+ artCodeSeq + ", artOptionName=" + artOptionName + ", artOptionPrice=" + artOptionPrice
				+ ", artOptionChoice=" + artOptionChoice + ", artOptionCount=" + artOptionCount + ", artOptionPay="
				+ artOptionPay + "]";
	}

	public String getArtOptionSeq() {
		return artOptionSeq;
	}

	public void setArtOptionSeq(String artOptionSeq) {
		this.artOptionSeq = artOptionSeq;
	}

	public String getMemberCodeSeq() {
		return memberCodeSeq;
	}

	public void setMemberCodeSeq(String memberCodeSeq) {
		this.memberCodeSeq = memberCodeSeq;
	}

	public String getArtCodeSeq() {
		return artCodeSeq;
	}

	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}

	public String getArtOptionName() {
		return artOptionName;
	}

	public void setArtOptionName(String artOptionName) {
		this.artOptionName = artOptionName;
	}

	public int getArtOptionPrice() {
		return artOptionPrice;
	}

	public void setArtOptionPrice(int artOptionPrice) {
		this.artOptionPrice = artOptionPrice;
	}

	public String getArtOptionChoice() {
		return artOptionChoice;
	}

	public void setArtOptionChoice(String artOptionChoice) {
		this.artOptionChoice = artOptionChoice;
	}

	public int getArtOptionCount() {
		return artOptionCount;
	}

	public void setArtOptionCount(int artOptionCount) {
		this.artOptionCount = artOptionCount;
	}

	public String getArtOptionPay() {
		return artOptionPay;
	}

	public void setArtOptionPay(String artOptionPay) {
		this.artOptionPay = artOptionPay;
	}
	
}
