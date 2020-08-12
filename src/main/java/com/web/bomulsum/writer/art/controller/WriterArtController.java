package com.web.bomulsum.writer.art.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.service.WriterArtService;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

@Controller
@RequestMapping(value = "/writer")
public class WriterArtController {
	
	@Autowired
	WriterArtService service;
	
//	private static final String SAVE_PATH_AWS = "/upload";	//aws 경로
	private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //로컬 저장 경로
	
	@GetMapping("/workRegister")
	public String workRegister() {
		return "/warticle/workRegister";
	} 
	
	//판매중 작품 
	@RequestMapping(value="/workOnsale")
	public ModelAndView workOnsale(WriterArtVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("warticle/onSale");
		
		//작가코드 받아오기
		HttpSession session =  request.getSession();
        WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");        
        String seq = code.getWriterSeq();
		
        //해당 작가의 판매중 작품
		List<WriterArtVO> artList  = service.getArtOnsaleList(seq);
		System.out.println(artList);

		if(artList.size() >= 1) {
			for(int i=0; i<artList.size(); i++) {
				WriterArtVO testVo = artList.get(i);
				String[] photoArray = testVo.getArtPhoto().split(",");
				testVo.setArtPhoto(photoArray[0]);
				artList.remove(i);
				artList.add(i, testVo);
			}
			System.out.println(artList);
		}
	/*	
		String artCode = vo.getArtCodeSeq();
		//즐겨찾기
		int bookMarkCount = service.getArtOnsaleBookMark(artCode);
		//댓글
		//후기
		*/
		mav.addObject("onSaleList", artList);
	//	mav.addObject("bookMark",bookMarkCount);
		return mav;
	} 

	//판매일시중지 작품으로 변경
	@RequestMapping(value="/updateSalesArt.wdo",method=RequestMethod.POST )
	@ResponseBody
	   public void updateSalesArtlist( @RequestParam(value="artCodeList[]") List<String> codeList,
	         @RequestParam(value="checkList[]") List<String> checkList) {
	    System.out.println("변경중");  
		List<WriterArtVO> volist = new ArrayList<WriterArtVO>();
	      for (int i = 0; i < checkList.size(); i++) {
	    	  WriterArtVO vo = new WriterArtVO();
	         vo.setArtCodeSeq(codeList.get(i));
	         vo.setArtSaleState(checkList.get(i));
	         volist.add(vo);
	      }
	      service.updateSalesArt(volist);
	   }
	
	
	//작품 등록 액션
	@RequestMapping(value="/artregister")
	public ModelAndView insertArtwork(@RequestParam(value="artPicture", required=false) List<MultipartFile> mf,
			 HttpServletRequest request, WriterArtVO vo, WriterArtInfoDetailVO vo1, WriterArtOptionVO vo2){

		
		//사진 등록
		String result="";
		
		for (MultipartFile file : mf) {
			String originalfileName = file.getOriginalFilename();
			String saveFile = System.currentTimeMillis() + originalfileName;
			try {
				file.transferTo(new File(SAVE_PATH, saveFile)); 
			}catch(IllegalStateException e) { e.printStackTrace();}
			catch(IOException e) { e.printStackTrace();	}
			
			result += saveFile+",";
		}	
		vo.setArtPhoto(result);
		
		//작가코드 받아오기
		HttpSession session =  request.getSession();
        WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");        
        String seq = code.getWriterSeq();
        vo.setWriterCodeSeq(seq);
	
		//작품 등록
		service.insertArt(vo);
		System.out.println(vo.toString());
		
		//작품코드 검색
		String artCode = service.getArtCode(vo);
		System.out.println(artCode);

		ModelAndView mav = new ModelAndView();
		
		//작품코드 등록
		vo1.setArtCode(artCode);
		vo2.setArtCodeSeq(artCode);

		//작품 정보제공 등록
		service.insertArtInfoDetail(vo1);
		System.out.println(vo1.toString());

		//작품 옵션 등록
		String[] optionCategoryArr = vo2.getArtOptionCategory().split(",");
		String[] optionNameArr = vo2.getArtOptionName().split(",");
		String[] optionPriceArr = vo2.getArtOptionPrice().split(",");

		Map<String, Object> optionData = new HashMap<String, Object>();
		optionData.put("ArtCodeSeq", vo2.getArtCodeSeq());
		switch(optionNameArr.length) {
		case 9: 
			optionData.put("OptionCategory3", optionCategoryArr[2]);
			optionData.put("optionName9", optionNameArr[8]);
			optionData.put("optionPrice9", Integer.parseInt(optionPriceArr[8]));
			service.insertArtOption9(optionData);
		case 8:
			optionData.put("OptionCategory3", optionCategoryArr[2]);
			optionData.put("optionName8", optionNameArr[7]);
			optionData.put("optionPrice8", Integer.parseInt(optionPriceArr[7]));
			service.insertArtOption8(optionData);
		case 7:
			optionData.put("OptionCategory3", optionCategoryArr[2]);
			optionData.put("optionName7", optionNameArr[6]);
			optionData.put("optionPrice7", Integer.parseInt(optionPriceArr[6]));
			service.insertArtOption7(optionData);
		case 6:
			optionData.put("OptionCategory2", optionCategoryArr[1]);
			optionData.put("optionName6", optionNameArr[5]);
			optionData.put("optionPrice6", Integer.parseInt(optionPriceArr[5]));
			service.insertArtOption6(optionData);
		case 5:
			optionData.put("OptionCategory2", optionCategoryArr[1]);
			optionData.put("optionName5", optionNameArr[4]);
			optionData.put("optionPrice5", Integer.parseInt(optionPriceArr[4]));
			service.insertArtOption5(optionData);
		case 4:
			optionData.put("OptionCategory2", optionCategoryArr[1]);
			optionData.put("optionName4", optionNameArr[3]);
			optionData.put("optionPrice4", Integer.parseInt(optionPriceArr[3]));
			service.insertArtOption4(optionData);
		case 3:
			optionData.put("OptionCategory1", optionCategoryArr[0]);
			optionData.put("optionName3", optionNameArr[2]);
			optionData.put("optionPrice3", Integer.parseInt(optionPriceArr[2]));
			service.insertArtOption3(optionData);
        case 2:
        	optionData.put("OptionCategory1", optionCategoryArr[0]);
			optionData.put("optionName2", optionNameArr[1]);
			optionData.put("optionPrice2", Integer.parseInt(optionPriceArr[1]));
			service.insertArtOption2(optionData);
        case 1 :
        	optionData.put("OptionCategory1", optionCategoryArr[0]);
        	optionData.put("optionName1", optionNameArr[0]);
        	optionData.put("optionPrice1", Integer.parseInt(optionPriceArr[0]));
        	service.insertArtOption1(optionData);
            break;
        default :
		
		}		
		System.out.println(optionData);

		mav.setViewName("redirect:/writer/workRegister.wdo"); 
		mav.addObject("check", 1); // 등록 완료 확인
		return mav;
	}
	
	

}
