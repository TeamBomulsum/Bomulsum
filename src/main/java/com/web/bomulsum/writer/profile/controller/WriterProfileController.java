package com.web.bomulsum.writer.profile.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.bomulsum.writer.profile.repository.WriterProfileVO;
import com.web.bomulsum.writer.profile.service.WriterProfileService;

@Controller
@RequestMapping(value="/writer")
public class WriterProfileController {

		@Autowired
		WriterProfileService service;
		
//		private static final String SAVE_PATH = "C:\\upload"; //���Ͼ��ε�
//		private static final String SAVE_PATH = "C:\\myMain\\myBomulsum\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\bomulSum\\WEB-INF\\classes\\upload"; //���Ͼ��ε�
//		private static final String SAVE_PATH_AWS = "/upload";	//aws ���� ������
		private static final String SAVE_PATH = "C:\\bomulsum\\src\\main\\webapp\\upload"; //������ ���
		
		@RequestMapping(value="/profile")
		public ModelAndView writerProfile() {
			ModelAndView mav = new ModelAndView("/waccount/writerProfile");
			
			
			//�׽�Ʈ :: �̹��� �ѱ�°� 
		
			Map<String, String> imgTest = new HashMap<String, String>();
			imgTest.put("test", "1596879911463point.png" );
			mav.addObject("imgtest", imgTest); 
			//�׽�Ʈ ��
			
			return mav;
		} 
		
		
		@RequestMapping(value= "/updateprofile")
		public ModelAndView writerUpdateProfile(@RequestParam(value="writerProfileImgg", required=false) MultipartFile mf
					, @RequestParam(value="writerCoverImgg", required=false) MultipartFile mf2, WriterProfileVO vo, HttpServletRequest request) {
		
			System.out.println(vo.toString());
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:/writer/profile.wdo");
			
			String originalFileName = mf.getOriginalFilename(); //�̹���1(������) �̸�
			String originalFileName2 = mf2.getOriginalFilename(); //�̹���2(Ŀ��) �̸�
			long fileSize = mf.getSize(); //�̹���1 ũ��
			long fileSize2 = mf2.getSize(); 
			
			String root_path = getClass().getResource("/upload").getPath(); 
			System.out.println("TOSTRING : " + getClass().getResource("/upload").toString());
			System.out.println("PATH : " + getClass().getResource("/upload").getPath());
//		    String name = "1596799032877���ã�� ��ǰ_��ũ�ѷΰ�ӳ�����.jpg";
			
			String saveFile = System.currentTimeMillis() + originalFileName; //�̹���1 ������ �̸�
			String saveFile2 = System.currentTimeMillis() + originalFileName2; //�̹���2 ������ �̸�
			
			
			vo.setWriterProfileImg(saveFile);
			vo.setWriterCoverImg(saveFile2);
			
			System.out.println(vo.toString());
			service.updateWriterProfile(vo);
			
			System.out.println(fileSize);
			System.out.println(fileSize2);
			System.out.println(root_path);
			try {
				mf.transferTo(new File(SAVE_PATH, saveFile)); //�̹���1 SAVE_PATH�� ����
				mf2.transferTo(new File(SAVE_PATH, saveFile2)); //�̹���2 SAVE_PATH�� ����
			}catch(IllegalStateException e) {
				e.printStackTrace();
			}catch(IOException e) {
				e.printStackTrace();

			}
			return mav;
		}
		
		
//		@RequestMapping(value= "/updateprofile", method=RequestMethod.POST)
//		public ModelAndView writerUpdateProfile(WriterProfileVO vo, HttpServletRequest request) {
//			System.out.println(vo.toString());
//
//			service.updateWriterProfile(vo);
//			//ModelAndView mav = new ModelAndView("redirect:/writer/profile.wdo");
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("redirect:/writer/profile.wdo");
//			return mav;
//		}
		
		
}
