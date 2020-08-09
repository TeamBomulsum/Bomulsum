package com.web.bomulsum.writer.salespolicy.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WriterSalesPolicyDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void updateSalesPolicy(WriterSalesPolicyVO vo) {
		sqlSessionTemplate.update("writerSalesPolicyDAO.updateSalesPolicy",vo);
}
}
