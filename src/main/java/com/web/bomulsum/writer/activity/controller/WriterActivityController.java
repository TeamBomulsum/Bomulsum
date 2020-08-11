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
	/* 이 컨트롤러에서 "/writer/*.wdo" 형태로 접속되는 링크들에 대한 네비게이션 역할을 해줄거다! */

	@Autowired
	private WriterActivityServiceImpl service;
	
	/*댓글 목록 보여주기*/
	@GetMapping("/comments")
	public ModelAndView commentsList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("commentsList", service.commentsList());
		System.out.println("이게 실행 되었나요?");

		for(CommentsListVO vo : service.commentsList()){
			System.out.println(vo.toString());
		}
		mav.setViewName("/wactivity/comments");
		return mav;
	}
	
	/*작가가 댓글 등록 */
	@RequestMapping(value="/addReComment", method=RequestMethod.POST)
	public ModelAndView addReComment(CommentsListVO vo, HttpServletRequest request){
		//모델엔뷰란? - 데이터와 뷰를 동시에 설정이 가능하다!
		System.out.println(vo.toString());
		service.addRecomment(vo);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", 3); // 뷰로 보낼 데이터 값
		mav.setViewName("redirect:/writer/comments.wdo"); // 뷰 이름 _ 어떤 뷰로 보낼 지
		return mav;
	}
}
