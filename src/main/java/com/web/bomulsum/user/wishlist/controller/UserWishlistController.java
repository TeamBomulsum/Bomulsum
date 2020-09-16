package com.web.bomulsum.user.wishlist.controller;

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
	
		//회원코드
		HttpSession session = request.getSession(); 
		String memberCode = (String)session.getAttribute("member"); 
		System.out.println(memberCode);
		
		//작가정보
		List<UserLikeWriterVO> artList = service.getWriterInfo(memberCode);
		System.out.println(artList.toString());	
		
		//작가별 작품 개수 확인
		List<Map<String, Object>> artCount = service.getArtCount(memberCode);
		System.out.println(artCount);
		int[] writerCountArr = new int[artCount.size()];
		for(int i=0; i<artCount.size(); i++) {
			int writerArtCount = Integer.parseInt(String.valueOf(artCount.get(i).get("COUNT")));
			writerCountArr[i] = writerArtCount;
			System.out.println(writerArtCount);
		}
		System.out.println(Arrays.toString(writerCountArr));
		
		List<String> writerArtList = service.getArtPhoto(memberCode);
		System.out.println(writerArtList);
		
		String[] arr = new String[writerArtList.size()];
		for(int j=0; j<writerCountArr.length; j++) {
			System.out.println(writerCountArr[j]);
			for(int i = 0; i<writerCountArr[j]; i++) {
				String[] photoArr = writerArtList.get(i).split(",");
				arr[i] = photoArr[0];
				System.out.println(Arrays.toString(photoArr));
			}
			System.out.println(Arrays.toString(arr));
			artList.get(j).setArt_photo1(arr[0]);
			artList.get(j).setArt_photo2(arr[1]);
			artList.get(j).setArt_photo3(arr[2]);
			artList.get(j).setArt_photo4(arr[3]);
			artList.get(j).setArt_photo5(arr[4]);
			artList.get(j).setArt_photo6(arr[5]);
			artList.get(j).setArt_photo7(arr[6]);
			artList.get(j).setArt_photo8(arr[7]);
			artList.get(j).setArt_photo9(arr[8]);
			
			//System.out.println(Arrays.toString(photoArr));
			//artList.get(i).setArt_photo1(photoArr[0]);
			
		}
		System.out.println(artList);

		
		//작가별 작품 사진
	/*	List<UserLikeWriterPhotoVO> photoList = service.getArtPhotoList(memberCode);
	
		for(int j=0; j<writerCountArr.length; j++) {
			for(int i = 0; i<writerCountArr[j]; i++) {
				String[] photoArr = photoList.get(i).getArt_photo().split(",");
				artList.get(0).setArt_photo1(photoArr[0]);
				artList.get(0).setArt_photo2(photoArr[1]);
			//	artList.get(0).setArt_photo3(photoArr[2]);
			//	artList.get(0).setArt_photo4(photoArr[3]);
			//	artList.get(0).setArt_photo5(photoArr[4]);
			//	artList.get(0).setArt_photo6(photoArr[5]);
			//	artList.get(0).setArt_photo7(photoArr[6]);
			//	artList.get(0).setArt_photo8(photoArr[7]);
			//	artList.get(0).setArt_photo9(photoArr[8]);
				
			}
		}
		System.out.println(artList);*/
		

/*		//작가별 사진
		List<Map<String, Object>> artPhoto = service.artPhotoList(memberCode);
		
		List<String> artPhotoList = new ArrayList<>(); 
		for(Map<String, Object> strMap : artPhoto){
			artPhotoList.add((String) strMap.get("ART_PHOTO"));
		}
		System.out.println(artPhotoList);
		

		String ar2 = artPhotoList.get(1);
		String[] ar = ar2.split(",");
		System.out.println(ar[0]); */
		
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
		System.out.println("좋아하는 작가 취소");
	 }
	

	
}
