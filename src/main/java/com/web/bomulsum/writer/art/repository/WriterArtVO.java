package com.web.bomulsum.writer.art.repository;

import java.sql.Date;
import java.util.List;

//작품 테이블
public class WriterArtVO {
	
	private String artCodeSeq;
	private String writerCodeSeq;
	private String artPhoto;
	private String artName;
	private int artPrice;
	private int artDiscount;
	private int artCount;
	private String artDescription;
	private String artCategory;
	private String artKeyword;
	private int artViewCount;
	private int artPoint;
	private String artSaleStatus;
	private Date artRecommendTime;
	
	public String getArtCodeSeq() {
		return artCodeSeq;
	}

	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}

	public String getWriterCodeSeq() {
		return writerCodeSeq;
	}

	public void setWriterCodeSeq(String writerCodeSeq) {
		this.writerCodeSeq = writerCodeSeq;
	}

	public String getArtPhoto() {
		return artPhoto;
	}

	public void setArtPhoto(String artPhoto) {
		this.artPhoto = artPhoto;
	}

	public String getArtName() {
		return artName;
	}

	public void setArtName(String artName) {
		this.artName = artName;
	}

	public int getArtPrice() {
		return artPrice;
	}

	public void setArtPrice(int artPrice) {
		this.artPrice = artPrice;
	}

	public int getArtDiscount() {
		return artDiscount;
	}

	public void setArtDiscount(int artDiscount) {
		this.artDiscount = artDiscount;
	}

	public int getArtCount() {
		return artCount;
	}

	public void setArtCount(int artCount) {
		this.artCount = artCount;
	}

	public String getArtDescription() {
		return artDescription;
	}

	public void setArtDescription(String artDescription) {
		this.artDescription = artDescription;
	}

	public String getArtCategory() {
		return artCategory;
	}

	public void setArtCategory(String artCategory) {
		this.artCategory = artCategory;
	}

	public String getArtKeyword() {
		return artKeyword;
	}

	public void setArtKeyword(String artKeyword) {
		this.artKeyword = artKeyword;
	}

	public int getArtViewCount() {
		return artViewCount;
	}

	public void setArtViewCount(int artViewCount) {
		this.artViewCount = artViewCount;
	}

	public int getArtPoint() {
		return artPoint;
	}

	public void setArtPoint(int artPoint) {
		this.artPoint = artPoint;
	}

	public String getArtSaleStatus() {
		return artSaleStatus;
	}

	public void setArtSaleStatus(String artSaleStatus) {
		this.artSaleStatus = artSaleStatus;
	}

	public Date getArtRecommendTime() {
		return artRecommendTime;
	}

	public void setArtRecommendTime(Date artRecommendTime) {
		this.artRecommendTime = artRecommendTime;
	}

	@Override
	public String toString() {
		return "WriterArtVO [artCodeSeq=" + artCodeSeq + ", writerCodeSeq=" + writerCodeSeq + ", artPhoto=" + artPhoto
				+ ", artName=" + artName + ", artPrice=" + artPrice + ", artDiscount=" + artDiscount + ", artCount="
				+ artCount + ", artDescription=" + artDescription + ", artCategory=" + artCategory + ", artKeyword="
				+ artKeyword + ", artViewCount=" + artViewCount + ", artPoint=" + artPoint + ", artSaleStatus="
				+ artSaleStatus + ", artRecommendTime=" + artRecommendTime + "]";
	}
	
	
}
