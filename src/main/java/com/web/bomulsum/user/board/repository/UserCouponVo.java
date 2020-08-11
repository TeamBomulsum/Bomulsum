package com.web.bomulsum.user.board.repository;

import java.sql.Date;

public class UserCouponVo {
	private String memberCodeSeq;
	private String couponName;
	private String couponContent;
	private int couponPrice;
	private Date couponDate;


	public String getMemberCodeSeq() {
		return memberCodeSeq;
	}
	public void setMemberCodeSeq(String memberCodeSeq) {
		this.memberCodeSeq = memberCodeSeq;
	}
	public String getCouponName() {
		return couponName;
	}
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	public String getCouponContent() {
		return couponContent;
	}
	public void setCouponContent(String couponContent) {
		this.couponContent = couponContent;
	}

	public int getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(int couponPrice) {
		this.couponPrice = couponPrice;
	}
	public Date getCouponDate() {
		return couponDate;
	}
	public void setCouponDate(Date couponDate) {
		this.couponDate = couponDate;
	}
	@Override
	public String toString() {
		return "UserCouponVo [memberCodeSeq=" + memberCodeSeq + ", couponName=" + couponName + ", couponContent="
				+ couponContent + ", couponPrice=" + couponPrice + ", couponDate=" + couponDate + "]";
	}
	
	
	
	
}
