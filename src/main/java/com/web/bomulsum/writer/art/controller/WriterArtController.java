package com.web.bomulsum.writer.art.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionCategoryVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.service.WriterArtService;

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
	
	/*
	 * workRegister.jsp ���� form �±��� ���� ��  "/artregister"
	 */ 
	@RequestMapping(value="/artregister")
	public ModelAndView insertArtwork(@RequestParam(value="artPicture", required=false) List<MultipartFile> mf, 
			HttpServletRequest request, WriterArtVO vo, WriterArtInfoDetailVO vo1, 
			WriterArtOptionVO vo2, WriterArtOptionCategoryVO vo3){	

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
		
		//��ǰ ���
		service.insertArt(vo);
		System.out.println(vo.toString());
		
		//��ǰ �ڵ� ��������
		String artCode = service.getArtCode(vo.getArtName());
		System.out.println(artCode);
	
		ModelAndView mav = new ModelAndView();
		//��ǰ�ڵ� ����
		vo1.setArtCode(artCode);
		vo2.setArtCodeSeq(artCode);

		//��ǰ �������� ���
	//	service.insertArtInfoDetail(vo1);
	//	System.out.println(vo1.toString());
		
		//��ǰ �ɼ� ���
		//service.insertArtOption(vo2);
		//System.out.println(vo2.toString());
		
		//��ǰ ī�װ� ���
		String[] optionCategoryArr = vo2.getArtOptionCategory().split(",");
		
		Map<String, Object> optionData = new HashMap<String, Object>();
		optionData.put("ArtCodeSeq", vo2.getArtCodeSeq());
		switch(optionCategoryArr.length) {
		case 3: 
			optionData.put("OptionCategory3", optionCategoryArr[2]);
			service.insertArtOptionCat3(optionData);
        case 2:
			optionData.put("OptionCategory2", optionCategoryArr[1]);
			service.insertArtOptionCat2(optionData);
        case 1 :
        	optionData.put("OptionCategory1", optionCategoryArr[0]);
        	service.insertArtOptionCat1(optionData);
            break;
        default :
		
		}
		System.out.println(optionData);
		
		System.out.println(vo3.getArtOptionName());
		
		//��ǰ �̸� ���
		String[] optionNameArr = vo3.getArtOptionName().split(",");
		for(int i=0; i<optionNameArr.length; i++) {
			System.out.println(optionNameArr[i]);
		}	

	//	vo2.setArtOptionSeq("rk");
		//System.out.println(vo2.getArtOptionSeq());
		/*
		System.out.println(vo2.toStringCate());
		System.out.println(vo2.toStringName());
*/
				
	/*
		String category= vo2.toStringCate();
		String[] array = category.split(",");
		
		//���				
		for(int i=0;i<array.length;i++) {
		System.out.println(array[i]);
		}
	
		
		Map<String, Object> optionData = new HashMap<String, Object>();
		for(int i=0;i<array.length;i++) {
		optionData.put("category", array[i]);
		System.out.println(optionData);
		}*/
		
	//	optionData.put("artOptionCategory", vo2.getArtOptionCategory());
	//	optionData.put("artOptionNname", vo2.getArtOptionName());
	//	optionData.put("artOptionPrice", vo2.getArtOptionPrice());

//		List<WriterArtOptionVO> optionList = new ArrayList<>();
//	
//		
//		String seq = vo2.getArtCodeSeq();
//		String[] optionCategoryArr = vo2.getArtOptionCategory().split(",");
//		String[] optionNameArr = vo2.getArtOptionName().split(",");
//		int index= 0;
//		
//		System.out.println("optionsplit :" + Arrays.toString(optionCategoryArr));
//		System.out.println("namesplit :" + Arrays.toString(optionNameArr));
//		
//		for(String category : optionCategoryArr) {
//			WriterArtOptionVO writerOptionVO = new WriterArtOptionVO();
//			writerOptionVO.setArtCodeSeq(seq);
//			writerOptionVO.setArtOptionCategory(category);
//			StringBuffer string = new StringBuffer();
//			string.append(optionNameArr[index++]);
//			string.append(",");
//			string.append(optionNameArr[index++]);
//			string.append(",");
//			string.append(optionNameArr[index++]);
//			writerOptionVO.setArtOptionName(string.toString());
//			
//			optionList.add(writerOptionVO);
//		}
//		System.out.println(optionList);
//		service.insertArtOptionl();
//[artOptionSeq=null, artCodeSeq=art_code_seq145, artOptionCategory=��,��,��, artOptionName=�̸�1,�̸�2,,�̸�3,,,�̸�4,,, artOptionPrice=900]

		mav.setViewName("redirect:/writer/workRegister.wdo"); 
		mav.addObject("check", 1); // ��� ���� ������ ��
		return mav;
	}

}
