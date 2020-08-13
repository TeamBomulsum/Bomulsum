package com.web.bomulsum.writer.message.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.message.repository.UserInsertChatVo;
import com.web.bomulsum.writer.message.repository.WriterChatroomVO;

public interface WriterMessageService {
	List<WriterChatroomVO> getChatRoom(String writerCode);
	List<WriterChatroomVO> testGetMember();
	void insertChatRoom(UserInsertChatVo vo);
	void exitChatRoom(List<HashMap<String, String>> list);
}
