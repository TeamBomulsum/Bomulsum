package com.web.bomulsum.writer.activity.service;

import java.util.List;


import com.web.bomulsum.writer.activity.repository.CommentsListVO;


public interface WriterActivityService {

	List<CommentsListVO> commentsList();
	
	//�۰� ��� ��� ���
	void addRecomment(CommentsListVO vo);
	
}
