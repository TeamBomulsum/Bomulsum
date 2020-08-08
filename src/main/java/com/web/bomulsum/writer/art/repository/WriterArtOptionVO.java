package com.web.bomulsum.writer.art.repository;

public class WriterArtOptionVO {
	private String artOptionSeq;
	private String artCodeSeq;
	private String artOptionCategory;
	
	@Override
	public String toString() {
		return "WriterArtOptionVO [artOptionSeq=" + artOptionSeq + ", artCodeSeq=" + artCodeSeq + ", artOptionCategory="
				+ artOptionCategory + "]";
	}
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
	
	

}
