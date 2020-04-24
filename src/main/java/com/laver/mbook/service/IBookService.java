package com.laver.mbook.service;

import java.util.List;
import java.util.Set;

import com.laver.mbook.domain.Book;
import com.laver.mbook.domain.BookExample;


public interface IBookService {
	int addBook(Book book);
	
	List<Book> findAllBook();
	
	int delById(Integer bid);
	
	Book findById(Integer bid);
	
	int modifyBook(Book book);
	
	Set<String> bookType();
	
	List<Book> selectByExample(BookExample example);

	boolean checkStore(Integer bid, Integer number);
	
	int reduceStore(Integer bid,Integer number);
}
