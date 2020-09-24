package com.web.bomulsum.writer.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.writer.order.repository.WriterOrderDAO;
import com.web.bomulsum.writer.order.repository.WriterOrderVO;

@Service
public class WriterorderServiceImpl implements WriterOrderService {

	@Autowired
	private WriterOrderDAO dao;
	
	@Override
	public List<WriterOrderVO> orderConditionList(String writerSeq) {
		return dao.orderConditionList(writerSeq);
	}

}
