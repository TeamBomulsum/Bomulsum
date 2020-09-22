package com.web.bomulsum.user.payment.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.coupon.service.UserCouponServiceImpl;
import com.web.bomulsum.user.order.service.UserShopbagService;
import com.web.bomulsum.user.payment.repository.UserCouponPaymentVO;
import com.web.bomulsum.user.payment.repository.UserPaymentVO;
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
			HttpServletRequest request /* , @RequestParam(value="cartCode[]") String cartCode[]*/) {
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
		//int memReserve=reserve_service.getUserSumReserves()-reserve_service.getUserPointUse();
		int memReserve = 10000000;
		mav.addObject("memReserve",memReserve);
		
		//멤버 쿠폰 ---- 쿠폰 vo랑 mapping새로만들어서쓰기... 
		List<UserCouponPaymentVO> vo = service.selectCouponPayment(memberCode);
		System.out.println("쿠폰:"+vo);
		mav.addObject("couponList", vo);
		

		
		/*
		 * //장바구니 정보 String[] cartCode= new String[3];
		 * 
		 * cartCode[0] = "cart_seq21"; cartCode[1] = "cart_seq22"; cartCode[2] =
		 * "cart_seq23";
		 */
		
		String[] cartCode = {"cart_seq21", "cart_seq22" , "cart_seq23", 
				"cart_seq25", "cart_seq26" , "cart_seq27", "cart_seq28", "cart_seq29" , "cart_seq30"} ;

		for (int i = 0; i < cartCode.length; i++) {
			System.out.println(i + "번째 장바구니: " + cartCode[i]);
		}
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberCode", memberCode);
		map.put("cartCode", cartCode);
		System.out.println("map출력:");
		/*
		 * List<UserShopbagVO> shopbagInfo = service.selectCartChoice(memberCode);
		 * System.out.println("카트담긴거:"+shopbagInfo);
		 */
		

		
		//--------------상품정보 뿌림-------------
		
		List<UserPaymentVO> shopbagInfo = service.selectCartChoice(map);
		
		for(int i=0; i<shopbagInfo.size(); i++) {
			
			UserPaymentVO tempVO = shopbagInfo.get(i);
			String[] artOption= shopbagInfo.get(i).getArt_option_seq().split("#");
			
			String[] photoArray = tempVO.getArt_photo().split(",");
			tempVO.setArt_photo(photoArray[0]);
			
			String[] countArray = tempVO.getArt_count().split(",");
			tempVO.setArtCount(countArray);
			List<Map<String,Object>> totalOption = new ArrayList<Map<String,Object>>();
			
			int totalPrice = 0;
			for(int j=0; j<artOption.length; j++) {
				int sum = 0;
				int totalSum = 0;
				
				Map<String,Object> optionMap = new HashMap<String,Object>();
				List<UserShopbagOptionVO> optionList = new ArrayList<UserShopbagOptionVO>();
				String[] artOptionDetail = artOption[j].split(",");
				
				optionMap.put("artCount",countArray[j]);
				for(int k=0; k<artOptionDetail.length; k++) {
					UserShopbagOptionVO vo1 = cart_service.getOptionInfo(artOptionDetail[k]);
					optionList.add(vo1);
					sum += optionList.get(k).getArt_option_price();
				}
				totalSum = (tempVO.getArt_discount() + sum) * Integer.parseInt(tempVO.getArtCount()[j]);
				optionMap.put("totalSum", totalSum);
				optionMap.put("optionArray", optionList);
				totalOption.add(optionMap);
				totalPrice +=(int) totalOption.get(j).get("totalSum");
			}
			tempVO.setTotalPrice(totalPrice);
			tempVO.setTotalOption(totalOption);
			shopbagInfo.remove(i);
			shopbagInfo.add(i, tempVO);
		}
		
		System.out.println("담은상품목록:"+shopbagInfo);
		
		mav.addObject("shopbagInfo", shopbagInfo);
		
		//---------------------------
		
		System.out.println("mav내용:"+mav);		
		return mav;
	} 
	
	@ResponseBody 
	@RequestMapping(value="/successPayment")
	public ModelAndView goShopbag() {
		ModelAndView mav = new ModelAndView("ushopbag/usuccessOrder");
		
		//받아야할데이터----------
		//주문자이름
		//전화번호
		//우편번호
		//기본주소
		//상세주소
		//작품금액(작품당금액합산)
		//배송비
		//도서산간
		//쿠폰할인
		//최종결제금액
		
		return mav;
	}
	
}
