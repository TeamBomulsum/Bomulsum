package com.web.bomulsum.writer.art.repository;

public class WriterArtOptionCategoryVO {
	private String artCategorySeq;
	private String artOptionSeq;
	private String artOptionName;
	private String artOptionPrice;
	
	@Override
	public String toString() {
		return "WriterArtOptionCategoryVO [artCategorySeq=" + artCategorySeq + ", artOptionSeq=" + artOptionSeq
				+ ", artOptionName=" + artOptionName + ", artOptionPrice=" + artOptionPrice + "]";
	}

	public String getArtCategorySeq() {
		return artCategorySeq;
	}

	public void setArtCategorySeq(String artCategorySeq) {
		this.artCategorySeq = artCategorySeq;
	}

	public String getArtOptionSeq() {
		return artOptionSeq;
	}

	public void setArtOptionSeq(String artOptionSeq) {
		this.artOptionSeq = artOptionSeq;
	}

	public String getArtOptionName() {
		return artOptionName;
	}

	public void setArtOptionName(String artOptionName) {
		this.artOptionName = artOptionName;
	}

	public String getArtOptionPrice() {
		return artOptionPrice;
	}

	public void setArtOptionPrice(String artOptionPrice) {
		this.artOptionPrice = artOptionPrice;
	}
	
	
}
