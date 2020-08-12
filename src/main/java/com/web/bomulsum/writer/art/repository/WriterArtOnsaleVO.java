package com.web.bomulsum.writer.art.repository;

public class WriterArtOnsaleVO {
	
	private String artCodeSeq;
	private String artPhoto;
	private String artName;
	private int artPrice;
	private int artDiscount;
	private int artAmount;
	private int artViewCount;
	private int artSaleCount;
	private int bookmartCount;
	private int reviewCount;
	
	@Override
	public String toString() {
		return "WriterArtOnsaleVO [artCodeSeq=" + artCodeSeq + ", artPhoto=" + artPhoto + ", artName=" + artName
				+ ", artPrice=" + artPrice + ", artDiscount=" + artDiscount + ", artAmount=" + artAmount
				+ ", artViewCount=" + artViewCount + ", artSaleCount=" + artSaleCount + ", bookmartCount="
				+ bookmartCount + ", reviewCount=" + reviewCount + "]";
	}

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

	public int getArtAmount() {
		return artAmount;
	}

	public void setArtAmount(int artAmount) {
		this.artAmount = artAmount;
	}

	public int getArtViewCount() {
		return artViewCount;
	}

	public void setArtViewCount(int artViewCount) {
		this.artViewCount = artViewCount;
	}

	public int getArtSaleCount() {
		return artSaleCount;
	}

	public void setArtSaleCount(int artSaleCount) {
		this.artSaleCount = artSaleCount;
	}

	public int getBookmartCount() {
		return bookmartCount;
	}

	public void setBookmartCount(int bookmartCount) {
		this.bookmartCount = bookmartCount;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	
	

}
