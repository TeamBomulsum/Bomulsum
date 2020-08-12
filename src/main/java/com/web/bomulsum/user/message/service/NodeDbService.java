package com.web.bomulsum.user.message.service;

import java.util.HashMap;
import java.util.List;

import com.web.bomulsum.user.message.repository.NodeDbVO;
import com.web.bomulsum.user.message.repository.UserChatRoomVO;
import com.web.bomulsum.user.message.repository.UserInsertChatVo;

public interface NodeDbService {
	List<NodeDbVO> getTable();
	List<String> getUserCodes();
	List<UserChatRoomVO> getChatroom(String userCode);
	List<UserChatRoomVO> testGetWriter();
	void insertChatRoom(UserInsertChatVo vo);
	void deleteChatRoom(List<HashMap<String, String>> list);
}
