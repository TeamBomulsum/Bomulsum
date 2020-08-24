package com.web.bomulsum.common;

public class PageVO {

	private int page; //사용자가 요청한 페이지 번호 
	private int countPerPage; //한 페이지당 들어갈 게시물의 수.
	private String writerCodeSeq;
	
	public PageVO() {
		this.page = 1;
		this.countPerPage = 5;
	}
	
	
	//클라이언트가 전달한 페이지 번호를 데이터베이스의 LIMIT절에 맞는 숫자로 변환.
	public int getPageStart() {
		if(this.page == 1) {
			return this.page;				
		}
		return (this.page-1) * this.countPerPage +1;
	}
	public int getPageNext() {
		if(this.page == 1) {
			return this.countPerPage * this.page; 
		}
		return (this.countPerPage * this.page);  
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		if(countPerPage <= 0 || countPerPage > 50) {
			this.countPerPage = 5;
			return;
		}
		this.countPerPage = countPerPage;
	}
	

	public String getWriterCodeSeq() {
		return writerCodeSeq;
	}


	public void setWriterCodeSeq(String writerCodeSeq) {
		this.writerCodeSeq = writerCodeSeq;
	}


	@Override
	public String toString() {
		return "PageVO [page=" + page + ", countPerPage=" + countPerPage + ", writerCodeSeq=" + writerCodeSeq + "]";
	}


	
}
