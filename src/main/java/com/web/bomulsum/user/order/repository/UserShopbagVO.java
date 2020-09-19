package com.web.bomulsum.user.order.repository;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class UserShopbagVO {
	
	private String cart_seq;
	private String art_code_seq;
	private String member_code_seq;
	private String art_option_seq;
	private String art_count;
	private String[] artCount;
	private String order_request;
	private String writer_brand_name;
	private int writer_send_price;
	private int writer_sendfree_case;
	private String art_photo;
	private String art_name;
	private int art_price;
	private int art_discount;
	private int[] total_price;
	private List<List<UserShopbagOptionVO>> optionArray;
	private List<Map<String,Object>> totalOption;
	
	@Override
	public String toString() {
		return "UserShopbagVO [cart_seq=" + cart_seq + ", art_code_seq=" + art_code_seq + ", member_code_seq="
				+ member_code_seq + ", art_option_seq=" + art_option_seq + ", art_count=" + art_count + ", artCount="
				+ Arrays.toString(artCount) + ", order_request=" + order_request + ", writer_brand_name="
				+ writer_brand_name + ", writer_send_price=" + writer_send_price + ", writer_sendfree_case="
				+ writer_sendfree_case + ", art_photo=" + art_photo + ", art_name=" + art_name + ", art_price="
				+ art_price + ", art_discount=" + art_discount + ", total_price=" + Arrays.toString(total_price)
				+ ", optionArray=" + optionArray + ", totalOption=" + totalOption + "]";
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


	public String getArt_count() {
		return art_count;
	}

	public void setArt_count(String art_count) {
		this.art_count = art_count;
	}

	public String getOrder_request() {
		return order_request;
	}

	public void setOrder_request(String order_request) {
		this.order_request = order_request;
	}


	public String getWriter_brand_name() {
		return writer_brand_name;
	}

	public void setWriter_brand_name(String writer_brand_name) {
		this.writer_brand_name = writer_brand_name;
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

	public int getWriter_send_price() {
		return writer_send_price;
	}

	public void setWriter_send_price(int writer_send_price) {
		this.writer_send_price = writer_send_price;
	}

	public int getWriter_sendfree_case() {
		return writer_sendfree_case;
	}

	public void setWriter_sendfree_case(int writer_sendfree_case) {
		this.writer_sendfree_case = writer_sendfree_case;
	}

	public int getArt_discount() {
		return art_discount;
	}

	public void setArt_discount(int art_discount) {
		this.art_discount = art_discount;
	}

	public int[] getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int[] total_price) {
		this.total_price = total_price;
	}

	public String[] getArtCount() {
		return artCount;
	}

	public void setArtCount(String[] artCount) {
		this.artCount = artCount;
	}

	public List<List<UserShopbagOptionVO>> getOptionArray() {
		return optionArray;
	}

	public void setOptionArray(List<List<UserShopbagOptionVO>> list) {
		this.optionArray = list;
	}

	public List<Map<String, Object>> getTotalOption() {
		return totalOption;
	}

	public void setTotalOption(List<Map<String, Object>> totalOption) {
		this.totalOption = totalOption;
	}


}
