package com.web.bomulsum.user.reserves.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserReservesDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//이용내역
	public List<UserReservesVO> getUserPoint() {
		List<UserReservesVO>  list = sqlSessionTemplate.selectList("userReservesDAO.selectReserves");
		System.out.println(list); //테스트
		return list;
	}
	
	//총 사용한 포인트
	public int getUserPointUse() {
		int result = sqlSessionTemplate.selectOne("userReservesDAO.selectUseReserves");
		return result;
	}
	
	//총 적립된 포인트
	public int getUserSumReserves() {
		int result = sqlSessionTemplate.selectOne("userReservesDAO.selectSumReserves");
		return result;
	}
	
	
}
