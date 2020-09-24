package com.web.bomulsum.user.payment.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.coupon.service.UserCouponServiceImpl;
import com.web.bomulsum.user.order.repository.UserShopbagOptionVO;
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
	public ModelAndView payInfo(
			HttpServletRequest request  , @RequestParam(value="cartCode[]") String cartCode[]) {
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
		 * for (int i = 0; i < cartCode.length; i++) { System.out.println(i +
		 * "번째 장바구니: " + cartCode[i]); }
		 */
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberCode", memberCode);
		map.put("cartCode", cartCode);
		System.out.println("map출력:");
		

		
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
	
	
	
	
	/* 주문결제처리---------------------------------------------------------------------------- */
	@ResponseBody 
	@RequestMapping(value="/goPayment")
	public ModelAndView goPay(
									@RequestParam(value="memberCode") String memberCode, 
									@RequestParam(value="shipName") String shipName, 
									@RequestParam(value="shipPhone") String shipPhone,
									@RequestParam(value="shipZip") String shipZip,
									@RequestParam(value="shipFirst") String shipFirst,
									@RequestParam(value="shipSecond") String shipSecond,
									@RequestParam(value="orderSum") int orderSum,
									@RequestParam(value="choiceCoupon") String choiceCoupon,
									@RequestParam(value="artPointSum") int artPointSum,
									@RequestParam(value="finUsePoint") int finUsePoint,
									@RequestParam(value="orderArt[]") String[] orderArt,
									@RequestParam(value="orderArtOption[]") String[] orderArtOption,
									@RequestParam(value="artDaName") String artDaName	//상품 대표이름
									
		) {
		
		
		ModelAndView mav = new ModelAndView("ushopbag/usuccessOrder");
		
		
		System.out.println("orderArt확인--->"+Arrays.toString(orderArt));
		for(int i=0; i<orderArt.length; i++) {
			System.out.println("check : " + i + orderArt[i]);
		}
		
		
		System.out.println(memberCode+"의 주문내용-> 받을이름: "+shipName  +", 받을번호: "+ shipPhone 
				+ ", 우편번호: "+ shipZip + ", 기본주소: "+ shipFirst +", 상세주소: "+ shipSecond 
				+ ", 총주문액: "+ orderSum + ", 사용쿠폰: " + choiceCoupon + ", 사용적립금: "+ finUsePoint 
				+ ", 예상적립금: "+ artPointSum + ", 상품대표이름: "+ artDaName 
				) ;
		
		if(choiceCoupon.length()!=0) {
			service.deleteUseCoupon(choiceCoupon);
		}else {
			System.out.println("쿠폰없음");
		}
		
		HashMap<String,Object> orderMap = new HashMap<String,Object>();
		orderMap.put("memberCode", memberCode);
		orderMap.put("shipName", shipName);
		orderMap.put("shipPhone", shipPhone);
		orderMap.put("shipZip", shipZip);
		orderMap.put("shipFirst", shipFirst);
		orderMap.put("shipSecond", shipSecond);
		orderMap.put("orderSum", orderSum);
		orderMap.put("choiceCoupon", choiceCoupon);
		orderMap.put("finUsePoint", finUsePoint);
		
		String orderCodeSeq = service.insertOrderList(orderMap); //주문내역테이블에 인서트
		//System.out.println("주문넣은 주문내역seq->"+orderCodeSeq);
		
		// 우영
		List<HashMap<String, String>> imsi = new ArrayList<HashMap<String,String>>();
		// 우영
		for(int i=0; i<orderArt.length; i++) {	//장바구니 코드별
			
			//System.out.println("맵내용:"+orderMap);			
			
			System.out.println(i+"번째 orderArt : "+orderArt[i]);
			
			String[] orderArtOne = orderArt[i].split("@#@"); //작품한줄에 들어간 내용
			
			
			
		
			for(int j=0; j<orderArtOne.length; j++) {	//작품별
				System.out.println(j+"번째 orderArtOne:"+orderArtOne[j] );
				orderMap.put("artInfo"+j, orderArtOne[j]);
//--------------사용 변수명  : 들어가는 내용 ---------------
//				artInfo0 : cart_seq33(장바구니 카트번호)
//				artInfo1: writer_code_seq83(작가번호)
//				artInfo2 : art_code_seq567(작품번호)
//				artInfo3 : 고기(상품이름)
//				artInfo4 : 없음(고객 요청사항)
//				artInfo5 : 0(작품배송비)
//				artInfo6 : 0(제주산간배송비)
				
				//System.out.println(j+"번째 작품내용 : "+orderArtOne[j]);
			}
			//System.out.println("수정된 맵내용:"+orderMap);	
			
			
			orderMap.put("orderCodeSeq", orderCodeSeq); //주문내역코드 맵에넣음
			
			
			String orderWriterCode = service.insertOrderWriter(orderMap); //주문내역테이블에 인서트
			//System.out.println(orderWriterCode); //주문작가코드
			
			orderMap.put("orderWriterCode", orderWriterCode); //주문작가코드 맵에넣음
			
			String orderArtCode = service.insertOrderArt(orderMap);
			System.out.println("orderArtCode->"+orderArtCode);
			
			
			
			//orderMap.put("orderArtCode"+i, orderArtCode); //주문작품코드 맵에넣음
			orderMap.put("orderArtCode", orderArtCode); //주문작품코드 맵에넣음
			
			// 우영
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("orderArtCode", orderArtCode);
			map.put("artCode", (String)orderMap.get("artInfo2"));
			imsi.add(map);
			// 우영
			
		} //for문끝(작품별)
		
		System.out.println(Arrays.toString(orderArtOption));
		for(int j=0; j<orderArtOption.length; j++) {
			System.out.println("test : " + orderArtOption[j]);
		}
		//------옵션별
		for(int j=0; j<orderArtOption.length; j++) {
			  //System.out.println(j+"번째 주문결제작품 옵션 : "+orderArtOption[j]); 
			  String[] orderArtOptionOne = orderArtOption[j].split("#"); //작품옵션한줄에 들어간 내용
			  System.out.println("---------------------새로운옵션----------------"+j);
			  for(int z = 0; z<orderArtOptionOne.length; z++) {
						  System.out.println(z+"번째 옵션:"+orderArtOptionOne[z]);
						  
				/*
				 * if(z==0) { //옵션내용 뒤에 / 빼주는 처리 orderArtOptionOne[z] =
				 * orderArtOptionOne[z].substring(0, orderArtOptionOne[z].length()-3); }
				 */
						  
						 orderMap.put("artOptionInfo"+z, orderArtOptionOne[z]);
//						  		변수명         : 내용
//						  artOptionInfo0 : 옵션내용
//						  artOptionInfo1 : art_option_seq539,art_option_seq533,art_option_seq535, (옵션코드들)
//						  artOptionInfo2 : 1 (수량)
//						  artOptionInfo3 : cart_seq33 (장바구니번호)
//						  artOptionInfo4 : art_code_seq567 (작품번호)
//						  artOptionInfo5 : 26000 (작품가격)
			  }
			  System.out.println("최종맵:"+orderMap);
			  // 우영
			  System.out.println("dndud test : " + (String)orderMap.get("artOptionInfo4"));
			  for(HashMap<String, String> m : imsi) {
				  System.out.println("in for dndud test :" + m.get("orderArtCode"));
				  if(m.get("artCode").equals((String)orderMap.get("artOptionInfo4"))) {
					  System.out.println("우영이 테스트 진행중");
					  orderMap.put("orderArtCode", m.get("orderArtCode"));
					  String orderArtOptionCode = service.insertOrderArtOption(orderMap);					  
				  }
//				  orderMap.put("orderArtCode", orderArtCode);
			  }
			  // 우영
			  //System.out.println(orderArtOptionCode);
		  }
		
		return mav;
	}
	
	
	
	/* 주문완료 처리---------------------------------------------------------------------------- */
	@ResponseBody 
	@RequestMapping(value="/successPayment")
	public ModelAndView successPay() {
		ModelAndView mav =  new ModelAndView("ushopbag/usuccessOrder");
		
		//배송지이름
		//폰번호
		//주소
		//작품금액
		//배송비
		//제주도서배송비
		//쿠폰할인
		
		return mav;
	}
	
	
}
