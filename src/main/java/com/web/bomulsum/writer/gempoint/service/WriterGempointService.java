package com.web.bomulsum.writer.gempoint.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.writer.gempoint.repository.WriterGempointVO;

public interface WriterGempointService {
	List<Map<String, String>> getGemPoint();//젬포인트 내역
	//List<WriterGempointVO> getGemPoint(); 
	Map<String, Object> getGemPointSum(); //보유포인트
	void insertGemPointCharge(int chargeMoney); //젬포인트 충전
}
