package com.web.bomulsum.writer.gempoint.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.writer.gempoint.repository.WriterGempointVO;

public interface WriterGempointService {
	List<Map<String, String>> getGemPoint()  ;
	//List<WriterGempointVO> getGemPoint(); //������Ʈ ����
	Map<String, Object> getGemPointSum(); //��������Ʈ
}
