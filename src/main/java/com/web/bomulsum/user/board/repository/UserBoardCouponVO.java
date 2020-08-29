package com.web.bomulsum.user.board.repository;

public class UserBoardCouponVO {
	private String couponAll;
	private String couponName;
	private String couponContent;
	private String couponPrice;
	
	public UserBoardCouponVO(String couponAll) {
		String[] coupon = couponAll.split("-");
		setCouponAll(couponAll);
		setCouponName(coupon[0]);
		setCouponContent(coupon[1]);
		setCouponPrice(coupon[2]);
	}
	
	public String getCouponAll() {
		return couponAll;
	}
	public void setCouponAll(String couponAll) {
		this.couponAll = couponAll;
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
	public String getCouponPrice() {
		return couponPrice;
	}
	public void setCouponPrice(String couponPrice) {
		this.couponPrice = couponPrice;
	}
	@Override
	public String toString() {
		return "UserBoardCouponVO [couponAll=" + couponAll + ", couponName=" + couponName + ", couponContent="
				+ couponContent + ", couponPrice=" + couponPrice + "]";
	}
	
	
}
