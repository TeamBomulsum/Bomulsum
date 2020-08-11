package com.web.bomulsum.writer.salespolicy.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WriterSalesPolicyDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//�۰� �Ǹ���å ���(������Ʈ)
	public void updateSalesPolicy(WriterSalesPolicyVO vo) {
		sqlSessionTemplate.update("writerSalesPolicyDAO.updateSalesPolicy", vo);
	}
	
	//�۰� �Ǹ���å �ҷ�����
	public WriterSalesPolicyVO getSalesPolicy(){
		WriterSalesPolicyVO policy = sqlSessionTemplate.selectOne("writerSalesPolicyDAO.loadSalesPolicy");
		return policy;
	}
}
