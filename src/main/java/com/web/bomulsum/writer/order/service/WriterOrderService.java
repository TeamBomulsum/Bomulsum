package com.web.bomulsum.writer.order.service;

import java.util.List;

import com.web.bomulsum.writer.order.repository.WriterOrderVO;

public interface WriterOrderService {

	List<WriterOrderVO> orderConditionList(String writerCodeSeq);
	
}
