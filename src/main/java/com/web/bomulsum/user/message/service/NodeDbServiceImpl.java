package com.web.bomulsum.user.message.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.message.repository.NodeDbDAO;
import com.web.bomulsum.user.message.repository.NodeDbVO;

@Service
public class NodeDbServiceImpl implements NodeDbService{

	@Autowired
	private NodeDbDAO dao;
	
	@Override
	public List<NodeDbVO> getTable() {
		return dao.getTable();
	}

	@Override
	public List<String> getUserCodes() {
		return dao.getUserCodes();
	}

}
