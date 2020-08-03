package com.web.bomulsum.user.login.controller;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.login.repository.LoginVO;
import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.repository.NowLoginVO;
import com.web.bomulsum.user.login.service.MemberServiceImpl;

import net.nurigo.java_sdk.api.Message;

@Controller
@RequestMapping(value = "/user")
public class UserLoginController {
	
	@Autowired
	MemberServiceImpl service;

	@GetMapping("/login")
	public ModelAndView userLogin(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Cookie cookie[] = request.getCookies();
		for(Cookie c : cookie) {
			if(c.getName().equals("rememberEmail")) {
				if(c.getValue() != null) {
					mav.addObject("rememberedEmail", c.getValue());
				}
			}
		}
		mav.setViewName("/ulogin/ulogin");
		
		return mav;  
	}

	@GetMapping("/newAccount")
	public String userNewAccount() {
		return "/ulogin/unewAccount";
	}

	@GetMapping("/newAccountEmail")
	public String userNewAccountEmail() {
		return "/ulogin/unewAccountEmail";
	}

	@RequestMapping(value = "/smsCheck")
	public void sendSms(@RequestParam String msg, @RequestParam String receiver) {
		System.out.println(msg);
		System.out.println(receiver);

		String api_key = "NCSRZ9EUI4F5PIVX";
		String api_secret = "KANEQZYC68WB7STQ6PCEIYQDC3MYVP2N";
		Message coolsms = new Message(api_key, api_secret);

		// 4 params(to, from, type, text) are mandatory. must be filled
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", receiver);
		params.put("from", "01036292628"); // ���� ��� ��ȭ��ȣ
		params.put("type", "SMS");
		params.put("text", msg);
		params.put("app_version", "test app 1.2"); // application name and version

//	    try {
//	    	//send() �������� ����.
//	      JSONObject obj = (JSONObject) coolsms.send(params);
//	      System.out.println(obj.toString());
//	    } catch (CoolsmsException e) {
//	      System.out.println(e.getMessage());
//	      System.out.println(e.getCode());
//	    }
	}
	
	@ResponseBody
	@RequestMapping(value="/insertUserData", method=RequestMethod.POST)
	public void insertVo(MemberVO vo) {
		service.insertMember(vo);
		System.out.println(vo.toString());
	}
	
	@RequestMapping(value="/successNewAccount")
	public String successNewAccount() {
		System.out.println("controller ����!");
		return "/ulogin/usuccessNewAccountEmail";
	}
	
	
	@RequestMapping(value="/checkEmail", method=RequestMethod.GET)
	public @ResponseBody int checkEmail(@RequestParam String memberEmail){
		return service.checkEmail(memberEmail);
	}
	
	@RequestMapping(value="/loginCheck", method=RequestMethod.POST)
	public ModelAndView loginCheck(LoginVO vo, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView(); 
		int check = service.loginCheck(vo);
		mav.addObject("checkValue", check);
		mav.setViewName("/ulogin/ulogin");
		if(check == 1) {
			
			//�α��� ���� ó��
			NowLoginVO newloginVo = new NowLoginVO();
			newloginVo.setMemberEmail(vo.getEmail());
			newloginVo.setyORn("Y");
			service.updateLogin(newloginVo);
			
			// ���ǿ� ����� �����ڵ� �ֱ�.
			String userCode = service.getUserCode(vo.getEmail());
			HttpSession session = request.getSession();
			session.setAttribute("member", userCode);
			
			// ����� �̸� �־��ֱ�
			String userName = service.getUserName(userCode);
			session.setAttribute("userName", userName);
			
			// �̸��� �����ϱ� üũ�ڽ� ���ý� ��Ű �������ֱ�.
			if(vo.getRememberEmail() != null) {
				Cookie cookie = new Cookie("rememberEmail", vo.getEmail());
				cookie.setMaxAge(24*60*60*30);
				cookie.setPath("/");
				response.addCookie(cookie);
			}else {
				Cookie cookie = new Cookie("rememberEmail", null);
				cookie.setMaxAge(0);
				cookie.setPath("/");
				response.addCookie(cookie);
			}
		}
		return mav;
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		NowLoginVO vo = new NowLoginVO();
		vo.setMemberCode((String)session.getAttribute("member"));
		vo.setyORn("N");
		service.logout(vo);
		session.invalidate();
		
		return "redirect:/home.do";
	}
	
//	@RequestMapping(value="/loginkakao/oauth", produces="application/json", method=RequestMethod.GET)
//	public String loginkakao(@RequestParam("code") String code, RedirectAttributes ra, HttpSession session,
//			HttpServletResponse response) throws IOException{
//		System.out.println("kakao code: " + code);
//		return "";
//	}

}
