package com.web.bomulsum.manager.board.repository;


public class MBoardVO {

//	private String admin_notice_seq;
//	private Date admin_notice_date;
	//��� ���� �޾Ƽ� �Ѱ��ִ°� �ƴϰ�, DB�� �ڵ����� �ԷµǴϱ� ��� ��.
	
	private String adminNoticeCategory;
	private String adminNoticeTitle;
	private String adminNoticeContent;
	private String adminNoticeCoupon;
	
	
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
	
	@Override
	public String toString() {
		return "MBoardVO [adminNoticeCategory=" + adminNoticeCategory + ", adminNoticeTitle=" + adminNoticeTitle
				+ ", adminNoticeContent=" + adminNoticeContent + ", adminNoticeCoupon=" + adminNoticeCoupon + "]";
	}
	
	
}
