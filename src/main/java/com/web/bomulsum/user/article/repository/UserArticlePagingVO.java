package com.web.bomulsum.user.article.repository;

public class UserArticlePagingVO {
	private int nowPage;
	private int startNum;
	private int endNum;
	private String category;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	@Override
	public String toString() {
		return "UserArticlePagingVO [nowPage=" + nowPage + ", startNum=" + startNum + ", endNum=" + endNum
				+ ", category=" + category + "]";
	}
	
	
}
