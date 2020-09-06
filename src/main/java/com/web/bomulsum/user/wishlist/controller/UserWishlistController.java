package com.web.bomulsum.user.wishlist.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.user.wishlist.repository.UserLikeWriterVO;
import com.web.bomulsum.user.wishlist.service.UserLikeWriterService;

@Controller
@RequestMapping(value="/user/wishlist")
public class UserWishlistController {
	
	@Autowired
	UserLikeWriterService service;

	
	@RequestMapping(value="/likeWriter")
	public ModelAndView likeWriter(UserLikeWriterVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/umyInfo/uwishList/uLikeWriter");
	
		String memberCode = "member_code_seq58";
		//작가정보
		List<UserLikeWriterVO> artList = service.getWriterInfo(memberCode, vo);
		System.out.println(artList.toString());	
		//작가별 사진
		List<Map<String, Object>> artPhoto = service.artPhotoList(memberCode);
		
		List<String> artPhotoList = new ArrayList<>(); 
		for(Map<String, Object> strMap : artPhoto){
			artPhotoList.add((String) strMap.get("ART_PHOTO"));
		}
		System.out.println(artPhotoList);
		

		String ar2 = artPhotoList.get(1);
		String[] ar = ar2.split(",");
		System.out.println(ar[0]); 
		
		mav.addObject("artListInfo", artList);
		
		return mav;
		
	}
	
	//좋아하는 작가 취소
	@RequestMapping(value="/unLikeWriter")
	   public void unLikeWriter( @RequestParam(value="writer_code_seq") String writerCode, HttpServletRequest request) {
		String memberCode = "member_code_seq58";    
		
		Map<String, Object> unLikeData = new HashMap<String, Object>();
		unLikeData.put("memberCode", memberCode);
		unLikeData.put("writerCode", writerCode);
		service.deleteLikeWriter(unLikeData);
		System.out.println("좋아하는 작가 삭제");
	 }
	

	
}
