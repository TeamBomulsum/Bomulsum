package com.web.bomulsum.common;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageCreator {

	//페이지번호와 한 페이지당 들어갈 게시물의 갯수를 갖고 있는 객체
		private PageVO paging;
		private int articleTotalCount; //게시판의 총 게시물 수
		private int beginPage; //시작 페이지 번호
		private int endPage; //끝 페이지 번호
		private boolean prev; //이전 버튼 활성화 여부
		private boolean next; //다음 버튼 활성화 여부
		
		//한 화면에 보여질 페이지 버튼 수
		private final int displayPageNum = 5;
		
		//URI 파라미터를 쉽게 만들어주는 유틸 메서드 선언.
		public String makeURI(int page) {
			UriComponents ucp = UriComponentsBuilder.newInstance()
													.queryParam("page", page)
													.queryParam("countPerPage", paging.getCountPerPage())
													.build();
			
			return ucp.toUriString();
		}
		
		

		//페이징 알고리즘을 수행할 메서드 선언.
		private void calcDataOfPage() {
			
			//보정 전 끝 페이지 구하기
			endPage = (int) (Math.ceil(paging.getPage() / (double)displayPageNum) 
					* displayPageNum);
			
			//시작 페이지 번호 구하기
			beginPage = (endPage - displayPageNum) + 1;
			
			//현재 시작 페이지가 1이라면 이전 버튼 활성화 여부를 false로 지정
			prev = (beginPage == 1) ? false : true;
			
			//마지막 페이지인지 여부 확인 후 다음 버튼 비활성화 판단.
			next = (articleTotalCount <= (endPage * paging.getCountPerPage())) ? false : true;
			
			
			//다음 버튼 비활성화라면 끝 페이지 재보정 하기.
			if(!isNext()) {
				endPage = (int) Math.ceil(articleTotalCount / (double)paging.getCountPerPage());
			}

		}
		
		
		
		
		
		public PageVO getPaging() {
			return paging;
		}

		public void setPaging(PageVO paging) {
			this.paging = paging;
		}

		public int getArticleTotalCount() {
			return articleTotalCount;
		}

		public void setArticleTotalCount(int articleTotalCount) {
			this.articleTotalCount = articleTotalCount;
			calcDataOfPage();
		}

		public int getBeginPage() {
			return beginPage;
		}

		public void setBeginPage(int beginPage) {
			this.beginPage = beginPage;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endpage) {
			this.endPage = endpage;
		}

		public boolean isPrev() {
			return prev;
		}

		public void setPrev(boolean prev) {
			this.prev = prev;
		}

		public boolean isNext() {
			return next;
		}

		public void setNext(boolean next) {
			this.next = next;
		}

		public int getDisplayPageNum() {
			return displayPageNum;
		}

		@Override
		public String toString() {
			return "PageCreator [paging=" + paging + ", articleTotalCount=" + articleTotalCount + ", beginPage=" + beginPage
					+ ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + ", displayPageNum=" + displayPageNum
					+ "]";
		}
}
