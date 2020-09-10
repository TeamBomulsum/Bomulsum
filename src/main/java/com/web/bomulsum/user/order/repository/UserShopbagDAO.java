package com.web.bomulsum.user.order.repository;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserShopbagDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// 장바구니 정보
	public List<UserShopbagVO> getShopbagInfo() {
		List<UserShopbagVO> shopbagInfo = sqlSessionTemplate.selectList("userShopbagDAO.selectCartCon");
		System.out.println(shopbagInfo);
		return shopbagInfo;

	}
	//옵션 상세정보
	public List<UserShopbagOptionVO> getOptionInfo(List<String> artOption) {
		System.out.println(artOption);
		List<UserShopbagOptionVO> optionInfo = sqlSessionTemplate.selectList("userShopbagDAO.selectOption", artOption);
		System.out.println(optionInfo);
		return optionInfo;
	}
	//옵션 모달
	public List<UserShopbagVO> goShopbagModal(HashMap<String, String> map){
		List<UserShopbagVO> modalInfo = sqlSessionTemplate.selectList("userShopbagDAO.selectmodalCon", map);
		//System.out.println(modalInfo);
		return modalInfo;
	}
	
	

}
