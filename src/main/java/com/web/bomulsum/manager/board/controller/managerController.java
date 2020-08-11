package com.web.bomulsum.manager.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.manager.board.repository.MBoardListVO;
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
	
	@GetMapping("/writerlist")
	public String mWriterList() {
		return "mWriterList";
	}
	
	
	/*�Խ��� �� ��� �����ֱ�*/
	@GetMapping("/list")
	public ModelAndView mboardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("mboardList", service.mboardList());
		/*addObject���� ������ "mboardList" �� "mboard_list.jsp"���� ���� ���� �ҷ��� �������� �ȴ�.
		 * "mboardList" = .jsp���� ����� ������ , 
		 * "service.mboardList" = ���� �� */
		for(MBoardListVO vo : service.mboardList()){
			System.out.println(vo.toString());
		}
		mav.setViewName("/mboard_list");
		return mav;
	}
	
	
	/*
	 * mboard_write.jsp ���� form �±��� ���� ����
	 * "/register"�̱� ������ �� �޼ҵ忡�� �Էµ� �����͸� vo�� �޾� ó������ �� �ִ� �Ŵ�.
	 */
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView mboardRegister(MBoardVO vo, HttpServletRequest request){
		//�𵨿����? - �����Ϳ� �並 ���ÿ� ������ �����ϴ�!
		System.out.println(vo.toString());
		service.mboardRegister(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 1); // ��� ���� ������ ��
		mav.setViewName("redirect:/mboard/write.mdo"); // �� �̸� _ � ��� ���� ��
		return mav;
	}

	/*�� �󼼺��⿡�� ������ư ������ �� -> �� ���� ������ ���� ���� �Էµ� ������ �ѷ��ش�.*/
	@RequestMapping(value="/rewrite", method=RequestMethod.POST)
	public ModelAndView mboardRewrite(MBoardVO vo, HttpServletRequest request){
		
		MBoardVO mBoardVO = service.mboardSelect(vo);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/mboard_rewrite");
		mav.addObject("mBoardVO", mBoardVO);
		System.out.println("�ۼ����� ���� ������ �����ͺ���"+ mBoardVO.toString());
		return mav;
	}
	
	/*�� ���� ������ ���� ������ �� -> DB ������Ʈ�� �����ϰ� ������� ���ư���. */
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView mboardUpdate(MBoardVO vo, HttpServletRequest request) {
		System.out.println("����ڰ� �Է��� ���� ������ : " + vo.toString());
		
		service.mboardUpdate(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 1);
		mav.setViewName("redirect:/mboard/list.mdo");//�� ���� ��ư ������ ���� �ٽ� �Խñ� ������� ���ư���.
		return mav;
	}
	
	/*���� ��ư ������ �� -> ������ �Ѿ���°� �ƴ϶�, �������� ���� location.href �� �Ѿ / ������ ������ �������� �ʿ� �����Ƿ� �𵨾غ䵵 �Ⱦ�*/
	@RequestMapping(value="/delete", method = RequestMethod.GET)
	public String mboardDelete(MBoardVO vo) {
		service.mboardDelete(vo);
		return "redirect:/mboard/list.mdo";
	}
	
	
}
