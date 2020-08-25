package com.web.bomulsum.user.gift.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.bomulsum.user.gift.repository.UserGiftDAO;
import com.web.bomulsum.user.gift.repository.UserSendGiftDetailVO;
import com.web.bomulsum.user.gift.repository.UserSendGiftVO;

@Service
public class UserGiftServiceImpl implements UserGiftService{

	 @Autowired
	 UserGiftDAO dao;

	//보낸 선물함 리스트
	@Override
	public List<UserSendGiftVO> getSendGift(String memberCode) {
		return dao.getSendGift(memberCode);
	}
	//보낸 선물함 상세정보

	@Override
	public List<UserSendGiftDetailVO> getSendGiftCheck(String orderCode) {
		return dao.getSendGiftCheck(orderCode);
	}
	

}
