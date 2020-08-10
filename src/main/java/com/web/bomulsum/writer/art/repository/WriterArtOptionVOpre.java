package com.web.bomulsum.writer.art.repository;

public class WriterArtOptionVOpre {
	
	private String artOptionSeq;
	private String artCodeSeq;
	private String artOptionCategory;
	private String artOptionName;
	private int artOptionPrice;
	

	@Override
	public String toString() {
		return "WriterArtOptionVO [artOptionSeq=" + artOptionSeq + ", artCodeSeq=" + artCodeSeq + ", artOptionCategory="
				+ artOptionCategory + ", artOptionName=" + artOptionName + ", artOptionPrice=" + artOptionPrice + "]";
	}
	/*
	public String toStringCate() {
		return (artOptionCategory);
	}
	public String toStringName() {
		return (artOptionName);
	}
*/
	public String getArtOptionSeq() {
		return artOptionSeq;
	}

	public void setArtOptionSeq(String artOptionSeq) {
		this.artOptionSeq = artOptionSeq;
	}

	public String getArtCodeSeq() {
		return artCodeSeq;
	}

	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}

	public String getArtOptionCategory() {
		return artOptionCategory;
	}

	public void setArtOptionCategory(String artOptionCategory) {
		this.artOptionCategory = artOptionCategory;
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

	
	
}
