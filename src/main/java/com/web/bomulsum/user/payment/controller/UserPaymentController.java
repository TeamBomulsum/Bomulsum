package com.web.bomulsum.user.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.coupon.repository.UserCouponListVO;
import com.web.bomulsum.user.coupon.service.UserCouponServiceImpl;
import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
import com.web.bomulsum.user.order.repository.UserShopbagVO;
import com.web.bomulsum.user.order.service.UserShopbagService;
import com.web.bomulsum.user.payment.service.UserPaymentService;
import com.web.bomulsum.user.profile.repository.UserProfileAddressVO;
import com.web.bomulsum.user.profile.repository.UserProfileVO;
import com.web.bomulsum.user.profile.service.UserProfileServiceImpl;
import com.web.bomulsum.user.reserves.service.UserReservesService;

@Controller
@RequestMapping(value="/user")
public class UserPaymentController {

	@Autowired
	UserPaymentService service;
	
	@Autowired
	UserProfileServiceImpl profile_service;
	
	@Autowired
	UserReservesService reserve_service;
	
	@Autowired
	UserCouponServiceImpl coupon_service;
	
	@Autowired
	UserShopbagService cart_service;
	
	@ResponseBody 
	@RequestMapping(value="/payment")
	public ModelAndView goShopbag(
			HttpServletRequest request /* , @RequestParam(value="cartCode[]") String cartCode[] */) {
		ModelAndView mav= new ModelAndView("ushopbag/uPayment");
		
		HttpSession session = request.getSession();
		String memberCode= (String) session.getAttribute("member");  //멤버코드
		System.out.println("멤버코드:"+memberCode);
		
		//멤버 이름, 전화번호
		UserProfileVO profileVO = profile_service.getUserinfo(memberCode);
		System.out.println(profileVO);
		String memName = profileVO.getMember_name();
		String memPhone = profileVO.getMember_phone();
		mav.addObject("memName", memName);
		mav.addObject("memPhone", memPhone);
		

		
		//멤버 배송지
		UserProfileAddressVO addrVO = new UserProfileAddressVO();
		addrVO.setMember_code_seq(memberCode);
		List<UserProfileAddressVO> selectAddress = profile_service.selectUserAddress(addrVO);
		System.out.println("회원주소지:"+selectAddress);
		//mav.addObject("memAddress", selectAddress);
		
		UserProfileAddressVO[] userAddress;
		userAddress = new UserProfileAddressVO[3];

		for (int i = 0; i < 3; i++) {
			userAddress[i] = selectAddress.get(i);
			System.out.println("주소지 배열 값 확인:" + userAddress[i]);
		}
		mav.addObject("address1", userAddress[0]);
		mav.addObject("address2", userAddress[1]);
		mav.addObject("address3", userAddress[2]);
		
		
		//멤버 적립금
		int memReserve=reserve_service.getUserSumReserves()-reserve_service.getUserPointUse();
		mav.addObject("memReserve",memReserve);
		
		//멤버 쿠폰
		List<UserCouponListVO> vo = coupon_service.getCouponList(memberCode);
		System.out.println("쿠폰:"+vo);
		mav.addObject("couponList", vo);
		

		
		//장바구니 정보
		String[] cartCode= new String[2];
		
		cartCode[0] = "cart_seq11";
		cartCode[1] = "cart_seq12";
		
		for (int i = 0; i < cartCode.length; i++) {
			System.out.println(i + "번째 장바구니: " + cartCode[i]);
		}

		/*
		 * List<UserShopbagVO> shopbagInfo = service.selectCartChoice(memberCode);
		 * System.out.println("카트담긴거:"+shopbagInfo);
		 */
		
	
		
		List<UserShopbagVO> shopbagInfo = service.selectCartChoice(memberCode);
		
		for(int i=0; i<shopbagInfo.size(); i++) {
			UserShopbagVO tempVO = shopbagInfo.get(i);
			String[] artOption= shopbagInfo.get(i).getArt_option_seq().split(",");
			List<UserShopbagOptionVO> optionList = cart_service.getOptionInfo(artOption);
			switch(optionList.size()) {
			case 3:
				tempVO.setArt_option_category3(optionList.get(2).getArt_option_category());
				tempVO.setArt_option_name3(optionList.get(2).getArt_option_name());
				tempVO.setArt_option_price3(optionList.get(2).getArt_option_price());
			case 2:
				tempVO.setArt_option_category2(optionList.get(1).getArt_option_category());
				tempVO.setArt_option_name2(optionList.get(1).getArt_option_name());
				tempVO.setArt_option_price2(optionList.get(1).getArt_option_price());
			case 1:
				tempVO.setArt_option_category1(optionList.get(0).getArt_option_category());
				tempVO.setArt_option_name1(optionList.get(0).getArt_option_name());
				tempVO.setArt_option_price1(optionList.get(0).getArt_option_price());
				break;
			default :
			}
			tempVO.setTotal_price((tempVO.getArt_discount() + tempVO.getArt_option_price1()+tempVO.getArt_option_price2()
						+tempVO.getArt_option_price3())*tempVO.getArt_count());
			
			String[] photoArray = tempVO.getArt_photo().split(",");
			tempVO.setArt_photo(photoArray[0]);
			shopbagInfo.remove(i);
			shopbagInfo.add(i, tempVO);	
		}
		System.out.println("shopbagInfo:"+shopbagInfo);
		mav.addObject("shopbagInfo", shopbagInfo);
		
		
		System.out.println("mav내용:"+mav);		
		return mav;
	} 
	
}
