package com.web.bomulsum.user.wishlist.repository;

public class UserLikeWriterVO {
	
	private String wishlist_seq;
	private String member_code_seq;
	private String wishlist_option;
	private String wishlist_option_code;
	private String wishilst_time;
	
	@Override
	public String toString() {
		return "UserLikeWriterVO [wishlist_seq=" + wishlist_seq + ", member_code_seq=" + member_code_seq
				+ ", wishlist_option=" + wishlist_option + ", wishlist_option_code=" + wishlist_option_code
				+ ", wishilst_time=" + wishilst_time + "]";
	}

	public String getWishlist_seq() {
		return wishlist_seq;
	}

	public void setWishlist_seq(String wishlist_seq) {
		this.wishlist_seq = wishlist_seq;
	}

	public String getMember_code_seq() {
		return member_code_seq;
	}

	public void setMember_code_seq(String member_code_seq) {
		this.member_code_seq = member_code_seq;
	}

	public String getWishlist_option() {
		return wishlist_option;
	}

	public void setWishlist_option(String wishlist_option) {
		this.wishlist_option = wishlist_option;
	}

	public String getWishlist_option_code() {
		return wishlist_option_code;
	}

	public void setWishlist_option_code(String wishlist_option_code) {
		this.wishlist_option_code = wishlist_option_code;
	}

	public String getWishilst_time() {
		return wishilst_time;
	}

	public void setWishilst_time(String wishilst_time) {
		this.wishilst_time = wishilst_time;
	}
	
	
}
