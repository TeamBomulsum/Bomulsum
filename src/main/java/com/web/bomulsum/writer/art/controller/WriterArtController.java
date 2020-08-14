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
import com.web.bomulsum.writer.art.repository.WriterArtVOUP;
import com.web.bomulsum.writer.art.service.WriterArtService;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

@Controller
@RequestMapping(value = "/writer")
public class WriterArtController {
	
	@Autowired
	WriterArtService service;
	
//	private static final String SAVE_PATH_AWS = "/upload";	//aws ���� ������
	private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //������ ���
	
	@GetMapping("/workRegister")
	public String workRegister() {
		return "/warticle/workRegister";
	} 
	
	//�Ǹ��� ��ǰ 
	@RequestMapping(value="/workOnsale")
	public ModelAndView workOnsale(WriterArtVO vo) {
		ModelAndView mav = new ModelAndView("/warticle/onSale");
		List<WriterArtVO> artList  = service.getArtOnsaleList();
		System.out.println(artList);
		
		
		
		//int bookMarkCount = service.getbookMark(vo.getArtCodeSeq());
	//	int bookMarkCount = service.getbookMark("art code seq218");
	//	System.out.println(bookMarkCount);
		
	/*	List<String> photoName = new ArrayList<String>(); 
		for(int i=0;i<artList.size(); i++) {
			int idx = artList.get(i).getArtPhoto().indexOf(",");
		 	String photoList = artList.get(i).getArtPhoto().substring(0, idx);
		 	photoName.add(photoList);
		 	System.out.println(photoList);

		}
		mav.addObject("photo", photoName);*/
		//artList.set(2, photoList)
		mav.addObject("onSaleList", artList);
		return mav;
	} 

	@RequestMapping(value="/updateSalesArt.wdo",method=RequestMethod.POST )
	@ResponseBody
	   public void updateSalesArtlist(
	         @RequestParam("checkList[]") List<String> checkList,
	         @RequestParam("useList[]") List<String> useList
	         ) {
		System.out.println("����� ����");
	      List<WriterArtVOUP> volist = new ArrayList<WriterArtVOUP>();
	      for (int i = 0; i < checkList.size(); i++) {
	    	  WriterArtVOUP vo = new WriterArtVOUP();
	    	  
	         vo.setArtCodeSeq(Integer.parseInt(checkList.get(i)));
	         vo.setArtSaleState(Integer.parseInt(useList.get(i)));
	         volist.add(vo);
	      }
	      service.updateSalesArt(volist);
	   }
	/*
	 * ��ǰ��� form �׼�
	 * workRegister.jsp ���� form �±��� ���� ��  "/artregister"
	 */ 
	@RequestMapping(value="/artregister")
	public ModelAndView insertArtwork(@RequestParam(value="orderPicture", required=false) List<MultipartFile> mf,
			 HttpServletRequest request, WriterArtVO vo, WriterArtInfoDetailVO vo1, WriterArtOptionVO vo2){

		
		//���� ����
		String result="";
		
		for (MultipartFile file : mf) {
			String originalfileName = file.getOriginalFilename();
			String saveFile = System.currentTimeMillis() + originalfileName;
			try {
				file.transferTo(new File(SAVE_PATH, saveFile)); //�̹���1 SAVE_PATH�� ����
			}catch(IllegalStateException e) { e.printStackTrace();}
			catch(IOException e) { e.printStackTrace();	}
			
			result += saveFile+",";
		}	
		vo.setArtPhoto(result);
		
		//�۰��ڵ� ��������
		//HttpSession session =  request.getSession();
   //   WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");        
       // String seq = code.getWriterSeq();
       // vo.setWriterCodeSeq(seq);
	
		//��ǰ ���
		service.insertArt(vo);
		System.out.println(vo.toString());
		
		//��ǰ �ڵ� ��������
		String artCode = service.getArtCode(vo.getArtName());


		ModelAndView mav = new ModelAndView();
		
		//��ǰ�ڵ� ����
		vo1.setArtCode(artCode);
		vo2.setArtCodeSeq(artCode);

		//��ǰ �������� ���
		service.insertArtInfoDetail(vo1);
		System.out.println(vo1.toString());

		//��ǰ �ɼ� ���
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
		mav.addObject("check", 1); // ��� ���� ������ ��
		return mav;
	}
	
	

}
