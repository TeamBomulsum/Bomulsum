package com.web.bomulsum.user.message.service;

import java.util.List;

import com.web.bomulsum.user.message.repository.NodeDbVO;
import com.web.bomulsum.user.message.repository.UserChatRoomVO;

public interface NodeDbService {
	List<NodeDbVO> getTable();
	List<String> getUserCodes();
	List<UserChatRoomVO> getChatroom(String userCode);
}
