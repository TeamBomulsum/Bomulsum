package com.web.bomulsum.user.myinfo.repository;

public class MyInfoArticleVO {
	private String artCode;
	private String artImg;
	private String artName;
	private String writerName;
	private String writerBrandName;
	
	public String getWriterBrandName() {
		return writerBrandName;
	}
	public void setWriterBrandName(String writerBrandName) {
		this.writerBrandName = writerBrandName;
	}
	public String getArtCode() {
		return artCode;
	}
	public void setArtCode(String artCode) {
		this.artCode = artCode;
	}
	public String getArtImg() {
		return artImg;
	}
	public void setArtImg(String artImg) {
		this.artImg = artImg;
	}
	public String getArtName() {
		return artName;
	}
	public void setArtName(String artName) {
		this.artName = artName;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	@Override
	public String toString() {
		return "MyInfoArticleVO [artCode=" + artCode + ", artImg=" + artImg + ", artName=" + artName + ", writerName="
				+ writerName + ", writerBrandName=" + writerBrandName + "]";
	}
	
	
	
	
}
