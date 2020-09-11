package com.web.bomulsum.user.review.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.review.repository.UserReviewVO;
import com.web.bomulsum.user.review.service.UserReviewServiceImpl;

@Controller
@RequestMapping(value="/user/myInfo")
public class UserReviewController {

	@Autowired
	private UserReviewServiceImpl service;
	
//	private static final String SAVE_PATH_AWS = "/upload";	//aws 경로
	private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //로컬 저장 경로
	
	@RequestMapping("/review")
	public ModelAndView myReview(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String seq = (String)session.getAttribute("member");
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewList", service.myReview(seq));
		mav.setViewName("/umyInfo/uReview/uWriteReview");
		return mav;
	}
	
	//작품 등록 액션
	@RequestMapping(value="/reviewRegster")
	public ModelAndView insertArtwork(@RequestParam(value="reviewPhoto", required=false) List<MultipartFile> mf,
			 HttpServletRequest request, UserReviewVO vo){
		
		//유저코드 받아오기
		HttpSession session =  request.getSession();      
        String seq = (String)session.getAttribute("member");
        vo.setMemberCodeSeq(seq);
        
        //사진 경로 설정
  		String result="";
  		
  		for (MultipartFile file : mf) {
  			String originalfileName = file.getOriginalFilename();
  			String saveFile = System.currentTimeMillis() + originalfileName;
  			try {
  				file.transferTo(new File(SAVE_PATH, saveFile)); 
  			}catch(IllegalStateException e) { e.printStackTrace();}
  			catch(IOException e) { e.printStackTrace();	}
  			
  			result += saveFile+",";
  		}	
  		vo.setReviewPhoto(result);
  		
  		
  		
		//리뷰 등록
		service.insertReview(vo);
  		//구매작품리스트에서 구매후기상태 N으로 바꿔줘야함
		
		//작가한테 알림 가게 해줘야 함
		/*
		 * String alarmContentA = vo.setAlarmContent();
		 */
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("checkReg", 1); // 뷰로 보낼 데이터 값
		mav.setViewName("redirect:/user/myInfo/review.do");
		
		return mav;
	}
		
	
	@RequestMapping("/reviewedList")
	public ModelAndView myReviewList(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/uReview/uWriteReviewMe");
		return mav;
	}
}
