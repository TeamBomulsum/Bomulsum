package com.web.bomulsum.writer.recommendWriter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.bomulsum.writer.art.repository.WriterArtVO;
import com.web.bomulsum.writer.art.service.WriterArtService;
import com.web.bomulsum.writer.login.repository.WriterRegisterVO;

@Controller
@RequestMapping("writer")
public class RecommendWriterController {

	@Autowired
	WriterArtService service;
	
	@GetMapping("recommendWriter")
	public String recommendWriter(HttpServletRequest request,Model model) {
		
		HttpSession session =  request.getSession();
        WriterRegisterVO code = (WriterRegisterVO) session.getAttribute("writer_login");        
        String seq = code.getWriterSeq();
		System.out.println(seq);
        //해당 작가의 판매중 작품
		List<WriterArtVO> artList  = service.getArtOnsaleList(seq);
		model.addAttribute("artList", artList);
		if(artList.size() >= 1) {
			for(int i=0; i<artList.size(); i++) {
				WriterArtVO tempVO = artList.get(i);
				String[] photoArray = tempVO.getArtPhoto().split(",");
				int reviewCount = service.getArtOnsaleReview(tempVO.getArtCodeSeq());
				int commentCount = service.getArtOnsaleComment(tempVO.getArtCodeSeq());
				int bookMarkCount = service.getArtOnsaleBookmark(tempVO.getArtCodeSeq());
				tempVO.setArtPhoto(photoArray[0]);
				tempVO.setBookMarkCount(bookMarkCount);
				tempVO.setCommentCount(commentCount);
				tempVO.setReviewCount(reviewCount);
				artList.remove(i);
				artList.add(i, tempVO);		
			}
			System.out.println(artList);
		}
		
		return "wrecommend/recommendWriter";
	}
	
}












