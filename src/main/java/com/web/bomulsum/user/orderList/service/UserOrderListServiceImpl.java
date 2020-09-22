package com.web.bomulsum.user.orderList.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bomulsum.user.orderList.repository.OrderListDataVO;
import com.web.bomulsum.user.orderList.repository.UserBuyArtVO;
import com.web.bomulsum.user.orderList.repository.UserOrderListDao;
import com.web.bomulsum.user.orderList.repository.UserOrderTableVO;

@Service
public class UserOrderListServiceImpl implements UserOrderListService {
	
	@Autowired
	private UserOrderListDao dao;

	@Override
	public List<OrderListDataVO> getOrderTb(String member) {// 모든 주문내역 테이블 조회
		List<OrderListDataVO> data = new ArrayList<OrderListDataVO>();
		
		
		for(int i=0; i<dao.getOrderTb(member).size(); i++) {
			OrderListDataVO vo = new OrderListDataVO();
			vo.setOrderTable(dao.getOrderTb(member).get(i));
			
			String orderCode = vo.getOrderTable().getOrderCodeSeq();
			vo.setBuyWriter(dao.getWriterTb(orderCode));
			
			List<UserBuyArtVO> volist = new ArrayList<UserBuyArtVO>();
			List<UserBuyArtVO> imsiList = dao.getBuyArtTb(orderCode);
			if(imsiList != null) {
				for(int j=0; j<imsiList.size(); j++) {
					if(imsiList.get(j).getArtPhoto().length() > 1) {
						String[] imsi = imsiList.get(j).getArtPhoto().split(",");
						imsiList.get(j).setArtPhoto(imsi[0]);
					}
					volist.add(imsiList.get(j));
				}
			}
			
			vo.setBuyArt(volist);
			vo.setBuyOption(dao.getBuyOptionTb(orderCode));
			
			data.add(vo);
		}
		
		
		return data;
	}

	@Override
	public OrderListDataVO getOrderDetail(String code) {
		
		OrderListDataVO vo = new OrderListDataVO();
		
		vo.setOrderTable(dao.getorderDetail(code));
		
		vo.setBuyWriter(dao.getWriterTb(code));
		
		List<UserBuyArtVO> volist = new ArrayList<UserBuyArtVO>();
		List<UserBuyArtVO> imsiList = dao.getBuyArtTb(code);
		if(imsiList != null) {
			for(int j=0; j<imsiList.size(); j++) {
				if(imsiList.get(j).getArtPhoto().length() > 1) {
					String[] imsi = imsiList.get(j).getArtPhoto().split(",");
					imsiList.get(j).setArtPhoto(imsi[0]);
				}
				volist.add(imsiList.get(j));
			}
		}
		
		vo.setBuyArt(volist);
		vo.setBuyOption(dao.getBuyOptionTb(code));
		
		return vo;
	}

	@Override
	public int getCouponPrice(String coupon) {
		return dao.getCouponPrice(coupon);
	}

	@Override
	public int getPointPrice(String artCode) {
		return dao.getPointPrice(artCode);
	}

	@Override
	public UserOrderTableVO recentOne(String memberCode) {
		return dao.recentOne(memberCode);
	}

	@Override
	public List<String> getOrderStatusList(String memberCode) {
		return dao.getOrderStatusList(memberCode);
	}
	
	
	
}
