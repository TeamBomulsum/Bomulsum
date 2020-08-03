package com.web.bomulsum.manager.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.manager.board.repository.MBoardVO;
import com.web.bomulsum.manager.board.service.MBoardServiceImpl;

@Controller
@RequestMapping(value="/mboard")
public class managerController {
	
	/* 이 컨트롤러에서 "/mboard/*.mdo" 형태로 접속되는 링크들에 대한 네비게이션 역할을 해준다! */
	
	
	@Autowired
	private MBoardServiceImpl service;
	
	@GetMapping("/write")
	public String mboard_write() {
		return "/mboard_write";
	}
	
	@GetMapping("/list")
	public String mboardList() {
		
		
		return "/mboard_list";
	}
	
	
	//mboard_write.jsp 에서 form 태그의 엑션 값이 "/register"이기 때문에 이 메소드에서 처리해줄 수 있는 거다.
	@RequestMapping(value="/register")
	public ModelAndView mboardRegister(MBoardVO vo){
		//모델엔뷰란? - 데이터와 뷰를 동시에 설정이 가능하다!
		System.out.println(vo.toString());
		service.mboardRegister(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 1); // 뷰로 보낼 데이터 값
		mav.setViewName("redirect:/mboard/write.mdo"); // 뷰 이름 _ 어떤 뷰로 보낼 지
		return mav;
	}
	
}
