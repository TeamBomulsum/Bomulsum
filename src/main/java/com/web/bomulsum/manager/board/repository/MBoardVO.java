package com.web.bomulsum.manager.board.repository;

import java.sql.Date;

public class MBoardVO {

//	private String admin_notice_seq;
//	private Date admin_notice_date;
	//��� ���� �޾Ƽ� �Ѱ��ִ°� �ƴϰ�, DB�� �ڵ����� �ԷµǴϱ� ��� ��. �̶�� �����ߴ��͵� ��ÿ��׿�.

	
	private String adminNoticeSeq;
	private String adminNoticeCategory;
	private String adminNoticeTitle;
	private String adminNoticeContent;
	private String adminNoticeCoupon;
	private Date adminNoticeDate;
	

	public String getAdminNoticeSeq() {
		return adminNoticeSeq;
	}
	public void setAdminNoticeSeq(String adminNoticeSeq) {
		this.adminNoticeSeq = adminNoticeSeq;
	}
	public String getAdminNoticeCategory() {
		return adminNoticeCategory;
	}
	public void setAdminNoticeCategory(String adminNoticeCategory) {
		this.adminNoticeCategory = adminNoticeCategory;
	}
	public String getAdminNoticeTitle() {
		return adminNoticeTitle;
	}
	public void setAdminNoticeTitle(String adminNoticeTitle) {
		this.adminNoticeTitle = adminNoticeTitle;
	}
	public String getAdminNoticeContent() {
		return adminNoticeContent;
	}
	public void setAdminNoticeContent(String adminNoticeContent) {
		this.adminNoticeContent = adminNoticeContent;
	}
	public String getAdminNoticeCoupon() {
		return adminNoticeCoupon;
	}
	public void setAdminNoticeCoupon(String adminNoticeCoupon) {
		this.adminNoticeCoupon = adminNoticeCoupon;
	}
	public Date getAdminNoticeDate() {
		return adminNoticeDate;
	}
	public void setAdminNoticeDate(Date adminNoticeDate) {
		this.adminNoticeDate = adminNoticeDate;
	}
	@Override
	public String toString() {
		return "MBoardVO [adminNoticeSeq=" + adminNoticeSeq + ", adminNoticeCategory=" + adminNoticeCategory
				+ ", adminNoticeTitle=" + adminNoticeTitle + ", adminNoticeContent=" + adminNoticeContent
				+ ", adminNoticeCoupon=" + adminNoticeCoupon + ", adminNoticeDate=" + adminNoticeDate + "]";
	}

	
	
}
