package com.web.bomulsum.user.profile.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.login.repository.NowLoginVO;
import com.web.bomulsum.user.profile.repository.UserProfileVO;
import com.web.bomulsum.user.profile.service.UserProfileService;

@Controller
@RequestMapping(value="/user")
public class UserProfileController {

	@Autowired
	UserProfileService service;
	
	//회원등급페이지 ---------------------------------------------
	//작가id받아오는거, 환불제외하는거(db에 어떻게들어갈지) 추가해야함, 
	@RequestMapping(value="/membergrade")
	public ModelAndView uMemberGrade(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uinformation/uMemberGrade");
		
		//회원 구매금액산정
		int paysum = service.getSumpay();
		mav.addObject("paysum", paysum);
		
		//3개월이내 금액산정
		int paysumperiod = service.getSumpayPeriod();
		System.out.println(paysumperiod);
		mav.addObject("paysumperiod", paysumperiod);
		
		System.out.println(mav);
		return mav;
	} 
	
	// 회원 정보 관리---------------------------------------------
	@RequestMapping(value="/infomanage")
	public ModelAndView uInfoManage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uinformation/uInfoManage");
		UserProfileVO result = service.getUserinfo();
		System.out.println(result);
		mav.addObject("userinfo", result);
		System.out.println(mav);
	
		return mav;
	} 
	
	// 회원 정보 수정
	@RequestMapping(value="/updateuserinfo" , method = RequestMethod.POST)
	public ModelAndView uUpdateInfo(UserProfileVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		System.out.println("변경후:"+vo.toString());
		service.updateUserinfo(vo);
		mav.setViewName("redirect:/user/infomanage.do");
		
		return mav;
	} 
	
	//전화번호 수정
	@RequestMapping(value="/updateuserphone" , method = RequestMethod.GET)
	public ModelAndView uUpdatePhone(UserProfileVO vo, HttpServletRequest request, 
			@RequestParam(value="member_phone", required=false) String member_phone) {
		ModelAndView mav = new ModelAndView();
		System.out.println("받아온 전화번호: "+ member_phone);
		service.updateUserphone(vo);
		mav.setViewName("redirect:/user/infomanage.do");
		
		return mav;
	} 
	
	//회원 탈퇴
	@RequestMapping(value="/deleteuser" , method = RequestMethod.GET)
	public ModelAndView uDeleteUser(UserProfileVO vo, HttpServletRequest request){
		/*//로그아웃  세션처리..
		 * HttpSession session = request.getSession(); 
		 * NowLoginVO loginVo = new NowLoginVO(); 
		 * loginVo.setMemberCode((String)session.getAttribute("member"));
		 * loginVo.setyORn("N"); session.invalidate();
		 */
		System.out.println("Delete 전:" + vo.toString());
		service.deleteUser(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/home.do");
		
		return mav;
	} 
	
}
