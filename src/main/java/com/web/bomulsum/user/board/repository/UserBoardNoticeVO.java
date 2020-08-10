package com.web.bomulsum.user.board.repository;

import java.sql.Date;

public class UserBoardNoticeVO {
	private String noticeSeq;
	private String noticeCategory;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	public String getNoticeSeq() {
		return noticeSeq;
	}
	public void setNoticeSeq(String noticeSeq) {
		this.noticeSeq = noticeSeq;
	}
	public String getNoticeCategory() {
		return noticeCategory;
	}
	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	@Override
	public String toString() {
		return "UserBoardNoticeVO [noticeSeq=" + noticeSeq + ", noticeCategory=" + noticeCategory + ", noticeTitle="
				+ noticeTitle + ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + "]";
	}
	
	
}
