package com.web.bomulsum.user.gift.service;

import java.util.List;

import com.web.bomulsum.user.gift.repository.UserSendGiftDetailVO;
import com.web.bomulsum.user.gift.repository.UserSendGiftVO;

public interface UserGiftService {

	//보낸 선물함 리스트
	public List<UserSendGiftVO> getSendGift(String memberCode);
	
	//보낸 선물함 상세정보
	public List<UserSendGiftDetailVO> getSendGiftCheck(String orderCode);
	
}
