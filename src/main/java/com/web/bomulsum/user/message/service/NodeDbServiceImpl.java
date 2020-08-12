package com.web.bomulsum.user.message.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.message.repository.NodeDbDAO;
import com.web.bomulsum.user.message.repository.NodeDbVO;
import com.web.bomulsum.user.message.repository.UserChatRoomVO;
import com.web.bomulsum.user.message.repository.UserInsertChatVo;

@Service
public class NodeDbServiceImpl implements NodeDbService{

	@Autowired
	private NodeDbDAO dao;
	
	@Override
	public List<NodeDbVO> getTable() {
		return dao.getTable();
	}

	@Override
	public List<String> getUserCodes() {
		return dao.getUserCodes();
	}

	@Override
	public List<UserChatRoomVO> getChatroom(String userCode) {
		return dao.getChatroom(userCode);
	}

	@Override
	public List<UserChatRoomVO> testGetWriter() {
		return dao.testGetWriter();
	}

	@Override
	public void insertChatRoom(UserInsertChatVo vo) {
		dao.insertChatRoom(vo);		
	}

	@Override
	public void deleteChatRoom(List<HashMap<String, String>> list) {
		dao.deleteChatRoom(list);
	}

}
