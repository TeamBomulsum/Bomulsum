package com.web.bomulsum.user.profile.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.login.repository.LoginVO;
import com.web.bomulsum.user.login.repository.MemberSessionVO;
import com.web.bomulsum.user.login.repository.MemberVO;
import com.web.bomulsum.user.login.repository.NowLoginVO;
import com.web.bomulsum.user.login.service.MemberService;
import com.web.bomulsum.user.login.service.MemberServiceImpl;
import com.web.bomulsum.user.profile.repository.UserProfileAddressVO;
import com.web.bomulsum.user.profile.repository.UserProfileVO;
import com.web.bomulsum.user.profile.service.UserProfileService;

@Controller
@RequestMapping(value="/user")
public class UserProfileController {

	
	@Autowired
	UserProfileService service;
	
	@Autowired
	MemberServiceImpl memberservice;
	
	private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //로컬 저장 경로
	
	
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
	
	
	//회원 배송지관리------------------------------------------
	@RequestMapping(value="/registeraddress" , method = RequestMethod.GET)
	public ModelAndView registerAddress() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/umyInfo/uinformation/uAddressManage");
		
		//회원 주소지 조회
		List<UserProfileAddressVO> selectAddress = service.selectUserAddress();
		System.out.println(selectAddress);
		
		UserProfileAddressVO[] userAddress;
		userAddress = new UserProfileAddressVO[3];

		for (int i = 0; i < 3; i++) {
			userAddress[i] = selectAddress.get(i);
			// System.out.println("vo배열 값 확인:" + selectAddress.get(i));
			System.out.println("vo배열 값 확인:" + userAddress[i]);
		}
		mav.addObject("address1", userAddress[0]);
		mav.addObject("address2", userAddress[1]);
		mav.addObject("address3", userAddress[2]);
		 
		System.out.println("mav확인:"+mav);
		return mav;
	} 
	
	  //회원 주소지 등록
	  @RequestMapping(value="/insertAddress") 
	  public ModelAndView insertAddress(UserProfileAddressVO vo, HttpServletRequest request) {
	  ModelAndView mav = new ModelAndView(); 
	  System.out.println("회원 배송지 확인:"+ vo);
	  service.insertUserAddress(vo);
	  mav.setViewName("/umyInfo/uinformation/uAddressManage"); 
	  return mav; 
	  }
	  
	  
	  //회원 주소지 수정
	  @RequestMapping(value="/updateAddress" , method = RequestMethod.GET)
		public ModelAndView updateAddress(UserProfileAddressVO vo, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		System.out.println("수정전 정보: "+ vo);
		service.updateUserAddress(vo);
		System.out.println("수정후 정보: "+ vo);
		mav.setViewName("redirect:/user/registeraddress.do");
		return mav;
		} 
	
	  //회원 프로필사진 수정
	  @RequestMapping(value= "/updateUserProfile", method=RequestMethod.POST)
		public ModelAndView updateUserProfile(HttpServletRequest request, UserProfileVO vo,
				@RequestParam(value="fileProfile", required=false) MultipartFile mf)throws IOException  {
		ModelAndView mav = new ModelAndView();
		/* mav.setViewName("/umyInfo/uMyHome"); */
		System.out.println("hihi");
		System.out.println(mf);
		
		
		String originalfileName = mf.getOriginalFilename();
		String saveFile = System.currentTimeMillis() + originalfileName;
		System.out.println(saveFile);
		
		//DB에 바뀐 프로필사진 넣기
		service.updateUserProfileImg(saveFile); 
		
		
		//세션에 반영
		HttpSession session = request.getSession();
		String memberCode= (String) session.getAttribute("member");  //멤버코드
		System.out.println("바뀐 멤버VO:"+memberservice.getUser(memberCode));
		session.setAttribute("user", memberservice.getUser(memberCode)); //세션에 넣기
		
		try {
			mf.transferTo(new File(SAVE_PATH, saveFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return mav;
	  }

}
