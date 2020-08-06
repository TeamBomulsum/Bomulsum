package com.web.bomulsum.writer.gempoint.service;

import java.util.List;
import java.util.Map;

import com.web.bomulsum.writer.gempoint.repository.WriterGempointVO;

public interface WriterGempointService {
	   List<WriterGempointVO> getGemPoint(); //젬포인트 내역
	   int getGemPointSum(); //보유포인트
}
