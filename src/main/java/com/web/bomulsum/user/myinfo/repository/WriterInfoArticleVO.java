package com.web.bomulsum.user.myinfo.repository;

public class WriterInfoArticleVO {
	private String artCodeSeq;
	private String artPhoto;
	private String writerCodeSeq;
	private String writerProfileImg;
	private String writerUrl;
	private String writerName;
	private String writerBrandName;
	private String writerIntro;
	public String getArtCodeSeq() {
		return artCodeSeq;
	}
	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}
	public String getArtPhoto() {
		return artPhoto;
	}
	public void setArtPhoto(String artPhoto) {
		this.artPhoto = artPhoto;
	}
	public String getWriterCodeSeq() {
		return writerCodeSeq;
	}
	public void setWriterCodeSeq(String writerCodeSeq) {
		this.writerCodeSeq = writerCodeSeq;
	}
	public String getWriterProfileImg() {
		return writerProfileImg;
	}
	public void setWriterProfileImg(String writerProfileImg) {
		this.writerProfileImg = writerProfileImg;
	}
	public String getWriterUrl() {
		return writerUrl;
	}
	public void setWriterUrl(String writerUrl) {
		this.writerUrl = writerUrl;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getWriterBrandName() {
		return writerBrandName;
	}
	public void setWriterBrandName(String writerBrandName) {
		this.writerBrandName = writerBrandName;
	}
	public String getWriterIntro() {
		return writerIntro;
	}
	public void setWriterIntro(String writerIntro) {
		this.writerIntro = writerIntro;
	}
	@Override
	public String toString() {
		return "WriterInfoArticleVO [artCodeSeq=" + artCodeSeq + ", artPhoto=" + artPhoto + ", writerCodeSeq="
				+ writerCodeSeq + ", writerProfileImg=" + writerProfileImg + ", writerUrl=" + writerUrl
				+ ", writerName=" + writerName + ", writerBrandName=" + writerBrandName + ", writerIntro=" + writerIntro
				+ "]";
	}
	
	
}
