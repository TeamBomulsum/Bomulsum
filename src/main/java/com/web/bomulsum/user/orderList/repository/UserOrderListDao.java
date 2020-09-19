package com.web.bomulsum.user.orderList.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserOrderListDao {
	
	@Autowired
	private SqlSessionTemplate template;
	
}
