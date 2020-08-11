package com.web.bomulsum.writer.activity.service;

import java.util.List;


import com.web.bomulsum.writer.activity.repository.CommentsListVO;


public interface WriterActivityService {

	List<CommentsListVO> commentsList();
	
	//작가 댓글 등록 기능
	void addRecomment(CommentsListVO vo);
	
}
