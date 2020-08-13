package com.web.bomulsum.writer.message.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.message.repository.UserInsertChatVo;
import com.web.bomulsum.writer.message.repository.WriterChatroomVO;
import com.web.bomulsum.writer.message.repository.WriterMessageDAO;

@Service
public class WriterMessageServiceImpl implements WriterMessageService{

	@Autowired
	private WriterMessageDAO dao;
	
	@Override
	public List<WriterChatroomVO> getChatRoom(String writerCode) {
		return dao.getChatRoom(writerCode);
	}

	@Override
	public List<WriterChatroomVO> testGetMember() {
		return dao.testGetMember();
	}

	@Override
	public void insertChatRoom(UserInsertChatVo vo) {
		dao.insertChatRoom(vo);
	}

	@Override
	public void exitChatRoom(List<HashMap<String, String>> list) {
		dao.exitChatRoom(list);
	}
	
}
