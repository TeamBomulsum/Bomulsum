package com.web.bomulsum.user.productInfo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.productInfo.repository.ProductInfoDAO;
import com.web.bomulsum.user.productInfo.repository.WriterVO;
import com.web.bomulsum.writer.art.repository.WriterArtInfoDetailVO;
import com.web.bomulsum.writer.art.repository.WriterArtOptionVO;
import com.web.bomulsum.writer.art.repository.WriterArtVO;

@Service
public class ProductInfoServiceImpl implements ProductInfoService{

	@Autowired
	ProductInfoDAO dao;
	
	@Override
	public WriterArtVO getListProductInfo(String artCodeSeq) {
		return dao.getListProductInfo(artCodeSeq);
	}

	@Override
	public List<WriterArtInfoDetailVO> getListProductartInfoList(String artCodeSeq) {
		return dao.getListProductartInfoList(artCodeSeq);
	}

	@Override
	public List<WriterArtOptionVO> getListProductInfoOption(String artCodeSeq) {
		return dao.getListProductInfoOption(artCodeSeq);
	}

	@Override
	public WriterVO getWriterInfo(String writerCodeSeq) {
		return dao.getWriterInfo(writerCodeSeq);
	}


	@Override
	public void selectRecentyleView(HashMap<String, String> map) {
		
		if(dao.selectRecentyleView(map) == 0) {
			dao.insertRecentlyView(map);
		}else {
			dao.updateRecentlyView(map);
		}
	}

	
	@Override
	public void updateViewCount(String artCodeSeq) {
		dao.updateViewCount(artCodeSeq);
	}
}
