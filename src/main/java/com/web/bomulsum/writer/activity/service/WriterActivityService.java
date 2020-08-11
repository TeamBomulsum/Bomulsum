package com.web.bomulsum.writer.activity.service;

import java.util.List;


import com.web.bomulsum.writer.activity.repository.CommentsListVO;


public interface WriterActivityService {

	List<CommentsListVO> commentsList();
	
	//댓글 등록
	void addRecomment(CommentsListVO vo);
	
}
