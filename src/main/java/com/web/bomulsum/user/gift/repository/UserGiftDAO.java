package com.web.bomulsum.user.gift.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserGiftDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//보낸 선물함 정보
	public List<UserSendGiftVO> getSendGift(String memberCode){
		
		List<String> sendGiftCode = sqlSessionTemplate.selectList("userGiftDAO.selectSendCode", memberCode);
		System.out.println(sendGiftCode);
		
		Map<String, Object> orderList = new HashMap<String,Object>();
		orderList.put("orderList", sendGiftCode);
		
		List<UserSendGiftVO> sendGiftList = sqlSessionTemplate.selectList("userGiftDAO.selectSendGift", orderList);
		//System.out.println(sendGiftList);
		return sendGiftList;
	}
	
	//보낸 선물함 상세정보
	public List<UserSendGiftDetailVO> getSendGiftCheck(String orderCode){
		List<UserSendGiftDetailVO> sendGiftDetailCheck = sqlSessionTemplate.selectList("userGiftDAO.selectSendGiftCheck", orderCode);
		return sendGiftDetailCheck;
		
	}
	
}
