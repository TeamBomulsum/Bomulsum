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
	//기본 모달
	public List<UserShopbagModalVO> goShopbagModal(HashMap<String, String> map){
		List<UserShopbagModalVO> modalInfo = sqlSessionTemplate.selectList("userShopbagDAO.selectmodalCon", map);
		//System.out.println(modalInfo);
		return modalInfo;
	}
	//옵션 모달
	public List<UserShopbagOptionVO> goShopbagOptionModal(HashMap<String, String> map){
		List<UserShopbagOptionVO> optionModalInfo = sqlSessionTemplate.selectList("userShopbagDAO.selectModalOption", map);
		return optionModalInfo;
	}
	
	//요청사항 등록
	public void goOrderRequest(HashMap<String, String> map) {
		sqlSessionTemplate.update("userShopbagDAO.updateOrderRequest",map);
	}
	//작품 개수 변화
	public void goArtCount(HashMap<String, String> map) {
		sqlSessionTemplate.update("userShopbagDAO.updateArtCount",map);
	}
	//옵션 삭제
	public void deleteArt(HashMap<String, String> map) {
		sqlSessionTemplate.delete("userShopbagDAO.deleteArt",map);
	}
	//선택 삭제
	public void deleteChoice(List<String> cartCheck) {
		sqlSessionTemplate.delete("userShopbagDAO.deleteChoice",cartCheck);
	}

	//옵션 수정 
	public void updateOption(HashMap<String, String> map) {
		sqlSessionTemplate.update("userShopbagDAO.updateArtOption",map); 
	}
	 
	
	
	
	

}
