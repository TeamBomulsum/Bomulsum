package com.web.bomulsum.writer.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.writer.board.repository.writerBoardVO;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.login.service.WriterRegisterService;

@Controller
@RequestMapping(value="/writer")
public class WriterLoginController {

	@Autowired
	WriterRegisterService service;
	
	@GetMapping("/login")
	public ModelAndView Login(ModelAndView mav) {
		
		
		mav.setViewName("wlogin/login");
		return mav;
	}
	@GetMapping("/register")
	public ModelAndView register(ModelAndView mav) {
		 mav.setViewName("wlogin/register");
		return mav;
	}
	@GetMapping("/forgot-password")
	public ModelAndView forgetPass(ModelAndView mav) {
		mav.setViewName("wlogin/forgot-password");
		return mav;
	}
	@ResponseBody
	@RequestMapping(value="/insertWriterData", method=RequestMethod.POST)
	public void insertVo(WriterRegisterVO vo) {
		service.insertMember(vo);
		System.out.println(vo.toString());
	}
	
	//아이디 중복 확인 요청 처리
		@ResponseBody
		@PostMapping("/checkId")
		public String checkId(@RequestBody String writerEmail) {
			System.out.println("/user/checkId : POST 요청 발생!");
			System.out.println("parameter : " + writerEmail);
			
			String result = null;
			int checkNum = service.checkId(writerEmail);
			System.out.println(checkNum);
			if(checkNum == 1) {
				System.out.println("아이디가 중복됨!!");
				result = "NO";
			}else {
				System.out.println("아이디가 사용 가능!!");
				result = "OK";
			}
			System.out.println("result" + result);
			
			return result;
		}
}
