package com.web.bomulsum.user.order.repository;

public class UserShopbagModalVO {
	
	private String cart_seq;
	private String art_code_seq;
	private String member_code_seq;
	private String art_option_seq;
	private int index;
	private int art_count;
	private String art_photo;
	private String art_name;
	private int art_price;
	private int art_discount;
	private int total_price;


	@Override
	public String toString() {
		return "UserShopbagModalVO [cart_seq=" + cart_seq + ", art_code_seq=" + art_code_seq + ", member_code_seq="
				+ member_code_seq + ", art_option_seq=" + art_option_seq + ", index=" + index + ", art_count="
				+ art_count + ", art_photo=" + art_photo + ", art_name=" + art_name + ", art_price=" + art_price
				+ ", art_discount=" + art_discount + ", total_price=" + total_price + "]";
	}


	public String getCart_seq() {
		return cart_seq;
	}


	public void setCart_seq(String cart_seq) {
		this.cart_seq = cart_seq;
	}


	public String getArt_code_seq() {
		return art_code_seq;
	}


	public void setArt_code_seq(String art_code_seq) {
		this.art_code_seq = art_code_seq;
	}


	public String getMember_code_seq() {
		return member_code_seq;
	}


	public void setMember_code_seq(String member_code_seq) {
		this.member_code_seq = member_code_seq;
	}


	public String getArt_option_seq() {
		return art_option_seq;
	}


	public void setArt_option_seq(String art_option_seq) {
		this.art_option_seq = art_option_seq;
	}

	public int getArt_count() {
		return art_count;
	}


	public void setArt_count(int art_count) {
		this.art_count = art_count;
	}


	public String getArt_photo() {
		return art_photo;
	}


	public void setArt_photo(String art_photo) {
		this.art_photo = art_photo;
	}


	public String getArt_name() {
		return art_name;
	}


	public void setArt_name(String art_name) {
		this.art_name = art_name;
	}


	public int getArt_price() {
		return art_price;
	}


	public void setArt_price(int art_price) {
		this.art_price = art_price;
	}


	public int getArt_discount() {
		return art_discount;
	}


	public void setArt_discount(int art_discount) {
		this.art_discount = art_discount;
	}


	public int getTotal_price() {
		return total_price;
	}


	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}


	public int getIndex() {
		return index;
	}


	public void setIndex(int index) {
		this.index = index;
	}
	
	

}
