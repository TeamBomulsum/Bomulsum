package com.web.bomulsum.user.popular.repository;

public class UserPopularWriterVO {
	
	private String writer_code_seq;
	private String writer_profile_img;
	private String writer_brand_name;
	private String writer_intro;
	private String writer_url;
	private String likeWriter;
	


	@Override
	public String toString() {
		return "UserPopularWriterVO [writer_code_seq=" + writer_code_seq + ", writer_profile_img=" + writer_profile_img
				+ ", writer_brand_name=" + writer_brand_name + ", writer_intro=" + writer_intro + ", writer_url="
				+ writer_url + ", likeWriter=" + likeWriter + "]";
	}

	public String getWriter_code_seq() {
		return writer_code_seq;
	}

	public void setWriter_code_seq(String writer_code_seq) {
		this.writer_code_seq = writer_code_seq;
	}

	public String getWriter_profile_img() {
		return writer_profile_img;
	}

	public void setWriter_profile_img(String writer_profile_img) {
		this.writer_profile_img = writer_profile_img;
	}

	public String getWriter_brand_name() {
		return writer_brand_name;
	}

	public void setWriter_brand_name(String writer_brand_name) {
		this.writer_brand_name = writer_brand_name;
	}

	public String getWriter_intro() {
		return writer_intro;
	}

	public void setWriter_intro(String writer_intro) {
		this.writer_intro = writer_intro;
	}

	public String getWriter_url() {
		return writer_url;
	}

	public void setWriter_url(String writer_url) {
		this.writer_url = writer_url;
	}
	
	public String getLikeWriter() {
		return likeWriter;
	}

	public void setLikeWriter(String likeWriter) {
		this.likeWriter = likeWriter;
	}


}
