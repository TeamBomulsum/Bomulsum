package com.web.bomulsum.writer.login.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.web.bomulsum.writer.login.repository.WriterRegisterVO;
import com.web.bomulsum.writer.login.service.WriterRegisterService;

@Controller
@RequestMapping(value="/writer")
public class WriterLoginController {

	@Autowired
	WriterRegisterService service;
	
	@ResponseBody
	@PostMapping("/loginCheck")
	public String LoginCheck(@RequestBody WriterRegisterVO vo, HttpSession session,HttpServletResponse response) {
		System.out.println("/writer/loginCheck : Post 요청발생");
		System.out.println("parameter : " + vo);
		
		String result = null;
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		WriterRegisterVO checkVo = service.selectOne(vo.getWriterEmail());
		System.out.printf("checkVo "+checkVo,vo.getWriterSeq());
		if(checkVo != null) {
			if(encoder.matches(vo.getWriterPassword(), checkVo.getWriterPassword())) {
				
			result = "loginSuccess";
			session.setAttribute("writer_login", checkVo);
			
			long limitTime = 60*60*24*90;
//			long limitTime = 1;
			
			//자동 로그인 체크시 처리해야할 내용
			if(vo.isAutoLogin()) {
				System.out.println("자동 로그인 쿠키 생성중... ");
				Cookie loginCookie = new Cookie("loginCookie",session.getId());
				loginCookie.setPath("/bomulsum");
				loginCookie.setMaxAge((int)limitTime);
				System.out.println("loginCookie " + loginCookie);
				response.addCookie(loginCookie);
				System.out.println("loginCookie " + loginCookie);
				//자동 로그인 유지시간을 날짜 객체로 변환하는 로직
					long exporedDate = System.currentTimeMillis() + (limitTime * 1000);
				
				//Date 객체의 생성자에 매가값으로 밀리초의 시간을 전달하면 날짜로 변환해 줍니다.
					Date limitDate = new Date(exporedDate);
					System.out.println("limitDate " + limitDate);
					service.keepLogin(session.getId(), limitDate, vo.getWriterEmail());
				}
			
			}else {
				result = "pwFail";
			}
		}else {
			result = "idFail";
		}
		return result;
	}
	
	@GetMapping("/login")
	public ModelAndView login(ModelAndView mav) {
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
		System.out.println("/writer/checkId : POST 요청 발생!");
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
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		System.out.println("로그아웃 요청");
		
		WriterRegisterVO user = (WriterRegisterVO) session.getAttribute("writer_login");
		if(user != null) {
			session.removeAttribute("writer_login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null) {
				loginCookie.setMaxAge(0);
				loginCookie.setPath("/bomulsum");
				response.addCookie(loginCookie);
				System.out.println("loginCookie " + loginCookie);
				service.keepLogin("none", new Date(), user.getWriterEmail());
			}
		}
		return new ModelAndView("redirect:login.wdo");
	}

		
}
