package com.web.bomulsum.writer.activity.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.manager.board.repository.MBoardVO;
import com.web.bomulsum.writer.activity.repository.CommentsListVO;
import com.web.bomulsum.writer.activity.service.WriterActivityServiceImpl;


@Controller
@RequestMapping(value="/writer")
public class WriterActivityController {
	/* �� ��Ʈ�ѷ����� "/writer/*.wdo" ���·� ���ӵǴ� ��ũ�鿡 ���� �׺���̼� ������ ���ٰŴ�! */

	@Autowired
	private WriterActivityServiceImpl service;
	
	/*��� ��� �����ֱ�*/
	@GetMapping("/comments")
	public ModelAndView commentsList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("commentsList", service.commentsList());
		System.out.println("�̰� ���� �Ǿ�����?");

		for(CommentsListVO vo : service.commentsList()){
			System.out.println(vo.toString());
		}
		mav.setViewName("/wactivity/comments");
		return mav;
	}
	
	/*�۰��� ��� ��� */
	@RequestMapping(value="/addReComment", method=RequestMethod.POST)
	public ModelAndView addReComment(CommentsListVO vo, HttpServletRequest request){
		//�𵨿����? - �����Ϳ� �並 ���ÿ� ������ �����ϴ�!
		System.out.println(vo.toString());
		service.addRecomment(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 3); // ��� ���� ������ ��
		mav.setViewName("redirect:/writer/comments.wdo"); // �� �̸� _ � ��� ���� ��
		return mav;
	}
}
