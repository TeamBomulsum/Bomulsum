package com.web.bomulsum.user.orderList.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserOrderListDao {
	
	@Autowired
	private SqlSessionTemplate template;
	
	// 모든 주문내역 테이블 조회
	public List<UserOrderTableVO> getOrderTb(String member){
		return template.selectList("orderListDao.getAllOrderList", member);
	}
	
	// 주문코드 기반 구매작가 테이블
	public List<UserBuyWriterVO> getWriterTb(String orderCode){
		return template.selectList("orderListDao.getBuyWriterTb", orderCode);
	}
	
	// 주문코드 기반 구매작품 테이블
	public List<UserBuyArtVO> getBuyArtTb(String orderCode){
		return template.selectList("orderListDao.getBuyArtTb", orderCode);
	}
	
	// 주문코드 기반 구매옵션 테이블
	public List<UserBuyOptionVO> getBuyOptionTb(String orderCode){
		return template.selectList("orderListDao.getBuyOptionTb", orderCode);
	}
	
	// 주문코드 디테일 가져오기
	public UserOrderTableVO getorderDetail(String code) {
		return template.selectOne("orderListDao.getOrderDetail", code);
	}
	
	// 쿠폰 가격 가져오기.
	public int getCouponPrice(String coupon) {
		return template.selectOne("orderListDao.getCouponPrice", coupon);
	}
	
	// 적립금 가져오기
	public int getPointPrice(String artCode) {
		return template.selectOne("orderListDao.getPointPrice", artCode);
	}
	
	// 최근 주문내역 하나만
	public UserOrderTableVO recentOne(String memberCode) {
		return template.selectOne("orderListDao.recentOne", memberCode);
	}
	
	// 주문내역 상태 정보 뽑아오기
	public List<String> getOrderStatusList(String memberCode){
		return template.selectList("orderListDao.getOrderStatusList", memberCode);
	}
}
