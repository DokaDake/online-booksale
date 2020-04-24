package com.laver.mbook.service;

import java.util.List;

import com.laver.mbook.domain.BookOrder;
import com.laver.mbook.domain.BookOrderExample;

public interface IBookOrderService {
	int addBookOrder(BookOrder bookOrder);
	
	int selectOid(BookOrderExample example);
	
	List<BookOrder> selectByExample(BookOrderExample example);
	
	int deleteByPrimaryKey(Integer oid);
	
	BookOrder selectByPrimaryKey(Integer oid);
	
	int update( BookOrder record);
	

}
