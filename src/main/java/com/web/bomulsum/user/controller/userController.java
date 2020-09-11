package com.web.bomulsum.user.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.article.repository.UserArticleCategoryVO;
import com.web.bomulsum.user.article.repository.UserOrderByArticlePagingVO;
import com.web.bomulsum.user.article.service.UserArticleService;

@Controller
public class userController {
	
	@Autowired
	private UserArticleService service;
	
	@RequestMapping(value="/home")
	public ModelAndView goHome(HttpSession session, ModelAndView mav) {
		
		String member = (String)session.getAttribute("member");
		
		UserOrderByArticlePagingVO vo = new UserOrderByArticlePagingVO();
		
		// 데이터 가공할 list
		List<UserHomeVO> dataList = new ArrayList<UserHomeVO>();
		// 데이터 가공할  객체
		UserHomeVO homeVo = new UserHomeVO();
		
		// 인기 작품.
		vo.setOrderBy("bestWork"); 
		vo.setStartNum(1);
		vo.setEndNum(20);
		
		List<UserArticleCategoryVO> data = service.getListForOrderBy(vo);
		for(UserArticleCategoryVO v : data) {
			homeVo = new UserHomeVO();
			// 작품코드
			homeVo.setArtCode(v.getArtCode());
			// 작가명(브랜드명)
			if(v.getWriterBrandName() == null) {
				homeVo.setWriterName(v.getWriterName());
			}else {
				homeVo.setWriterName(v.getWriterBrandName());
			}
			// 작품 사진
			String[] arrimg = v.getArtPhoto().split(",");
			homeVo.setArtImg(arrimg[0]);
			// 작품명
			homeVo.setArtName(v.getArtName());
			// 후기(별점)
			if(v.getArticleReview().size() > 0) {
				int review = 0;
				int reviewCnt = v.getArticleReview().size();
				for(Integer i : v.getArticleReview()) {
					review += i;
				}
				review = Math.round(review / reviewCnt);
				homeVo.setReviewCnt(reviewCnt);
				homeVo.setReviewValue(review);
			}else {
				homeVo.setReviewCnt(0);
				homeVo.setReviewValue(0);
			}
			dataList.add(homeVo);
		}
		
		mav.addObject("bestWork", dataList);
		
		// 추천작품
		dataList = new ArrayList<UserHomeVO>();
		vo.setOrderBy("recommendWork"); 
		vo.setStartNum(1);
		vo.setEndNum(10);
		
		data = service.getListForOrderBy(vo);
		for(UserArticleCategoryVO v : data) {
			homeVo = new UserHomeVO();
			// 작품코드
			homeVo.setArtCode(v.getArtCode());
			// 작가명(브랜드명)
			if(v.getWriterBrandName() == null) {
				homeVo.setWriterName(v.getWriterName());
			}else {
				homeVo.setWriterName(v.getWriterBrandName());
			}
			// 작품 사진
			String[] arrimg = v.getArtPhoto().split(",");
			homeVo.setArtImg(arrimg[0]);
			// 작품명
			homeVo.setArtName(v.getArtName());
			// 후기(별점)
			if(v.getArticleReview().size() > 0) {
				int review = 0;
				int reviewCnt = v.getArticleReview().size();
				for(Integer i : v.getArticleReview()) {
					review += i;
				}
				review = Math.round(review / reviewCnt);
				homeVo.setReviewCnt(reviewCnt);
				homeVo.setReviewValue(review);
			}else {
				homeVo.setReviewCnt(0);
				homeVo.setReviewValue(0);
			}
			dataList.add(homeVo);
		}
		
		mav.addObject("recommendWork", dataList);
		
	
		// 작가님 추천
		dataList = new ArrayList<UserHomeVO>();
		vo.setOrderBy("artistRecommend"); 
		vo.setStartNum(1);
		vo.setEndNum(10);
		
		data = service.getListForOrderBy(vo);
		for(UserArticleCategoryVO v : data) {
			homeVo = new UserHomeVO();
			// 작품코드
			homeVo.setArtCode(v.getArtCode());
			// 작가명(브랜드명)
			if(v.getWriterBrandName() == null) {
				homeVo.setWriterName(v.getWriterName());
			}else {
				homeVo.setWriterName(v.getWriterBrandName());
			}
			// 작품 사진
			String[] arrimg = v.getArtPhoto().split(",");
			homeVo.setArtImg(arrimg[0]);
			// 작품명
			homeVo.setArtName(v.getArtName());
			// 후기(별점)
			if(v.getArticleReview().size() > 0) {
				int review = 0;
				int reviewCnt = v.getArticleReview().size();
				for(Integer i : v.getArticleReview()) {
					review += i;
				}
				review = Math.round(review / reviewCnt);
				homeVo.setReviewCnt(reviewCnt);
				homeVo.setReviewValue(review);
			}else {
				homeVo.setReviewCnt(0);
				homeVo.setReviewValue(0);
			}
			dataList.add(homeVo);
		}
		
		mav.addObject("artistRecommend", dataList);
		
		if(member != null) {
			mav.addObject("wishList",service.getLikeArticles(member));
		}
		
		mav.setViewName("uhome");
		
		return mav;
	} 

}
