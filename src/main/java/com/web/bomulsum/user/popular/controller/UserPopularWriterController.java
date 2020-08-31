package com.web.bomulsum.user.popular.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.popular.repository.UserPopularWriterVO;
import com.web.bomulsum.user.popular.service.UserPopularWriterService;

@Controller
@RequestMapping(value="/user")
public class UserPopularWriterController {
	
	@Autowired
	UserPopularWriterService service;

	
	@RequestMapping(value="/popular/writer")
	public ModelAndView popularWriter() {
		ModelAndView mav= new ModelAndView("/ucategory/uPopularWriter");
		/*
		//회원 코드 가져오기
		HttpSession session =  request.getSession();
		String memberCode = (String) session.getAttribute("member");
		System.out.println(memberCode);
		*/
		String memberCode = "member_code_seq58";
		List<String> likeWriter = service.getLikeWriter(memberCode);
		System.out.println(likeWriter);
		
		List<UserPopularWriterVO> list = service.getWriterInfo();
		System.out.println(list);
		

		mav.addObject("rank1", list.get(0));
		mav.addObject("rank2", list.get(1));
		mav.addObject("rank3", list.get(2));
		mav.addObject("rank4", list.get(3));
		mav.addObject("rank5", list.get(4));
		mav.addObject("likeList", likeWriter);
		return mav;
		
	}
	

	

	
}
