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
	
	/* �� ��Ʈ�ѷ����� "/mboard/*.mdo" ���·� ���ӵǴ� ��ũ�鿡 ���� �׺���̼� ������ ���ش�! */
	
	
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
	
	
	//mboard_write.jsp ���� form �±��� ���� ���� "/register"�̱� ������ �� �޼ҵ忡�� ó������ �� �ִ� �Ŵ�.
	@RequestMapping(value="/register")
	public ModelAndView mboardRegister(MBoardVO vo){
		//�𵨿����? - �����Ϳ� �並 ���ÿ� ������ �����ϴ�!
		System.out.println(vo.toString());
		service.mboardRegister(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 1); // ��� ���� ������ ��
		mav.setViewName("redirect:/mboard/write.mdo"); // �� �̸� _ � ��� ���� ��
		return mav;
	}
	
}
