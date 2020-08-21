package com.web.bomulsum.user.review.repository;

import java.sql.Date;

public class UserReviewVO {

	//공통
	private String reviewCodeSeq;
	private String orderCodeSeq;
	private String memberCodeSeq;
	private String memberName;
	private String artCodeSeq;
	private String artName;
	
	//
	private Date reviewDate;
	private String reviewComment;
	private String reviewStar;
	private String reviewPhoto;
	private String reviewCommentRe;
	private Date reviewCommentReDate;
	private String reviewCommentReStatus;
	private String writerSeq;
	private String memberProfile;
	private String artOptionSeq;
	private String artOptionCategory;
	private String artOptionName;
	private String artOptionPrice;
	private String artOptionCount;
	private String artPrice;
	private String artDiscount;
	private String artAmount;
	private String cartStatus;
	public String getReviewCodeSeq() {
		return reviewCodeSeq;
	}
	public void setReviewCodeSeq(String reviewCodeSeq) {
		this.reviewCodeSeq = reviewCodeSeq;
	}
	public String getOrderCodeSeq() {
		return orderCodeSeq;
	}
	public void setOrderCodeSeq(String orderCodeSeq) {
		this.orderCodeSeq = orderCodeSeq;
	}
	public String getMemberCodeSeq() {
		return memberCodeSeq;
	}
	public void setMemberCodeSeq(String memberCodeSeq) {
		this.memberCodeSeq = memberCodeSeq;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getArtCodeSeq() {
		return artCodeSeq;
	}
	public void setArtCodeSeq(String artCodeSeq) {
		this.artCodeSeq = artCodeSeq;
	}
	public String getArtName() {
		return artName;
	}
	public void setArtName(String artName) {
		this.artName = artName;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getReviewComment() {
		return reviewComment;
	}
	public void setReviewComment(String reviewComment) {
		this.reviewComment = reviewComment;
	}
	public String getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(String reviewStar) {
		this.reviewStar = reviewStar;
	}
	public String getReviewPhoto() {
		return reviewPhoto;
	}
	public void setReviewPhoto(String reviewPhoto) {
		this.reviewPhoto = reviewPhoto;
	}
	public String getReviewCommentRe() {
		return reviewCommentRe;
	}
	public void setReviewCommentRe(String reviewCommentRe) {
		this.reviewCommentRe = reviewCommentRe;
	}
	public Date getReviewCommentReDate() {
		return reviewCommentReDate;
	}
	public void setReviewCommentReDate(Date reviewCommentReDate) {
		this.reviewCommentReDate = reviewCommentReDate;
	}
	public String getReviewCommentReStatus() {
		return reviewCommentReStatus;
	}
	public void setReviewCommentReStatus(String reviewCommentReStatus) {
		this.reviewCommentReStatus = reviewCommentReStatus;
	}
	public String getWriterSeq() {
		return writerSeq;
	}
	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}
	public String getMemberProfile() {
		return memberProfile;
	}
	public void setMemberProfile(String memberProfile) {
		this.memberProfile = memberProfile;
	}
	public String getArtOptionSeq() {
		return artOptionSeq;
	}
	public void setArtOptionSeq(String artOptionSeq) {
		this.artOptionSeq = artOptionSeq;
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
	public String getArtOptionPrice() {
		return artOptionPrice;
	}
	public void setArtOptionPrice(String artOptionPrice) {
		this.artOptionPrice = artOptionPrice;
	}
	public String getArtOptionCount() {
		return artOptionCount;
	}
	public void setArtOptionCount(String artOptionCount) {
		this.artOptionCount = artOptionCount;
	}
	public String getArtPrice() {
		return artPrice;
	}
	public void setArtPrice(String artPrice) {
		this.artPrice = artPrice;
	}
	public String getArtDiscount() {
		return artDiscount;
	}
	public void setArtDiscount(String artDiscount) {
		this.artDiscount = artDiscount;
	}
	public String getArtAmount() {
		return artAmount;
	}
	public void setArtAmount(String artAmount) {
		this.artAmount = artAmount;
	}
	public String getCartStatus() {
		return cartStatus;
	}
	public void setCartStatus(String cartStatus) {
		this.cartStatus = cartStatus;
	}
	@Override
	public String toString() {
		return "UserReviewVO [reviewCodeSeq=" + reviewCodeSeq + ", orderCodeSeq=" + orderCodeSeq + ", memberCodeSeq="
				+ memberCodeSeq + ", memberName=" + memberName + ", artCodeSeq=" + artCodeSeq + ", artName=" + artName
				+ ", reviewDate=" + reviewDate + ", reviewComment=" + reviewComment + ", reviewStar=" + reviewStar
				+ ", reviewPhoto=" + reviewPhoto + ", reviewCommentRe=" + reviewCommentRe + ", reviewCommentReDate="
				+ reviewCommentReDate + ", reviewCommentReStatus=" + reviewCommentReStatus + ", writerSeq=" + writerSeq
				+ ", memberProfile=" + memberProfile + ", artOptionSeq=" + artOptionSeq + ", artOptionCategory="
				+ artOptionCategory + ", artOptionName=" + artOptionName + ", artOptionPrice=" + artOptionPrice
				+ ", artOptionCount=" + artOptionCount + ", artPrice=" + artPrice + ", artDiscount=" + artDiscount
				+ ", artAmount=" + artAmount + ", cartStatus=" + cartStatus + "]";
	}
	
	
}
