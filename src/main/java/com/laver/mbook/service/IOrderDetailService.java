package com.laver.mbook.service;


import java.util.List;

import com.laver.mbook.domain.OrderDetail;
import com.laver.mbook.domain.OrderDetailExample;

public interface IOrderDetailService {
	int addOrderDetail(OrderDetail orderDetail);
	
	List<OrderDetail> selectByExample(OrderDetailExample example);
	
	OrderDetail selectByPrimaryKey(Integer id);
	
	int updateByPrimaryKey(OrderDetail record);
	
	int deleteByOid(Integer oid);
}
