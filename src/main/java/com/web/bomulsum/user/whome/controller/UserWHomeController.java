package com.web.bomulsum.user.whome.controller;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.whome.repository.UserWHomeVO;
import com.web.bomulsum.user.whome.service.UserWHomeService;


@Controller
@RequestMapping(value="/user")
public class UserWHomeController {
	
	@Autowired
	private UserWHomeService service;
	
	@RequestMapping(value="/uwriterhome")
	public ModelAndView uMemberGrade(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/uWriterHome");
		
		
		HttpSession session = request.getSession();
		String memberCode= (String) session.getAttribute("member");  //멤버코드
		
		
		List<UserWHomeVO> artlist = service.getListWriterSalesArt();
		System.out.println("-->artlist:"+ artlist);
		
		//작가 기본정보
		String writerBrandName = artlist.get(0).getWriter_brand_name();
		String writerIntro = artlist.get(0).getWriter_intro();
		String writerProfileImg = artlist.get(0).getWriter_profile_img();

		
		//작가 판매중인 작품 첫번째 이미지만 받아오기
		List<String> artImg = new ArrayList<>(); 
		for (int i=0; i<artlist.size(); i++) {
			String str = artlist.get(i).getArt_photo();
			int end = str.indexOf(",");
			//System.out.println(end);
			artImg.add(i, str.substring(0, end));
		}
		System.out.println(artImg);
		
		//작가 판매중인 작품 수
		int salesArtCount = service.getSalesArtCount();
		
		//작가 구매후기 수
		int reviewTotal = service.getReviewTotal();
		
		//좋아하는 사람 수
		int addLikes = service.getAddLikes();
		
		mav.addObject("writerBrandName", writerBrandName);
		mav.addObject("writerIntro", writerIntro);
		mav.addObject("writerProfileImg", writerProfileImg);
		
		mav.addObject("artlist", artlist);
		mav.addObject("artImg", artImg);
		
		mav.addObject("salesArtCount", salesArtCount);
		mav.addObject("reviewTotal", reviewTotal);
		mav.addObject("addLikes", addLikes);
		return mav;
	} 
}
