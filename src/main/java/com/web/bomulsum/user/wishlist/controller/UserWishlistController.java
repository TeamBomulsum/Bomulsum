package com.web.bomulsum.user.wishlist.controller;

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
	//	HttpSession session = request.getSession(); 
	//	String memberCode = (String)session.getAttribute("member"); 
	//	System.out.println(memberCode);
	
		String memberCode = "member_code_seq58";
		//좋아하는 작가 리스트
		List<String> writerList = service.getwriterList(memberCode);
		System.out.println(writerList);
		
		if(writerList.isEmpty()) {
			mav.addObject("artListInfo", null);
		}
		else {
			//작가정보
			List<UserLikeWriterVO> artList = service.getWriterInfo(writerList);
			//작가 브랜드명 처리
			for(int i=0; i<artList.size(); i++) {
				if(artList.get(i).getWriter_brand_name() == null) {
					String writerName = artList.get(i).getWriter_name();
					artList.get(i).setWriter_brand_name(writerName);
				}
				if(artList.get(i).getWriter_intro() == null) {
					artList.get(i).setWriter_intro("소개글 없음");
				}
			}
			
			//작품 사진 가져오기
			List<List<Map<String,Object>>> artPhotoList = new ArrayList<List<Map<String,Object>>>();
			for(int i=0;i<writerList.size(); i++) {
				List<Map<String,Object>> photoInfo = service.getArtPhotoTest(writerList.get(i));
				artPhotoList.add(photoInfo);
			}
			System.out.println(artPhotoList);

			for (int j = 0; j < artPhotoList.size(); j++) {
				List<String> photoFinal = new ArrayList<String>();
				for (int x = 0; x < artPhotoList.get(j).size(); x++) {
					String artName = (String) artPhotoList.get(j).get(x).get("ART_PHOTO");
					String[] photoTest = artName.split(",");
					photoFinal.add(photoTest[0]);
				}
				artList.get(j).setArtPhoto(photoFinal);
			}
			for(int y=0; y<artList.size(); y++) {
				if(artList.get(y).getArtPhoto().size() >= 9) {
					artList.get(y).setArt_photo1(artList.get(y).getArtPhoto().get(0));
					artList.get(y).setArt_photo2(artList.get(y).getArtPhoto().get(1));
					artList.get(y).setArt_photo3(artList.get(y).getArtPhoto().get(2));
					artList.get(y).setArt_photo4(artList.get(y).getArtPhoto().get(3));
					artList.get(y).setArt_photo5(artList.get(y).getArtPhoto().get(4));
					artList.get(y).setArt_photo6(artList.get(y).getArtPhoto().get(5));
					artList.get(y).setArt_photo7(artList.get(y).getArtPhoto().get(6));
					artList.get(y).setArt_photo8(artList.get(y).getArtPhoto().get(7));
					artList.get(y).setArt_photo9(artList.get(y).getArtPhoto().get(8));
				}
				else{
					List<String> tempList = artList.get(y).getArtPhoto();
					for(int t=0; t<9; t++) {
						tempList.add("noimage.png");
					}
					artList.get(y).setArt_photo1(artList.get(y).getArtPhoto().get(0));
					artList.get(y).setArt_photo2(artList.get(y).getArtPhoto().get(1));
					artList.get(y).setArt_photo3(artList.get(y).getArtPhoto().get(2));
					artList.get(y).setArt_photo4(artList.get(y).getArtPhoto().get(3));
					artList.get(y).setArt_photo5(artList.get(y).getArtPhoto().get(4));
					artList.get(y).setArt_photo6(artList.get(y).getArtPhoto().get(5));
					artList.get(y).setArt_photo7(artList.get(y).getArtPhoto().get(6));
					artList.get(y).setArt_photo8(artList.get(y).getArtPhoto().get(7));
					artList.get(y).setArt_photo9(artList.get(y).getArtPhoto().get(8));
				}
			}
			System.out.println("총 list"+artList.toString());	
			mav.addObject("artListInfo", artList);
		}
		
		//작가별 작품 개수 확인
	/*	List<Map<String, Object>> artCount = service.getArtCount(memberCode);
		System.out.println(artCount);
		int[] writerCountArr = new int[artCount.size()];
		for(int i=0; i<artCount.size(); i++) {
			int writerArtCount = Integer.parseInt(String.valueOf(artCount.get(i).get("COUNT")));
			writerCountArr[i] = writerArtCount;
			System.out.println(writerArtCount);
		}
		System.out.println(Arrays.toString(writerCountArr));
		
		//작가별 작품
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
		System.out.println(artList);*/

		
		//mav.addObject("artListInfo", artList);
		
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
