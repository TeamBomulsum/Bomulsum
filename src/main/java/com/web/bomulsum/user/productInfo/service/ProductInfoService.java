package com.web.bomulsum.user.productInfo.service;

import java.util.List;

import com.web.bomulsum.user.productInfo.repository.WriterVO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

public interface ProductInfoService {
	public WriterArtVO getListProductInfo(String artCodeSeq);
	public List<WriterArtInfoDetailVO> getListProductartInfoList(String artCodeSeq);
	public List<WriterArtOptionVO> getListProductInfoOption(String artCodeSeq);
	public WriterVO getWriterInfo(String writerCodeSeq);
}
