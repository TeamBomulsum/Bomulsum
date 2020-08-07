package com.web.bomulsum.writer.profile.controller;

import java.io.File;
import java.io.IOException;

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
		
		//private static final String SAVE_PATH = "D:\\upload\\test"; //파일업로드
		private static final String SAVE_PATH = "C:\\myMain\\myBomulsum\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\bomulSum\\WEB-INF\\classes\\upload"; //파일업로드
		
		
		@RequestMapping(value="/profile")
		public ModelAndView writerProfile() {
			ModelAndView mav = new ModelAndView("/waccount/writerProfile");
			return mav;
		} 
		
		
		@RequestMapping(value= "/updateprofile")
		public ModelAndView writerUpdateProfile(@RequestParam(value="writerProfileImg", required=false) MultipartFile mf
					, HttpServletRequest request) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:/writer/profile.wdo");
			
			String originalFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			String root_path = getClass().getResource("/upload").getPath(); 
			System.out.println("TOSTRING : " + getClass().getResource("/upload").toString());
			System.out.println("PATH : " + getClass().getResource("/upload").getPath());
//		    String name = "1596799032877즐겨찾는 작품_스크롤로계속내려감.jpg";
			String saveFile = System.currentTimeMillis() + originalFileName;
			System.out.println(fileSize);
			System.out.println(root_path);
			try {
				mf.transferTo(new File(root_path, saveFile));
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
